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

#include "routing-table.hpp"
#include "core/utils.hpp"

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <string.h>
#include <unistd.h>

namespace simple_router {

//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
// IMPLEMENT THIS METHOD
RoutingTableEntry
RoutingTable::lookup(uint32_t ip) const
{

  // FILL THIS IN
  uint32_t longest_mask = 0;
  const RoutingTableEntry *selected = NULL;
  for (const auto &entry : m_entries)
  {
    auto masked_dest = entry.dest & entry.mask;
    auto masked_ip = ip & entry.mask;
    if (masked_dest == masked_ip){
      auto re_mask = ntohl(entry.mask);
      if (longest_mask < re_mask || (!selected))
      {
        longest_mask = re_mask;
        selected = &entry;
      }
    }
  }
  if(selected){
    return *selected;
  }

  throw std::runtime_error("Routing entry not found");
}
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////

// You should not need to touch the rest of this code.

bool
RoutingTable::load(const std::string& file)
{
  FILE* fp;
  char  line[BUFSIZ];
  char  dest[32];
  char  gw[32];
  char  mask[32];
  char  iface[32];
  struct in_addr dest_addr;
  struct in_addr gw_addr;
  struct in_addr mask_addr;

  if (access(file.c_str(), R_OK) != 0) {
    perror("access");
    return false;
  }

  fp = fopen(file.c_str(), "r");

  while (fgets(line, BUFSIZ, fp) != 0) {
    sscanf(line,"%s %s %s %s", dest, gw, mask, iface);
    if (inet_aton(dest, &dest_addr) == 0) {
      fprintf(stderr,
              "Error loading routing table, cannot convert %s to valid IP\n",
              dest);
      return false;
    }
    if (inet_aton(gw, &gw_addr) == 0) {
      fprintf(stderr,
              "Error loading routing table, cannot convert %s to valid IP\n",
              gw);
      return false;
    }
    if (inet_aton(mask, &mask_addr) == 0) {
      fprintf(stderr,
              "Error loading routing table, cannot convert %s to valid IP\n",
              mask);
      return false;
    }

    addEntry({dest_addr.s_addr, gw_addr.s_addr, mask_addr.s_addr, iface});
  }
  return true;
}

void
RoutingTable::addEntry(RoutingTableEntry entry)
{
  m_entries.push_back(std::move(entry));
}

std::ostream&
operator<<(std::ostream& os, const RoutingTableEntry& entry)
{
  os << ipToString(entry.dest) << "\t\t"
     << ipToString(entry.gw) << "\t"
     << ipToString(entry.mask) << "\t"
     << entry.ifName;
  return os;
}

std::ostream&
operator<<(std::ostream& os, const RoutingTable& table)
{
  os << "Destination\tGateway\t\tMask\tIface\n";
  for (const auto& entry : table.m_entries) {
    os << entry << "\n";
  }
  return os;
}

} // namespace simple_router
