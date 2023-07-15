CXX=g++
CXXOPTIMIZE= -O2
CXXFLAGS= -g -Wall -pthread -std=c++11 -I. -Ibuild/ $(CXXOPTIMIZE)
LDFLAGS=-lIce -lIceUtil -lboost_system -pthread
SLICE_INCLUDES=-I/usr/share/Ice/slice

USERID=123456789

CLASSES=build/pox.o arp-cache.o routing-table.o simple-router.o core/utils.o core/interface.o core/dumper.o

all: router

build/pox.cpp: core/pox.ice
	mkdir -p build
	slice2cpp $(SLICE_INCLUDES) --output-dir=build --header-ext=hpp $<

router: $(CLASSES) core/main.o
	$(CXX) -o $@ $^ $(LDFLAGS)

clean:
	rm -rf *.o *~ *.gch *.swp *.dSYM router *.tar.gz pox.hpp pox.cpp build/ *.pyc core/*.o

dist: tarball
tarball: clean
	tar -cvzf /tmp/$(USERID).tar.gz --exclude=./.vagrant . && mv /tmp/$(USERID).tar.gz .
