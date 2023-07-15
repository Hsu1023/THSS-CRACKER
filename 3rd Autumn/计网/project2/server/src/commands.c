#include "commands.h"
#include "utils.h"

bool ActiveConnect(struct Client *client){
	if (client->connecting){
		return true;
	}
	if ((client->datafd = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)) == -1)
	{
		printf("Error socket(): %s(%d)\n", strerror(errno), errno);
		return false;
	}
	struct sockaddr_in addr;
	memset(&addr, 0, sizeof(addr));
	addr.sin_family = AF_INET;
	addr.sin_port = htons(client->dataPort);
	if (inet_pton(AF_INET, client->ip, &addr.sin_addr) <= 0) {			
		printf("Error inet_pton(): %s(%d)\n", strerror(errno), errno);
		return false;
	}
	if (connect(client->datafd, (struct sockaddr*)&addr, sizeof(addr)) < 0) {
		printf("Error connect(): %s(%d)\n", strerror(errno), errno);
		return false;
	}
	printf("Successfully switch to PORT\n");
	client->connecting = true;
	return true;
}
bool ClientConnect(struct Client *client){
	if (client->connecting){
		return true;
	}
	if(client->connectMode == PASV){
		int tempfd;
		if ((tempfd = accept(client->datafd, NULL, NULL)) == -1)
		{
			printf("Error accept(): %s(%d)\n", strerror(errno), errno);
			return false;
		}
		close(client->datafd);
		client->datafd = tempfd;
		return true;
	}
	if(client->connectMode == PORT){
		return ActiveConnect(client);
	}
	return false;
}

void closeAll(struct Client *client){
	if(client->datafd != -1){
		close(client->datafd);
	}
	client->datafd = -1;
	client->connecting = false;
}

void *runcmd(void *args)
{
	struct Client *client = (struct Client *)args;
	char sentence[8092];
	while (1)
	{
		if (!readMsg(client->connfd, sentence))
		{
			printf("A client disconnect from server!\n");
			break;
		}
		int verb = parseVerb(sentence);
		char *msg = NULL;
		if (verb == USERCMD){
			msg = sentence + 5;
			if (strcmp(msg, "anonymous") == 0){
				printf("User anonymous matches!\n");
				writeMsg(client->connfd, "331 Anonymous access allowed, send identity (e-mail name) as password.\r\n");
			}
			else{
				writeMsg(client->connfd, "500 Username should be anonymous.\r\n");
			}
			client->cmdstate = BEFOREPASS;
		}
		else if (verb == PASSCMD){
			if (client->cmdstate != BEFOREPASS){
				writeMsg(client->connfd, "503 Login with USER first.\r\n");
				continue;
			}
			msg = sentence + 5;
			writeMsg(client->connfd, "230 User logged in.\r\n");
			client->cmdstate = WAITINGVERB;
		}
		else if (verb == QUITCMD){
			if (strlen(sentence) == 4)
			{
				writeMsg(client->connfd, "221 Goodbye.\r\n");
				client->cmdstate = WAITINGVERB;
				break;
			}
			else{
				writeMsg(client->connfd, "501 QUIT Invalid number of parameters.\r\n");
			}
		}
		else if (verb == SYSTCMD){
			writeMsg(client->connfd, "215 UNIX Type: L8\r\n");
		}
		else if (verb == TYPECMD){
			msg = sentence + 5;
			if (msg[0] == 'I' && strlen(msg) == 1){
				writeMsg(client->connfd, "200 Type set to I.\r\n");
			}
		}
		else if (verb == PORTCMD){
			if (client->cmdstate == BEFOREUSER || client->cmdstate == BEFOREPASS)
				writeMsg(client->connfd, "530 Please login with USER and PASS.\r\n");
			msg = sentence + 5;
			int ip[6] = {0,0,0,0,0,0};
			int temp = 0, p = 0, len = strlen(msg);
			bool flag = true;
			while (p < len)
			{
				if (msg[p] == ',') {
					if ((p == 0 || msg[p - 1] != 'n') && p != len - 1)
						temp++;
					else {
						printf("a\n");
						flag = false;
						break;
					}
				}
				else if (msg[p] <= '9' && msg[p] >= '0'){
					ip[temp] = ip[temp] * 10 + msg[p] - '0';
					if (ip[temp] > 255){
						flag = false;
						break;
					}
				}
				else{
					flag = false;
					break;
				}
				p++;
			}
			if (temp != 5){
				flag = false;
			}
			if (!flag){
				writeMsg(client->connfd, "501 Invalid number of parameters.\r\n");
				continue;
			}

			intarr2IP(ip, client->ip);
			intarr2Port(ip + 4, &(client->dataPort));
			closeAll(client);
			client->connectMode = PORT;
			client->connecting = false;
			writeMsg(client->connfd, "200 PORT command successful.\r\n");
		}
		else if (verb == PASVCMD)
		{
			if (client->cmdstate == BEFOREUSER || client->cmdstate == BEFOREPASS)
				writeMsg(client->connfd, "530 Please login with USER and PASS.\r\n");
			if ((client->datafd = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)) == -1) {
				printf("Error socket(): %s(%d)\n", strerror(errno), errno);
				writeMsg(client->connfd, "500");
				continue;
			}
			int trial = 0;
			while (trial < 100)
			{
				trial++;
				client->dataPort = rand() % 45535 + 20000;
				struct sockaddr_in addr;
				//设置本机的ip和port
				memset(&addr, 0, sizeof(addr));
				addr.sin_family = AF_INET;
				addr.sin_port = htons(client->dataPort);

				if (inet_pton(AF_INET, "127.0.0.1", &addr.sin_addr) == -1) {			
					printf("Error inet_pton(): %s(%d)\n", strerror(errno), errno);
					continue;
				}
				//将本机的ip和port与socket绑定
				if (bind(client->datafd, (struct sockaddr*)&addr, sizeof(addr)) == -1) {
					printf("Error bind(): %s(%d)\n", strerror(errno), errno);
					continue;
				}
				break;
			}

			//开始监听socket
			if (listen(client->datafd, 10) == -1) {
				printf("Error listen(): %s(%d)\n", strerror(errno), errno);
				writeMsg(client->connfd, "500");
				continue;
			}
			
			client->connectMode = PASV;
			client->connecting = false;
			char res_msg[100];
			sprintf(res_msg, "227 Entering Passive Mode (127,0,0,1,%d,%d).\r\n", client->dataPort / 256, client->dataPort % 256);
			writeMsg(client->connfd, res_msg);
		}
		else if (verb == MKDCMD){
			if (client->cmdstate == BEFOREUSER || client->cmdstate == BEFOREPASS)
				writeMsg(client->connfd, "530 Please login with USER and PASS.\r\n");
			chdir(client->workdir);
			msg = sentence + 4;
			if(strlen(msg) == 0){
				writeMsg(client->connfd, "550 The system cannot find the path specified.\r\n");
				continue;
			}
			if(mkdir(msg, S_IRWXU | S_IRWXO)){
				writeMsg(client->connfd, "550 The system cannot find the path specified.\r\n");
				continue;
			}
			char res_msg[200];
			sprintf(res_msg, "257 \"%s\" directory created.\r\n", msg);
			writeMsg(client->connfd, res_msg);
		}
		else if (verb == CWDCMD){
			if (client->cmdstate == BEFOREUSER || client->cmdstate == BEFOREPASS)
				writeMsg(client->connfd, "530 Please login with USER and PASS.\r\n");
			chdir(client->workdir);
			msg = sentence + 4;
			if(strlen(msg) == 0){
				writeMsg(client->connfd, "550 The system cannot find the path specified.\r\n");
				continue;
			}
			if(chdir(msg)){
				writeMsg(client->connfd, "501 Invalid number of parameters.\r\n");
				continue;
			}
			getcwd(client->workdir, sizeof(client->workdir));
			writeMsg(client->connfd, "250 CWD command successful.\r\n");
		}
		else if (verb == PWDCMD){
			if (client->cmdstate == BEFOREUSER || client->cmdstate == BEFOREPASS)
				writeMsg(client->connfd, "530 Please login with USER and PASS.\r\n");
			chdir(client->workdir);
			msg = sentence + 3;
			if(strlen(msg) != 0){
				writeMsg(client->connfd, "501 Invalid number of parameters.\r\n");
				continue;
			}
			char res_msg[130];
			sprintf(res_msg, "257 \"%s\" is current directory.\r\n", client->workdir);
			writeMsg(client->connfd, res_msg);
		}
		else if (verb == RMDCMD){
			if (client->cmdstate == BEFOREUSER || client->cmdstate == BEFOREPASS)
				writeMsg(client->connfd, "530 Please login with USER and PASS.\r\n");
			chdir(client->workdir);
			msg = sentence + 4;
			if(strlen(msg) == 0){
				writeMsg(client->connfd, "501 Invalid number of parameters.\r\n");
				continue;
			}
			if(rmdir(msg)){
				writeMsg(client->connfd, "The directory is not empty.\r\n");
				continue;
			}
			writeMsg(client->connfd, "250 RMD command successful.\r\n");
		}
		else if (verb == RNFRCMD){
			if (client->cmdstate == BEFOREUSER || client->cmdstate == BEFOREPASS)
				writeMsg(client->connfd, "530 Please login with USER and PASS.\r\n");
			msg = sentence + 5;
			if (strlen(msg) == 0)
			{
				writeMsg(client->connfd, "503 Bad sequence of commands.\r\n");
				continue;
			}
			chdir(client->workdir);
			strcpy(client->rnfrdir, msg);
			writeMsg(client->connfd, "350 Requested file action pending further information.\r\n");
		}
		else if (verb == RNTOCMD){
			if (client->cmdstate == BEFOREUSER || client->cmdstate == BEFOREPASS)
				writeMsg(client->connfd, "530 Please login with USER and PASS.\r\n");
			msg = sentence + 5;
			if (strlen(client->rnfrdir) == 0)
			{
				writeMsg(client->connfd, "503 Bad sequence of commands.\r\n");
				continue;
			}
			if (strlen(msg) == 0)
			{	
				writeMsg(client->connfd, "501 Invalid number of parameters.\r\n");
				continue;
			}
			if(rename(client->rnfrdir, msg)){
				writeMsg(client->connfd, "501 RNTO command failed.\r\n");
				continue;
			}
			memset(client->rnfrdir, 0, sizeof(client->rnfrdir));
			writeMsg(client->connfd, "250 RNTO command successful.\r\n");
		}
		else if (verb == LISTCMD){
			chdir(client->workdir);
			msg = sentence + 4;
			struct dirent * ptr;
			DIR *dir;
			if (msg[0] == '\0')
			{
				dir = opendir(".");
			}
			else{
				dir = opendir(msg);
			}
			if(!dir){
				writeMsg(client->connfd, "500 Pathname error.\r\n");
			}	
			writeMsg(client->connfd, "150 Opening ASCII mode data connection.\r\n");
			if (!ClientConnect(client))
			{
				writeMsg(client->connfd, "425 Cannot open data connection.\r\n");
				continue;
			}
			writeMsg(client->connfd, "125 Data connection already open; Transfer starting.\r\n");
			char res_char[8192];
			char file_len[64];
			while ((ptr = readdir(dir)) != NULL)
			{
				memset(res_char, 0, 8192);
				memset(file_len, 0, 64);	
				itoa(ptr->d_reclen, file_len);
				if (strlen(res_char) + strlen(ptr->d_name)+ strlen(file_len) + 3 < 8192)
				{
					strcat(res_char, ptr->d_name);
					strcat(res_char, "\t\t");
					strcat(res_char, file_len);
					strcat(res_char, "\r\n");
				}
				writeMsg(client->datafd, res_char);
			}
			writeMsg(client->datafd, "\0");
			printf("%s\n", res_char);
			writeMsg(client->connfd, "226 Transfer complete.\r\n");
			chdir(client->workdir);
			closeAll(client);
			client->connectMode = NOCONN;
		}
		else if (verb == STORCMD){
			chdir(client->workdir);
			msg = sentence + 5;
			if (strlen(msg) == 0){
				writeMsg(client->connfd, "501 Parameter error.\r\n");
				continue;
			}
			writeMsg(client->connfd, "150 Opening ASCII mode data connection.\r\n");
			if (!ClientConnect(client))
			{
				writeMsg(client->connfd, "425 Cannot open data connection.\r\n");
				continue;
			}
			writeMsg(client->connfd, "125 Data connection already open; Transfer starting.\r\n");
			FILE *fp;
			fp = fopen(msg, "wb+");
			char res_data[8192];
			if (fp)
			{
				while(true){
					int n = read(client->datafd, res_data, 8192);
					if (n < 0) {
						if (errno == EAGAIN || errno == EWOULDBLOCK || errno == EINTR)//连接正常
							continue;
						printf("Error read(): %s(%d)\n", strerror(errno), errno);
						return false;
					}
					else if (n == 0)
						break;
					fwrite(res_data, 1, n, fp);
				}
    		}
			else
			{
         		writeMsg(client->connfd, "500 Open filename error.\r\n");
				continue;
			}
			fclose(fp);
			chdir(client->workdir);
			closeAll(client);
			client->connectMode = NOCONN;
		}
		else if (verb == RETRCMD){
			chdir(client->workdir);
			msg = sentence + 5;
			if (strlen(msg) == 0){
				writeMsg(client->connfd, "501 Parameter error.\r\n");
				continue;
			}
			writeMsg(client->connfd, "150 Opening ASCII mode data connection.\r\n");
			if (!ClientConnect(client))
			{
				writeMsg(client->connfd, "425 Cannot open data connection.\r\n");
				continue;
			}
			writeMsg(client->connfd, "125 Data connection already open; Transfer starting.\r\n");
			FILE *fp;
			fp = fopen(msg, "rb+");
			char res_data[8192];
			if (fp)
			{
				while (true){
					memset(res_data, 0, 8192);
					if(!fgets(res_data, 8191, fp))
						break;
					writeMsg(client->datafd, res_data);
				}
    		}
			else
			{
         		writeMsg(client->connfd, "500 Open filename error.\r\n");
				continue;
			}
			fclose(fp);
			chdir(client->workdir);
			closeAll(client);
			client->connectMode = NOCONN;
		}
		else if (verb < 0){
			writeMsg(client->connfd, "500 Command not understood.\r\n");
		}
	}
	closeAll(client);
	free(client);
	return NULL;
}