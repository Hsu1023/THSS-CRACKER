all: server

clean:
	rm server

server: server.c utils.c utils.h global.h commands.c commands.h
	gcc -pthread -o server -Wall server.c utils.c commands.c
