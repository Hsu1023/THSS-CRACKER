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

#include <Ice/Identity.ice>

module pox {
  sequence<byte> Buffer;

  struct Iface {
    string name;
    Buffer mac;
    int port;
  };
  sequence<Iface> Ifaces;

  interface PacketInjector {
    /**
     * @brief Request that router injects packet \p packet (ethernet header included!)
     *        to the interface \p outIface (i.e., packet will be send out on that interface)
     */
    void sendPacket(Buffer packet, string outIface);

    /**
     * @brief Internal interface to associate PacketInjector and PacketHandler
     *
     * @param identity Identity of the PacketHandler adapter object
     */
    void addPacketHandler(Ice::Identity identity);

    /**
     * @brief Get interfaces
     */
    Ifaces getIfaces();
  };

  interface PacketHandler {
    /**
     * @brief Handle packet received by the router
     *
     * @param packet  Buffer that includes the received packet, including Ethernet header
     * @param inIfase Interface name on which packet was received
     */
    void handlePacket(Buffer packet, string inIface);

    /**
     * @brief Reset router
     *
     * @param ports The list of interfaces on the router
     */
    void resetRouter(Ifaces ports);
  };

  interface Tester {
    string getArp();

    string getRoutingTable();
  };
};
