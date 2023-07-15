#include <sys/socket.h>
#include <netinet/in.h>

#include <unistd.h>
#include <errno.h>

#include <string.h>
#include <memory.h>
#include <stdio.h>

int main(int argc, char **argv) {
	int sockfd;
	struct sockaddr_in addr;
	char sentence[8192];
	int len;
	int p;

	//����socket
	if ((sockfd = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)) == -1) {
		printf("Error socket(): %s(%d)\n", strerror(errno), errno);
		return 1;
	}

	//����Ŀ��������ip��port
	memset(&addr, 0, sizeof(addr));
	addr.sin_family = AF_INET;
	addr.sin_port = 6789;
	if (inet_pton(AF_INET, "127.0.0.1", &addr.sin_addr) <= 0) {			//ת��ip��ַ:���ʮ����-->������
		printf("Error inet_pton(): %s(%d)\n", strerror(errno), errno);
		return 1;
	}

	//������Ŀ����������socket��Ŀ���������ӣ�-- ��������
	if (connect(sockfd, (struct sockaddr*)&addr, sizeof(addr)) < 0) {
		printf("Error connect(): %s(%d)\n", strerror(errno), errno);
		return 1;
	}

	//��ȡ��������
	fgets(sentence, 4096, stdin);
	len = strlen(sentence);
	sentence[len] = '\n';
	sentence[len + 1] = '\0';
	
	//�Ѽ�������д��socket
	p = 0;
	while (p < len) {
		int n = write(sockfd, sentence + p, len + 1 - p);		//write��������֤���е�����д�꣬������;�˳�
		if (n < 0) {
			printf("Error write(): %s(%d)\n", strerror(errno), errno);
			return 1;
 		} else {
			p += n;
		}			
	}

	//ե��socket���յ�������
	p = 0;
	while (1) {
		int n = read(sockfd, sentence + p, 8191 - p);
		if (n < 0) {
			printf("Error read(): %s(%d)\n", strerror(errno), errno);	//read����֤һ�ζ��꣬������;�˳�
			return 1;
		} else if (n == 0) {
			break;
		} else {
			p += n;
			if (sentence[p - 1] == '\n') {
				break;
			}
		}
	}

	//ע�⣺read�����Ὣ�ַ�������'\0'����Ҫ�ֶ����
	sentence[p - 1] = '\0';

	printf("FROM SERVER: %s", sentence);

	close(sockfd);

	return 0;
}
