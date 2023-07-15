#!/usr/bin/env python
'''
Public autograde script, includes all public test cases
'''

from ast import parse
import mininet.net
import mininet.node

from mininet.log import setLogLevel, info
from mininet.cli import CLI
from mininet.topo import Topo
from mininet.util import quietRun
from mininet.moduledeps import pathCheck

from sys import exit
import os.path
from subprocess import Popen, STDOUT, PIPE, check_call

from run import IP_SETTING, start_topo, stop_topo
import re, time, os, sys, logging, Ice, traceback

log = logging.getLogger("Auto Grader")
logging.basicConfig(stream=sys.stderr)
log.setLevel(logging.ERROR) # can be set to CRITICAL, ERROR, WARNING, INFO, DEBUG, NOTSET, etc.

score = 0
tester = None
details = None
# WRONG_IP is supposed to be in same subnet with sw0-eth1, but different IP from sw0-eth1 or server1
WRONG_IP = "192.168.1.0"
# list of router faces
ROUTER_INTERFACES = ["sw0-eth1", "sw0-eth2", "sw0-eth3"]

def init_communicator():
    global tester
    slice_dir = Ice.getSliceDir()
    if not slice_dir:
        log.error(sys.argv[0] + ': Slice directory not found.')
        sys.exit(1)

    Ice.loadSlice("", ["-I%s" % slice_dir, "core/pox.ice"])

    import pox
    communicator = None
    tester = None
    try:
        communicator = Ice.initialize(sys.argv)
        base  = communicator.stringToProxy("Tester:tcp -h 127.0.0.1 -p 65500")
        tester = pox.TesterPrx.checkedCast(base)
        if not tester:
            raise RuntimeError("Invalid Proxy")
    except:
        traceback.print_exc()
        sys.exit(1)
    return communicator, tester

def destroy_communicator(communicator):
    try:
        communicator.destroy()
    except:
        traceback.print_exc()
        sys.exit(1)

def parse_ping(result):
    '''
    Parse ping output string, return packets sent, received
    '''
    r = r'(\d+) packets transmitted, (\d+) received'
    m = re.search( r, result )
    if m is None:
        log.error ( '*** Error: could not parse ping output: "%s"\n' %
                result )
        return 1, 0
    sent, received = int( m.group( 1 ) ), int( m.group( 2 ) )
    return sent, received

def get_arp_line():
    global tester
    result = tester.getArp()
    log.debug("ARP CACHE TABLE: \n{}\n".format(result))
    lines = len(result.splitlines()) - 4 # empty arp cache has 4 lines in practice
    return lines

def test_ping(net):
    print ('\n*** Conducting Ping Tests.\n')
    global score
    global details
    server1, server2, client, router = net.get( 'server1', 'server2', 'client', 'sw0')

    # test ping reachablility
    for src in net.hosts:
        ping_success = True
        for dest in net.hosts:
            if (src == dest):
                continue
            result = src.cmd("ping -c 1 {}".format(dest.IP()))
            sent, received = parse_ping(result)
            log.debug (result)
            log.debug ("sent = {}, received = {}".format(sent, received))
            if received < sent:
                log.error ("ping from {} to {} failed".format(src, dest))
                ping_success = False
        if not ping_success:
            log.error ("*** Fail to ping from {}: -5 pts".format(src))
            details.append("*** Fail to ping from {}: -5 pts".format(src))
        else:
            score += 5

    # Ping from client to server1, check ARP cache, there should be 2 entries;
    time.sleep(40)
    proper_arp_entry = True
    client.cmd("ping -c 1 {}".format(server1.IP()))
    lines = get_arp_line()
    log.debug("ARP cache has {} entries after client ping server1".format(lines))
    if lines != 2:
        log.info ("Have {} entries in ARP cache after {} ping {}, 2 expected".format(
            lines, client, server1
        ))
        proper_arp_entry = False
    # then Ping from client to server2, check ARP cache, there should be 3 entries.
    client.cmd("ping -c 1 {}".format(server2.IP()))
    lines = get_arp_line()
    log.debug("ARP cache has {} entries after client ping both servers".format(lines))
    if lines != 3:
        log.info ("Have {} entries in ARP cache after {} ping {} and {}, 3 expected".format(
            lines, client, server2, server1
        ))
        proper_arp_entry = False
    if not proper_arp_entry:
        log.error ("*** Fail to maintain ARP cache entries properly: -5 pts")
        details.append("*** Fail to maintain ARP cache entries properly: -5 pts")
    else:
        score += 5

    # After 40 sencods, the ARP cache should be empty
    time.sleep(40)
    lines = get_arp_line()
    log.debug("ARP cache has {} entries after 40 s.".format(lines))
    if lines != 0 or not proper_arp_entry:
        # if you don't have proper arp in the first place, this test is meaningless
        log.error("*** Fail to empty ARP cache after 40 seconds: -5 pts")
        details.append("*** Fail to empty ARP cache after 40 seconds: -5 pts")
    else:
        score += 5


def parse_traceroute(result):
    '''
    Parse traceroute result string
    Return tuple of (routes, error):
        routes: list of all IP string representation in route, None for unkown IP
        error: count number of errors shown in result (!H, !N, !P, etc)
    '''
    error = len(re.findall(r'![HNPSFXVC0-9]', result))
    routes = []
    r = r'\((\d+\.\d+\.\d+\.\d+)\)' # match IP in traceroute entry
    r_start = r'[ 0-9]+'
    for line in result.splitlines()[1:]:
        if not re.match(r_start, line):
            continue
        m = re.search( r, line )
        if m is None:
            routes.append(None)
        else:
            routes.append(m.group(1))
    return routes, error

def test_traceroute(net):
    print ('\n*** Conducting Traceroute Tests.\n')
    global score
    global details
    server1, server2, client, router = net.get( 'server1', 'server2', 'client', 'sw0')

    ROUTER_IP = [IP_SETTING[iface] for iface in ROUTER_INTERFACES]

    # Traceroute between hosts
    for src in net.hosts:
        traceroute_success = True
        for dest in net.hosts:
            if (src == dest):
                continue
            result = src.cmd("traceroute -N 1 {}".format(dest.IP()))
            routes, error = parse_traceroute(result)
            log.debug (result)
            log.debug ("routes = {}, error = {}".format(routes, error))
            if error != 0 or len(routes) != 2 or routes[0] not in ROUTER_IP or routes[1] != dest.IP():
                log.error ("traceroute from {} to {} failed".format(src, dest))
                traceroute_success = False
        if not traceroute_success:
            log.error ("*** Fail to traceroute from {}: -5 pts".format(src))
            details.append("*** Fail to traceroute from {}: -5 pts".format(src))
        else:
            score += 5

def test_download_size(net, size):
    '''
    size: expected size to test (should be string, e.g. 1K, 1M, 1G)
    '''
    server1, server2, client, router = net.get( 'server1', 'server2', 'client', 'sw0')

    for server in server1, server2:
        server.cmd("head -c {} </dev/urandom > tmp.{}".format(size, size))
        output = client.cmd("wget -O ./tmp.{} http://{}/tmp.{}".format(size, server.IP(), size))
        log.debug(output)
        diff = client.cmd("diff ./tmp.{} ./http_{}/tmp.{}".format(size, server, size))
        log.debug("diff result: '{}'".format(diff))
        client.cmd("rm ./tmp.*")
        server.cmd("rm ./tmp.*")
        if diff != "":
            log.info("Fail to download {} file from {} to {}".format(size, server, client))
            return False
    return True

def test_download(net):
    print ('\n*** Conducting File Downloading Tests.\n')
    global score
    global details
    
    # Download a small file from any server through http
    if not test_download_size(net, "1K"):
        log.error("*** Fail to download small file from http server: -5 pts")
        details.append("*** Fail to download small file from http server: -5 pts")
    else:
        score += 5

def test(net):
    test_ping(net)
    test_traceroute(net)
    test_download(net)


def main():
    global tester
    net = start_topo()
    communicator, tester = init_communicator()
    test(net)
    stop_topo(net)
    destroy_communicator(communicator)

if __name__ == '__main__':
    setLogLevel( 'info' )
    # details = open('details.log', 'w')
    details = []
    main()
    print ("Your tests score is {}/45 pts".format(score))
    print ("THIS IS NOT YOUR FINAL SCORE !!!")
    # details.write("Your tests score is {}/45 pts".format(score))
    details.insert(0, "Your tests score is {}/45 pts".format(score))
    with open("details.log", "w") as f:
    	for detail in details:
            f.write(detail + '\n')
