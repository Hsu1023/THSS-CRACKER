GXX = g++
CFLAGS = -fno-elide-constructors -O0
TAR = matching

matching: main.cpp timer.h rand.h
	
	$(GXX) $(CFLAGS) main.cpp -o $(TAR)
	./matching
	

exe: $(TAR)
	./matching
.PHONY: clean

clean:
	rm -rf *.o
