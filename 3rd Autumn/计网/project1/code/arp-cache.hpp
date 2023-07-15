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

/*
  This file defines an ARP cache with ARP request queue and ARP cache entries
  The ARP cache entries hold IP->MAC mappings and are timed out every SR_ARPCACHE_TO seconds.

   --

   The handle_arpreq() function is a function you should write, and it should
   handle sending ARP requests if necessary:

   function handle_arpreq(req):
       if now - req->timeSent > seconds(1)
           if req->nTimesSent >= 5:
               send icmp host unreachable to source addr of all pkts waiting
                 on this request
               cache.removeRequest(req)
           else:
               send arp request
               req->timeSent = now
               req->nTimesSent++

   --

   The ARP reply processing code should move entries from the ARP request
   queue to the ARP cache:

   # When servicing an arp reply that gives us an IP->MAC mapping
   req = cache.insertArpEntry(ip, mac)

   if req != nullptr:
       send all packets on the req->packets linked list
       cache.removeRequest(req)

   --

   To meet the guidelines in the assignment (ARP requests are sent every second
   until we send 5 ARP requests, then we send ICMP host unreachable back to
   all packets waiting on this ARP request), you must fill out the following
   function that is called every second and is defined in sr_arpcache.c:

   void
   ArpCache::periodicCheckArpRequestsAndCacheEntries() {
       for each request on m_arpRequests:
           handle_arpreq(request)
   }
*/

#ifndef SIMPLE_ROUTER_ARP_CACHE_HPP
#define SIMPLE_ROUTER_ARP_CACHE_HPP

#include "core/protocol.hpp"

#include <list>
#include <mutex>
#include <thread>
#include <chrono>
#include <memory>

namespace simple_router {

class SimpleRouter;

using steady_clock = std::chrono::steady_clock;
using time_point = std::chrono::steady_clock::time_point;
using seconds = std::chrono::seconds;

const seconds SR_ARPCACHE_TO = seconds(30);
const uint32_t MAX_SENT_TIME = 5;

struct PendingPacket
{
  Buffer packet;     //< A raw Ethernet frame, presumably with the dest MAC empty
  std::string iface; //< The outgoing interface
};

struct ArpRequest {
  ArpRequest(uint32_t ip)
    : ip(ip)
    , nTimesSent(0)
  {
  }

  uint32_t ip;

  /**
   * Last time this ARP request was sent. You should update this. If
   * the ARP request was never sent, timeSent == time_point()
   */
  time_point timeSent;

  /**
   * The number of times this request was sent. You should update this.
   */
  uint32_t nTimesSent;

  std::list<PendingPacket> packets;
};

struct ArpEntry {
  Buffer mac;
  uint32_t ip = 0; //< IP addr in network byte order
  time_point timeAdded;
  bool isValid = false;
};

class ArpCache {
public:
  ArpCache(SimpleRouter& router);

  ~ArpCache();

  /**
   * IMPLEMENT THIS METHOD
   *
   * This method gets called every second. For each request sent out,
   * you should keep checking whether to resend a request or remove it.
   *
   * Your implementation should follow the following logic
   *
   *     for each request in queued requests:
   *         handleRequest(request)
   *
   *     for each cache entry in entries:
   *         if not entry->isValid
   *             record entry for removal
   *     remove all entries marked for removal
   */
  void
  periodicCheckArpRequestsAndCacheEntries();

  void
  removeEntry(const std::shared_ptr<ArpEntry> &entry);

  /**
   * Checks if an IP->MAC mapping is in the cache. IP is in network byte order.
   * You must free the returned structure if it is not NULL.
   */
  std::shared_ptr<ArpEntry>
  lookup(uint32_t ip);

  std::shared_ptr<ArpEntry>
  lookupWithoutLock(uint32_t ip);

  /**
   * Adds an ARP request to the ARP request queue. If the request is already on
   * the queue, adds the packet to the linked list of packets for this sr_arpreq
   * that corresponds to this ARP request. The packet argument should not be
   * freed by the caller.
   *
   * A pointer to the ARP request is returned; it should not be freed. The caller
   * can remove the ARP request from the queue by calling sr_arpreq_destroy.
   */
  std::shared_ptr<ArpRequest>
  queueRequest(uint32_t ip, const Buffer& packet, const std::string& iface);

  std::shared_ptr<ArpRequest>
  queueRequestWithoutLock(uint32_t ip, const Buffer& packet, const std::string& iface);

  /*
   * Frees all memory associated with this arp request entry. If this arp request
   * entry is on the arp request queue, it is removed from the queue.
   */
  void
  removeRequest(const std::shared_ptr<ArpRequest>& entry);

  /**
   * This method performs two functions:
   *
   * 1) Looks up this IP in the request queue. If it is found, returns a pointer
   *    to the ArpRequest with this IP. Otherwise, returns nullptr.
   * 2) Inserts this IP to MAC mapping in the cache, and marks it valid.
   */
  std::shared_ptr<ArpRequest>
  insertArpEntry(const Buffer& mac, uint32_t ip);

  /**
   * Prints out the ARP table.
   */
  void
  dump();

  /**
   * Clear all entries in ARP cache and requests.
   */
  void
  clear();

private:
  /**
   * Thread which sweeps through the cache and invalidates entries that were added
   * more than SR_ARPCACHE_TO seconds ago.
   */
  void
  ticker();

private:
  SimpleRouter& m_router;

  std::list<std::shared_ptr<ArpEntry>> m_cacheEntries;
  std::list<std::shared_ptr<ArpRequest>> m_arpRequests;

  volatile bool m_shouldStop;
  std::thread m_tickerThread;
  mutable std::mutex m_mutex;

  friend std::ostream&
  operator<<(std::ostream& os, const ArpCache& cache);
};

std::ostream&
operator<<(std::ostream& os, const ArpCache& cache);

} // namespace simple_router

#endif // SIMPLE_ROUTER_ARP_CACHE_HPP
