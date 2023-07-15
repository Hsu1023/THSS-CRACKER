/* -*- Mode:C++; c-file-style:"gnu"; indent-tabs-mode:nil; -*- */
/**
 * Copyright (c) 2017 Alexander Afanasyev
 *
 * This program is free software: you can redistribute it and/or modify it under the terms of
 * the GNU General Public License as published by the Free Software Foundation, either version
 * 3 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with this program.
 * If not, see <http://www.gnu.org/licenses/>.
 */

#include "simple-router.hpp"
#include "core/utils.hpp"

#include <fstream>

namespace simple_router {


//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
// IMPLEMENT THIS METHOD


void
SimpleRouter::sendArpReply(const uint32_t &src_ip, const uint32_t &dest_ip, const Buffer &src_mac, const Buffer &dest_mac, std::string ifName){
  Buffer* req_packet = new Buffer(sizeof(ethernet_hdr) + sizeof(arp_hdr));
  unsigned char *data = req_packet->data();

  // ethernet FF:FF:FF:FF:FF:FF，注意均为大端
  ethernet_hdr *ethernet = (ethernet_hdr *)data;
  memcpy(ethernet->ether_shost, src_mac.data(), sizeof(src_mac.size()));
  memcpy(ethernet->ether_dhost, dest_mac.data(), sizeof(dest_mac.size()));
  ethernet->ether_type = htons(ethertype_arp);

  // arp 
  arp_hdr *arp = (arp_hdr *)(data + sizeof(ethernet_hdr));
  arp->arp_hrd = htons(arp_hrd_ethernet); // 0x0001
  arp->arp_pro = htons(ethertype_ip); // 0x0800
  arp->arp_hln = 0x06;
  arp->arp_pln = 0x04;
  arp->arp_op = htons(arp_op_reply);
  memcpy(arp->arp_sha, src_mac.data(), ETHER_ADDR_LEN);
  arp->arp_sip = src_ip;
  memcpy(arp->arp_tha, dest_mac.data(), ETHER_ADDR_LEN);
  arp->arp_tip = dest_ip;

  std::cout<<"send to "<<ipToString(dest_ip)<<" from interface "<<ifName<<std::endl;

  sendPacket(*req_packet, ifName);
}


void
SimpleRouter::sendIpv4(const Buffer& packet, const Interface* interface, const Buffer &dst_mac){
  Buffer *forward_pkt = new Buffer(packet);
  uint8_t *data = forward_pkt->data();
  ethernet_hdr *eth = (ethernet_hdr*)data;
  ip_hdr *ip = (ip_hdr *)(data + sizeof(ethernet_hdr));

  memcpy(eth->ether_shost, (interface->addr).data(), ETHER_ADDR_LEN);
  memcpy(eth->ether_dhost, dst_mac.data(), ETHER_ADDR_LEN);

  ip->ip_ttl--;
  ip->ip_sum = 0;
  ip->ip_sum = cksum(ip, sizeof(ip_hdr));

  sendPacket(*forward_pkt, interface->name);

  std::cout<<"send ipv4 to:" <<ipToString(ip->ip_dst)<<" via: "<<interface->name<<std::endl;
}

void
SimpleRouter::sendICMP(const Buffer &packet, std::string ifName){
  Buffer *reply_pkt = new Buffer(packet);
  uint8_t *data = reply_pkt->data();
  ethernet_hdr *eth = (ethernet_hdr*)data;
  ip_hdr *ip = (ip_hdr *)(data + sizeof(ethernet_hdr));
  icmp_hdr *icmp = (icmp_hdr *)(data + sizeof(ethernet_hdr) + sizeof(ip_hdr));

  ethernet_hdr *origin_eth = (ethernet_hdr *)(packet.data());
  ip_hdr *origin_ip = (ip_hdr *)(packet.data() + sizeof(ethernet_hdr));

   // 修改以太帧
  memcpy(eth->ether_dhost, origin_eth->ether_shost, ETHER_ADDR_LEN);
  memcpy(eth->ether_shost, origin_eth->ether_dhost, ETHER_ADDR_LEN);

  // 修改IPv4
  ip->ip_id = 0;
  ip->ip_ttl = 0x40;
  ip->ip_dst = origin_ip->ip_src;
  ip->ip_src = origin_ip->ip_dst;
  ip->ip_sum = 0;
  ip->ip_sum = cksum((uint8_t*)ip, sizeof(ip_hdr));

  // 修改ICMP
  icmp->icmp_code = 0x00;
  icmp->icmp_type = 0x00;
  icmp->icmp_sum = 0;
  int icmp_length = packet.size() - sizeof(ip_hdr) - sizeof(ethernet_hdr);
  icmp->icmp_sum = cksum((uint8_t *)icmp, icmp_length);

  sendPacket(*reply_pkt, ifName);

  std::cout<<"send icmp to:" <<ipToString(ip->ip_dst)<<std::endl;
}

void
SimpleRouter::handlePacket(const Buffer& packet, const std::string& inIface)
{
  std::cout << "handlePacket\n" <<std::endl;
  std::cerr << "Got packet of size " << packet.size() << " on interface " << inIface << std::endl;


  const Interface* iface = findIfaceByName(inIface);
  if (iface == nullptr) {
    std::cerr << "Received packet, but interface is unknown, ignoring" << std::endl;
    return;
  }

  std::cerr << getRoutingTable() << std::endl;

  // // FILL THIS IN
  if (packet.size() < sizeof(ethernet_hdr)){
    std::cerr << "Invalid Ethernet header!" << std::endl;
    return;
  }
  const unsigned char *data = packet.data();
  ethernet_hdr *ethernet = (ethernet_hdr *)data;
  uint16_t eth_type = ntohs(ethernet->ether_type);


  Buffer src_mac(ETHER_ADDR_LEN);
  memcpy(src_mac.data(), ethernet->ether_dhost, ETHER_ADDR_LEN);
  Buffer dst_mac(ETHER_ADDR_LEN);
  memcpy(dst_mac.data(), ethernet->ether_shost, ETHER_ADDR_LEN);
  
  // arp
  if (eth_type == ethertype_arp)
  {
    arp_hdr *arp = (arp_hdr *)(data + sizeof(ethernet_hdr));
    uint16_t arp_type = ntohs(arp->arp_op);
    // 如果是arp request
    if (arp_type == arp_op_request){
      if (arp->arp_tip == iface->ip){
        std::cout << "receive arp request from " << ipToString(arp->arp_sip) << std::endl;
        sendArpReply(arp->arp_tip, arp->arp_sip, iface->addr, src_mac, inIface);
      }
    }
    // 如果是arp reply
    else if (arp_type == arp_op_reply){
      std::cout << "receive arp reply from " << macToString(src_mac) << std::endl;
      // if not exists in arp cache, update
      if (!m_arp.lookup(arp->arp_sip)){
        auto request = m_arp.insertArpEntry(dst_mac, arp->arp_sip);
        if (!request)return;
        // handle pending packets
        for (auto &pending_packet:request->packets){
          handlePacket(pending_packet.packet, pending_packet.iface);
        }
        m_arp.removeRequest(request);
      }
    }
  }
  //ipv4
  else if (eth_type == ethertype_ip){
      ip_hdr *ip = (ip_hdr *)(data + sizeof(ethernet_hdr));
      std::cout << "receive ipv4 from " << ipToString(ip->ip_src) << std::endl;
      // cksum
      uint16_t sum = cksum(ip, sizeof(ip_hdr));
      if (sum != 0xffff){
        std::cerr << "cksum error" << std::endl;
        return;
      }
      // if destination is router
      if (findIfaceByIp(ip->ip_dst)){
        // if protocol is icmp
        if (ip->ip_p == ip_protocol_icmp)
        {
          ip_hdr *origin_ip = (ip_hdr *)(packet.data() + sizeof(ethernet_hdr));
          uint32_t src_ip = origin_ip->ip_src;
          auto entry = m_arp.lookup(src_ip);
          if(!entry){
            m_arp.queueRequest(src_ip, packet, inIface);
            return;
          }
          sendICMP(packet, inIface);
        }
        // if protocol is not icmp (e.g. tcp or udp)
        else{
          ip_hdr *origin_ip = (ip_hdr *)(packet.data() + sizeof(ethernet_hdr));
          uint32_t src_ip = origin_ip->ip_src;
          auto entry = m_arp.lookup(src_ip);

          if(!entry){
            m_arp.queueRequest(src_ip, packet, inIface);
            return;
          }
          sendICMPt3(PendingPacket({packet, inIface}), 3, 3);
        }
      }
      // if destination is not router
      else{
        // if time out, send ICMP type3
        if (ip->ip_ttl == 1){
          ip_hdr *origin_ip = (ip_hdr *)(packet.data() + sizeof(ethernet_hdr));
          uint32_t src_ip = origin_ip->ip_src;
          auto entry = m_arp.lookup(src_ip);
          if(!entry){
            m_arp.queueRequest(src_ip, packet, inIface);
            return;
          }
          sendICMPt3(PendingPacket({packet, inIface}), 11, 0);
        }
        // if not timeout, forward packet
        else {
          RoutingTableEntry forwardEntry = m_routingTable.lookup(ip->ip_dst);
          std::string outInterfaceName = forwardEntry.ifName;
          const Interface * outInterface = findIfaceByName(outInterfaceName);
          auto arpEntry = m_arp.lookup(ip->ip_dst);
          if (!arpEntry) {
            m_arp.queueRequest(ip->ip_dst, packet, inIface);
            return;
          }
          sendIpv4(packet, outInterface, arpEntry->mac);
        }
      }
  }
}

void
SimpleRouter::sendICMPt3(const PendingPacket &pendingPacket, uint8_t type, uint8_t code){
  std::cout<<"send icmp t3" <<std::endl;
  auto packet = pendingPacket.packet;
  std::string IfName = pendingPacket.iface;
  const Interface* If = findIfaceByName(IfName);

  Buffer *send_packet = new Buffer(sizeof(ethernet_hdr) + sizeof(ip_hdr) + sizeof(icmp_t3_hdr));
  uint8_t *data = send_packet->data();

  // get MAC
  ip_hdr *origin_ip = (ip_hdr *)(packet.data() + sizeof(ethernet_hdr));
  uint32_t dest_ip = origin_ip->ip_src;
  auto entry = m_arp.lookup(dest_ip);
  
  Buffer mac = Buffer(entry->mac);

  // ethernet
  ethernet_hdr *ethernet = (ethernet_hdr *)data;
  memcpy(ethernet->ether_shost, If->addr.data(), ETHER_ADDR_LEN);
  memcpy(ethernet->ether_dhost, mac.data(), ETHER_ADDR_LEN);
  ethernet->ether_type = htons(ethertype_ip);

  // ipv4
  ip_hdr *ip = (ip_hdr *)(data + sizeof(ethernet_hdr));
  ip->ip_v = 0x04;
  ip->ip_hl = 0x05;
  ip->ip_tos = 0x00;
  ip->ip_len = htons(sizeof(icmp_t3_hdr) + sizeof(ip_hdr));
  ip->ip_id = (uint16_t)rand();
  ip->ip_off = htons(IP_DF);
  ip->ip_ttl = 0x40; // 64
  ip->ip_p = ip_protocol_icmp;
  ip->ip_sum = 0;
  ip->ip_src = If->ip;
  ip->ip_dst = origin_ip->ip_src; 
  ip->ip_sum = cksum((const void *)ip, sizeof(ip_hdr));

  // icmp type 3
  icmp_t3_hdr *icmp = (icmp_t3_hdr *)(data + sizeof(ethernet_hdr) + sizeof(ip_hdr));
  icmp->icmp_type = type;
  icmp->icmp_code = code;
  icmp->icmp_sum = 0;
  icmp->unused = 0;
  icmp->next_mtu = 0;
  memcpy(icmp->data, origin_ip, ICMP_DATA_SIZE);
  icmp->icmp_sum = cksum((const void *)icmp, sizeof(icmp_t3_hdr));

  sendPacket(*send_packet, IfName);
}

void
SimpleRouter::sendICMPt3NonExisting(const PendingPacket &pendingPacket, uint8_t type, uint8_t code){
  auto packet = pendingPacket.packet;
  std::string IfName = pendingPacket.iface;
  const Interface* If = findIfaceByName(IfName);

  Buffer *send_packet = new Buffer(sizeof(ethernet_hdr) + sizeof(ip_hdr) + sizeof(icmp_t3_hdr));
  uint8_t *data = send_packet->data();

  // get MAC
  ip_hdr *origin_ip = (ip_hdr *)(packet.data() + sizeof(ethernet_hdr));
  uint32_t dest_ip = origin_ip->ip_src;

  std::cerr << "Unreachable Host:"<<ipToString(origin_ip->ip_dst) <<std::endl;

  auto entry = m_arp.lookupWithoutLock(dest_ip);
  
  Buffer mac = Buffer(ETHER_ADDR_LEN, 0);
  if (entry)
    mac = entry->mac;

  // ethernet
  ethernet_hdr *ethernet = (ethernet_hdr *)data;
  memcpy(ethernet->ether_shost, If->addr.data(), ETHER_ADDR_LEN);
  memcpy(ethernet->ether_dhost, mac.data(), ETHER_ADDR_LEN);
  ethernet->ether_type = htons(ethertype_ip);

  // ipv4
  ip_hdr *ip = (ip_hdr *)(data + sizeof(ethernet_hdr));
  ip->ip_v = 0x04;
  ip->ip_hl = 0x05;
  ip->ip_tos = 0x00;
  ip->ip_len = htons(sizeof(icmp_t3_hdr) + sizeof(ip_hdr));
  ip->ip_id = (uint16_t)rand();
  ip->ip_off = htons(IP_DF);
  ip->ip_ttl = 0x40; // 64
  ip->ip_p = ip_protocol_icmp;
  ip->ip_sum = 0;
  ip->ip_src = If->ip;
  ip->ip_dst = origin_ip->ip_src; 
  ip->ip_sum = cksum((const void *)ip, sizeof(ip_hdr));

  // icmp type 3
  icmp_t3_hdr *icmp = (icmp_t3_hdr *)(data + sizeof(ethernet_hdr) + sizeof(ip_hdr));
  icmp->icmp_type = type;
  icmp->icmp_code = code;
  icmp->icmp_sum = 0;
  icmp->unused = 0;
  icmp->next_mtu = 0;
  memcpy(icmp->data, origin_ip, ICMP_DATA_SIZE);
  icmp->icmp_sum = cksum((const void *)icmp, sizeof(icmp_t3_hdr));

  if(!entry)
    m_arp.queueRequestWithoutLock(origin_ip->ip_src, *send_packet, IfName);
  else
    sendPacket(*send_packet, IfName);
}

void
SimpleRouter::sendArpRequest(const uint32_t &dest_ip){
  std::cout<<"send arp request to "<<ipToString(dest_ip)<<std::endl;
  Buffer* req_packet = new Buffer(sizeof(ethernet_hdr) + sizeof(arp_hdr));
  unsigned char *data = req_packet->data();

  // get interface / addr / ip
  std::string ifName = m_routingTable.lookup(dest_ip).ifName;
  const Interface *If = findIfaceByName(ifName);
  Buffer IfAddr = If->addr;
  uint32_t IfIp = If->ip;

  // ethernet FF:FF:FF:FF:FF:FF，注意均为大端
  ethernet_hdr *ethernet = (ethernet_hdr *)data;
  memcpy(ethernet->ether_shost, IfAddr.data(), sizeof(IfAddr.size()));
  memset(ethernet->ether_dhost, 0xff, sizeof(ethernet->ether_shost));
  ethernet->ether_type = htons(ethertype_arp);

  // arp 
  arp_hdr *arp = (arp_hdr *)(data + sizeof(ethernet_hdr));
  arp->arp_hrd = htons(arp_hrd_ethernet); // 0x0001
  arp->arp_pro = htons(ethertype_ip); // 0x0800
  arp->arp_hln = 0x06;
  arp->arp_pln = 0x04;
  arp->arp_op = htons(arp_op_request);
  memcpy(arp->arp_sha, IfAddr.data(), ETHER_ADDR_LEN);
  arp->arp_sip = IfIp;
  memset(arp->arp_tha, 0xff, ETHER_ADDR_LEN);
  arp->arp_tip = dest_ip;

  sendPacket(*req_packet, ifName);
}
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////

// You should not need to touch the rest of this code.
SimpleRouter::SimpleRouter()
  : m_arp(*this)
{
}

void
SimpleRouter::sendPacket(const Buffer& packet, const std::string& outIface)
{
  m_pox->begin_sendPacket(packet, outIface);
}

bool
SimpleRouter::loadRoutingTable(const std::string& rtConfig)
{
  return m_routingTable.load(rtConfig);
}

void
SimpleRouter::loadIfconfig(const std::string& ifconfig)
{
  std::ifstream iff(ifconfig.c_str());
  std::string line;
  while (std::getline(iff, line)) {
    std::istringstream ifLine(line);
    std::string iface, ip;
    ifLine >> iface >> ip;

    in_addr ip_addr;
    if (inet_aton(ip.c_str(), &ip_addr) == 0) {
      throw std::runtime_error("Invalid IP address `" + ip + "` for interface `" + iface + "`");
    }

    m_ifNameToIpMap[iface] = ip_addr.s_addr;
  }
}

void
SimpleRouter::printIfaces(std::ostream& os)
{
  if (m_ifaces.empty()) {
    os << " Interface list empty " << std::endl;
    return;
  }

  for (const auto& iface : m_ifaces) {
    os << iface << "\n";
  }
  os.flush();
}

const Interface*
SimpleRouter::findIfaceByIp(uint32_t ip) const
{
  auto iface = std::find_if(m_ifaces.begin(), m_ifaces.end(), [ip] (const Interface& iface) {
      return iface.ip == ip;
    });

  if (iface == m_ifaces.end()) {
    return nullptr;
  }

  return &*iface;
}

const Interface*
SimpleRouter::findIfaceByMac(const Buffer& mac) const
{
  auto iface = std::find_if(m_ifaces.begin(), m_ifaces.end(), [mac] (const Interface& iface) {
      return iface.addr == mac;
    });

  if (iface == m_ifaces.end()) {
    return nullptr;
  }

  return &*iface;
}

const Interface*
SimpleRouter::findIfaceByName(const std::string& name) const
{
  auto iface = std::find_if(m_ifaces.begin(), m_ifaces.end(), [name] (const Interface& iface) {
      return iface.name == name;
    });

  if (iface == m_ifaces.end()) {
    return nullptr;
  }

  return &*iface;
}

void
SimpleRouter::reset(const pox::Ifaces& ports)
{
  std::cerr << "Resetting SimpleRouter with " << ports.size() << " ports" << std::endl;

  m_arp.clear();
  m_ifaces.clear();

  for (const auto& iface : ports) {
    auto ip = m_ifNameToIpMap.find(iface.name);
    if (ip == m_ifNameToIpMap.end()) {
      std::cerr << "IP_CONFIG missing information about interface `" + iface.name + "`. Skipping it" << std::endl;
      continue;
    }

    m_ifaces.insert(Interface(iface.name, iface.mac, ip->second));
  }

  printIfaces(std::cerr);
}


} // namespace simple_router {
