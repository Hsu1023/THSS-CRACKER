#!/usr/bin/env python
# -*- Mode: python; py-indent-offset: 4; indent-tabs-mode: nil; coding: utf-8; -*-
# Copyright 2017 Alex Afanasyev (UCLA)
#
# This program is free software: you can redistribute it and/or modify it under the terms of
# the GNU General Public License as published by the Free Software Foundation, either version
# 3 of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
# without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along with this program.
# If not, see <http://www.gnu.org/licenses/>.

import os, sys, logging, Ice, traceback

log = logging.getLogger("CS118")
logging.basicConfig(stream=sys.stderr)
log.setLevel(logging.DEBUG)

slice_dir = Ice.getSliceDir()
if not slice_dir:
    log.error(sys.argv[0] + ': Slice directory not found.')
    sys.exit(1)

Ice.loadSlice("", ["-I%s" % slice_dir, "core/pox.ice"])
import pox

class Client(Ice.Application):
    def run(self, args):

        base = self.communicator().stringToProxy("Tester:tcp -h 127.0.0.1 -p 65500")
        tester = pox.TesterPrx.checkedCast(base)
        if not tester:
            raise RuntimeError("Invalid proxy")

        if len(args) < 2 or args[1] == "arp":
            print tester.getArp()
        else:
            print tester.getRoutingTable()
        return 0
 
app = Client()
status = app.main(sys.argv)
sys.exit(status)
