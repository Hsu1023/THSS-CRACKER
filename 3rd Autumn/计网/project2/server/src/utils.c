#include "utils.h"
#include "commands.h"

void init_client(struct Client * client){
    client->connfd = -1;
    client->datafd = -1;
    client->dataPort = -1;
    client->connectMode = NOCONN;
    client->connecting = false;
    client->cmdstate = BEFORECONNECT;
    memset(client->ip, 0, sizeof(client->ip));
    memset(client->rnfrdir, 0, sizeof(client->rnfrdir));
    strcpy(client->workdir, WORKDIR);
}

bool writeMsg(int fd, char* sentence){
	int p = 0;
    int len = strlen(sentence);
    while (p < len)
    {
        int n = write(fd, sentence + p, len + 1 - p);
		if (n < 0) {
			printf("Error write(): %s(%d)\n", strerror(errno), errno);
			return false;
		} else {
			p += n;
		}
    }
    return true;
}

bool readMsg(int fd, char* sentence){
    int p = 0;
    sentence[0] = 0;
    while (p < 8192)
    {
        int n = recv(fd, sentence + p, 8192 - p, 0);
        if (n < 0) {
            if (errno == EAGAIN || errno == EWOULDBLOCK || errno == EINTR) //连接正常
                continue;
            printf("Error read(): %s(%d)\n", strerror(errno), errno);
            return false;
        }
        else if (n == 0)
        {
            break;
        }
        else
        {
            p += n;
            if (sentence[p - 1] == '\n') {
                break;
            }
        }
    }
    if (strlen(sentence) == 0)
        return false;
    while (sentence[p - 1] == '\r' || sentence[p - 1] == '\n')
    {
        sentence[p - 1] = '\0';
        p--;
    }
    printf("recv: %s\n", sentence);
    return true;
}


int parseVerb(char* msg){
    if (strstr(msg, "USER ") && strstr(msg, "USER ") - msg == 0)
    {
        return USERCMD;
    }
    else if (strstr(msg, "PASS") && strstr(msg, "PASS") - msg == 0){
        return PASSCMD;
    }
    else if (strstr(msg, "QUIT") && strstr(msg, "QUIT") - msg == 0){
        return QUITCMD;
    }
    else if (strstr(msg, "SYST") && strstr(msg, "SYST") - msg == 0){
        return SYSTCMD;
    }
    else if (strstr(msg, "TYPE") && strstr(msg, "TYPE") - msg == 0){
        return TYPECMD;
    }
    else if (strstr(msg, "PORT ") && strstr(msg, "PORT ") - msg == 0){
        return PORTCMD;
    }
    else if (strstr(msg, "PASV") && strstr(msg, "PASV") - msg == 0){
        return PASVCMD;
    }
    else if (strstr(msg, "MKD ") && strstr(msg, "MKD ") - msg == 0){
        return MKDCMD;
    }
    else if (strstr(msg, "CWD ") && strstr(msg, "CWD ") - msg == 0){
        return CWDCMD;
    }
    else if (strstr(msg, "PWD") && strstr(msg, "PWD") - msg == 0){
        return PWDCMD;
    }
    else if (strstr(msg, "RMD ") && strstr(msg, "RMD ") - msg == 0){
        return RMDCMD;
    }
    else if (strstr(msg, "RNFR ") && strstr(msg, "RNFR ") - msg == 0){
        return RNFRCMD;
    }
    else if (strstr(msg, "RNTO ") && strstr(msg, "RNTO ") - msg == 0){
        return RNTOCMD;
    }
    else if (strstr(msg, "LIST") && strstr(msg, "LIST") - msg == 0){
        return LISTCMD;
    }
    else if (strstr(msg, "STOR ") && strstr(msg, "STOR ") - msg == 0){
        return STORCMD;
    }
    else if (strstr(msg, "RETR ") && strstr(msg, "RETR ") - msg == 0){
        return RETRCMD;
    }
    return -1;
}

void intarr2IP(int *ip, char *addr){
    memset(addr, 0, sizeof(char) * 16);
    int p = 0;
    sprintf(addr, "%d", ip[0]);
    p = strlen(addr);
    addr[p] = '.';
    sprintf(addr + p + 1, "%d", ip[1]);
	p += strlen(addr + p + 1) + 1;
	addr[p] = '.';
    sprintf(addr + p + 1, "%d", ip[2]);
	p += strlen(addr + p + 1) + 1;
	addr[p] = '.';
    sprintf(addr + p + 1, "%d", ip[3]);
	p += strlen(addr + p + 1) + 1;
	addr[p] = '\0';
}

void intarr2Port(int *ip, int *port){
    (*port) = ip[0] * 256 + ip[1];
}
char* itoa(int value, char *str){
    sprintf(str, "%d", value);
    return str;
}