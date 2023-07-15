#include "utils.h"
#include "global.h"
#include "commands.h"

int listenfd = 0;
struct sockaddr_in addr;

bool init_server(){
	mkdir(WORKDIR, S_IRWXU | S_IRWXO);
	chdir(WORKDIR);

	// 创建socket
	if ((listenfd = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)) == -1) {
		printf("Error socket(): %s(%d)\n", strerror(errno), errno);
		return false;
	}

	//设置本机的ip和port
	memset(&addr, 0, sizeof(addr));
	addr.sin_family = AF_INET;
	addr.sin_port = htons(21);
	
	if (inet_pton(AF_INET, "127.0.0.1", &addr.sin_addr) == -1) {			
		printf("Error inet_pton(): %s(%d)\n", strerror(errno), errno);
		return false;
	}

	//将本机的ip和port与socket绑定
	if (bind(listenfd, (struct sockaddr*)&addr, sizeof(addr)) == -1) {
		printf("Error bind(): %s(%d)\n", strerror(errno), errno);
		return false;
	}

	//开始监听socket
	if (listen(listenfd, 10) == -1) {
		printf("Error listen(): %s(%d)\n", strerror(errno), errno);
		return false;
	}
	return true;
}

void wait_client(){
	struct Client *client;
	client = (struct Client *)calloc(1, sizeof(struct Client));
	init_client(client);

	//等待client的连接 -- 阻塞函数
	if ((client->connfd = accept(listenfd, NULL, NULL)) == -1) {
		printf("Error accept(): %s(%d)\n", strerror(errno), errno);
		free(client);
		return;
	}
	printf("A client connect to server successfully!\n");
	writeMsg(client->connfd, "215 UNIX Type: L8\r\n");
	client->cmdstate = BEFOREUSER;
	pthread_t tid;
	if((pthread_create(&tid, NULL, runcmd, (void*)(client)))!=0){
		fprintf(stderr,"pthread create error\n");
		free(client);
		return;
	}
}

int main(int argc, char **argv) {

	while(!init_server());

	while (1) {
		wait_client();
	}
	close(listenfd);
}

