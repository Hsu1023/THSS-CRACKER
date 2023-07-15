/* -*- Mode:C++; c-file-style:"gnu"; indent-tabs-mode:nil; -*- */
/**
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
/**
 * This header file defines data structures for logging packets in tcpdump
 * format as well as a set of operations for logging.
 */

#ifndef SIMPLE_ROUTER_CORE_DUMPER_HPP
#define SIMPLE_ROUTER_CORE_DUMPER_HPP

#include "protocol.hpp"

namespace simple_router {

/* file header */
struct pcap_file_header {
  uint32_t   magic;         /* magic number */
  uint16_t version_major; /* version number major */
  uint16_t version_minor; /* version number minor */
  int     thiszone;      /* gmt to local correction */
  uint32_t   sigfigs;       /* accuracy of timestamps */
  uint32_t   snaplen;       /* max length saved portion of each pkt */
  uint32_t   linktype;      /* data link type (LINKTYPE_*) */
};

/* packet header */
struct pcap_pkthdr {
  struct timeval ts;     /* time stamp  */
  uint32_t caplen;          /* length of portion present */
  uint32_t len;             /* length this packet (off wire) */
};

/*
 * This is a timeval as stored in disk in a dumpfile.
 * It has to use the same types everywhere, independent of the actual
 * `struct timeval'
 */
struct pcap_timeval {
  int tv_sec;           /* seconds */
  int tv_usec;          /* microseconds */
};


/*
 * How a `pcap_pkthdr' is actually stored in the dumpfile.
 */
struct pcap_sf_pkthdr {
  struct pcap_timeval ts;     /* time stamp */
  uint32_t caplen;         /* length of portion present */
  uint32_t len;            /* length this packet (off wire) */
};

/**
 * Open a dump file and initialize the file.
 */
FILE*
sr_dump_open(const char *fname, int thiszone, int snaplen);

/**
 * Write data into the log file
 */
void
sr_dump(FILE *fp, const struct pcap_pkthdr *h, const unsigned char *sp);

/**
 * Close the file
 */
void
sr_dump_close(FILE *fp);

} // namespace simple_router

#endif // SIMPLE_ROUTER_CORE_DUMPER_HPP
