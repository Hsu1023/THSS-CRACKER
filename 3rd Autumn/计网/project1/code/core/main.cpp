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

#include <Ice/Ice.h>
#include <IceUtil/IceUtil.h>

namespace simple_router {

class PacketHandler : public pox::PacketHandler
{
public:
  PacketHandler(SimpleRouter& router)
    : m_router(router)
  {
  }

  void
  handlePacket(const pox::Buffer& packet, const std::string& inIface, const ::Ice::Current&) override
  {
    m_router.handlePacket(packet, inIface);
  }

  void
  resetRouter(const pox::Ifaces& ports, const ::Ice::Current&) override
  {
    m_router.reset(ports);
  }

private:
  SimpleRouter& m_router;
};

class Tester : public pox::Tester
{
public:
  Tester(SimpleRouter& router)
    : m_router(router)
  {
  }

  std::string
  getArp(const ::Ice::Current&) override
  {
    std::ostringstream os;
    os << m_router.getArp();
    return os.str();
  }

  std::string
  getRoutingTable(const ::Ice::Current&) override
  {
    std::ostringstream os;
    os << m_router.getRoutingTable();
    return os.str();
  }

private:
  SimpleRouter& m_router;
};

class Router : public Ice::Application
{
public:
  int
  run(int, char*[]) override
  {
    auto rtFile = communicator()->getProperties()->getPropertyWithDefault("RoutingTable", "RTABLE");
    if (!m_router.loadRoutingTable(rtFile)) {
      std::cerr << "ERROR: Cannot load routing table from `" << rtFile << "`" << std::endl;
      return EXIT_FAILURE;
    }

    m_router.m_pox = pox::PacketInjectorPrx::checkedCast(communicator()
                                                         ->propertyToProxy("SimpleRouter.Proxy")
                                                         ->ice_twoway());

    if (!m_router.m_pox) {
      std::cerr << "ERROR: Cannot connect to POX controller or invalid configuration of the controller" << std::endl;
      return EXIT_FAILURE;
    }

    auto ifFile = communicator()->getProperties()->getPropertyWithDefault("Ifconfig", "IP_CONFIG");
    m_router.loadIfconfig(ifFile);

    Ice::ObjectAdapterPtr adapter = communicator()->createObjectAdapter("");
    Ice::Identity ident;
    ident.name = IceUtil::generateUUID();
    ident.category = "";

    adapter->add(pox::PacketHandlerPtr(new PacketHandler(m_router)), ident);
    adapter->activate();
    m_router.m_pox->ice_getConnection()->setAdapter(adapter);
    m_router.m_pox->addPacketHandler(ident);

    auto ifaces = m_router.m_pox->getIfaces();
    m_router.reset(ifaces);

    volatile bool shouldStop = false;
    auto checkThread = std::thread([&] {
        while (!shouldStop) {
          std::this_thread::sleep_for(std::chrono::seconds(1));
          try {
            m_router.m_pox->ice_ping();
          }
          catch (...) {
            std::cerr << "Connection to POX service broken, exiting..." << std::endl;
            this->communicator()->shutdown();
          }
        }
      });

    auto testAdapter = communicator()->createObjectAdapterWithEndpoints("Tester", "tcp -p 65500");
    testAdapter->add(pox::TesterPtr(new Tester(m_router)), communicator()->stringToIdentity("Tester"));
    testAdapter->activate();

    communicator()->waitForShutdown();
    shouldStop = true;
    checkThread.join();
    return EXIT_SUCCESS;
  }

private:
  SimpleRouter m_router;
};

} // namespace simple_router

int main(int argc, char** argv)
{
#ifdef ICE_STATIC_LIBS
  Ice::registerIceSSL();
#endif

  simple_router::Router router;
  return router.main(argc, argv, "router.config");
}
