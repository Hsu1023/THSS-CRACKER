/* -*- Mode:C++; c-file-style:"gnu"; indent-tabs-mode:nil; -*- */
/*
 * Copyright (c) 2017 Alexander Afanasyev
 * Copyright (c) 1998, 1999, 2000 Mike D. Schiffman <mike@infonexus.com>
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 */

#ifndef SIMPLE_ROUTER_PROTOCOL_HPP
#define SIMPLE_ROUTER_PROTOCOL_HPP

#include <vector>
#include <list>
#include <string>
#include <ostream>
#include <algorithm>

#include <arpa/inet.h>
#include <string.h>

#include <boost/detail/endian.hpp>

#ifdef _LINUX_
#include <stdint.h>
#endif /* _LINUX_ */

#ifndef IP_MAXPACKET
#define IP_MAXPACKET 65535
#endif

#define ICMP_DATA_SIZE 28

namespace simple_router {

using Buffer = std::vector<unsigned char>;

/* Structure of a ICMP header
 */
struct icmp_hdr {
  uint8_t icmp_type;
  uint8_t icmp_code;
  uint16_t icmp_sum;
} __attribute__ ((packed)) ;


/* Structure of a type3 ICMP header
 */
struct icmp_t3_hdr {
  uint8_t icmp_type;
  uint8_t icmp_code;
  uint16_t icmp_sum;
  uint16_t unused;
  uint16_t next_mtu;
  uint8_t data[ICMP_DATA_SIZE];
} __attribute__ ((packed)) ;

/*
 * Structure of the IP header, naked of options.
 */
struct ip_hdr
{
#if defined(BOOST_LITTLE_ENDIAN)
  unsigned int ip_hl:4;            /* header length */
  unsigned int ip_v:4;             /* version */
#elif defined(BOOST_BIG_ENDIAN)
  unsigned int ip_v:4;             /* version */
  unsigned int ip_hl:4;            /* header length */
#else
#error "Byte ordering ot specified "
#endif
  uint8_t ip_tos;                  /* type of service */
  uint16_t ip_len;                 /* total length */
  uint16_t ip_id;                  /* identification */
  uint16_t ip_off;                 /* fragment offset field */
#define IP_RF 0x8000               /* reserved fragment flag */
#define IP_DF 0x4000               /* dont fragment flag */
#define IP_MF 0x2000               /* more fragments flag */
#define IP_OFFMASK 0x1fff          /* mask for fragmenting bits */
  uint8_t ip_ttl;                  /* time to live */
  uint8_t ip_p;                    /* protocol */
  uint16_t ip_sum;                 /* checksum */
  uint32_t ip_src, ip_dst;         /* source and dest address */
} __attribute__ ((packed)) ;


/*
 *  Ethernet packet header prototype.  Too many O/S's define this differently.
 *  Easy enough to solve that and define it here.
 */
struct ethernet_hdr
{
#ifndef ETHER_ADDR_LEN
#define ETHER_ADDR_LEN 6
#endif
  uint8_t  ether_dhost[ETHER_ADDR_LEN]; /* destination ethernet address */
  uint8_t  ether_shost[ETHER_ADDR_LEN]; /* source ethernet address */
  uint16_t ether_type;                  /* packet type ID */
} __attribute__ ((packed)) ;


enum ip_protocol {
  ip_protocol_icmp = 0x0001,
};

enum ethertype {
  ethertype_arp = 0x0806,
  ethertype_ip = 0x0800,
};

enum arp_opcode {
  arp_op_request = 0x0001,
  arp_op_reply = 0x0002,
};

enum arp_hrd_fmt {
  arp_hrd_ethernet = 0x0001,
};


struct arp_hdr
{
  unsigned short  arp_hrd;                 /* format of hardware address   */
  unsigned short  arp_pro;                 /* format of protocol address   */
  unsigned char   arp_hln;                 /* length of hardware address   */
  unsigned char   arp_pln;                 /* length of protocol address   */
  unsigned short  arp_op;                  /* ARP opcode (command)         */
  unsigned char   arp_sha[ETHER_ADDR_LEN]; /* sender hardware address      */
  uint32_t        arp_sip;                 /* sender IP address            */
  unsigned char   arp_tha[ETHER_ADDR_LEN]; /* target hardware address      */
  uint32_t        arp_tip;                 /* target IP address            */
} __attribute__ ((packed)) ;

} // namespace simple_router

#endif // SIMPLE_ROUTER_PROTOCOL_HPP
