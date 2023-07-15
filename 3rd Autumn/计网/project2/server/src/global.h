#ifndef GLOBAL_H
#define GLOBAL_H

#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <sys/types.h>
#include <sys/stat.h>

#include <unistd.h>
#include <errno.h>

#include <ctype.h>
#include <string.h>
#include <memory.h>
#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <dirent.h>
#include <pthread.h>

#define NOCONN 0
#define PASV 1
#define PORT 2

#define USERCMD 0
#define PASSCMD 1
#define QUITCMD 2
#define SYSTCMD 3
#define TYPECMD 4
#define PORTCMD 5
#define PASVCMD 6
#define MKDCMD 7
#define CWDCMD 8
#define PWDCMD 9
#define RMDCMD 10
#define RNFRCMD 11
#define RNTOCMD 12
#define LISTCMD 13
#define STORCMD 14
#define RETRCMD 15

#define BEFORECONNECT 0
#define BEFOREUSER 1
#define BEFOREPASS 2
#define WAITINGVERB 3

#define WORKDIR "/ftp_tmp"


struct Client{
	int connfd;
	int datafd;
	int dataPort;
	int connectMode;
	bool connecting;
    int cmdstate;
    char ip[20];
	char workdir[100];
	char rnfrdir[100];
};

#endif