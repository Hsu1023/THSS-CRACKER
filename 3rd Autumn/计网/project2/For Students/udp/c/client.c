#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>     /* defines STDIN_FILENO, system calls,etc */
#include <sys/types.h>  /* system data type definitions */
#include <sys/socket.h> /* socket specific definitions */
#include <netinet/in.h> /* INET constants and stuff */
#include <arpa/inet.h>  /* IP address conversion stuff */
#include <netdb.h>      /* gethostbyname */

#define MAXBUF 10*1024

int main() {
  int sk;
  struct sockaddr_in server;
  struct hostent *hp;
  char buf[MAXBUF];

  /* create a socket
     IP protocol family (PF_INET)
     UDP (SOCK_DGRAM)
  */

  if ((sk = socket(PF_INET, SOCK_DGRAM, 0)) < 0) {
    printf("Problem creating socket\n");
    exit(1);
  }

  server.sin_family = AF_INET;
  hp = gethostbyname("localhost");

  /* copy the IP address into the sockaddr
     It is already in network byte order
  */

  memcpy(&server.sin_addr.s_addr, hp->h_addr, hp->h_length);

  /* establish the server port number - we must use network byte order! */
  server.sin_port = htons(9876);

  /* read everything possible */
  fgets(buf, MAXBUF, stdin);
  size_t buf_len = strlen(buf);

  /* send it to the echo server */

  int n_sent = sendto(sk, buf, buf_len, 0,
                  (struct sockaddr*) &server, sizeof(server));

  if (n_sent < 0) {
    perror("Problem sending data");
    exit(1);
  }

  if (n_sent != buf_len) {
    printf("Sendto sent %d bytes\n", n_sent);
  }

  /* Wait for a reply (from anyone) */
  int n_read = recvfrom(sk, buf, MAXBUF, 0, NULL, NULL);
  if (n_read < 0) {
    perror("Problem in recvfrom");
    exit(1);
  }

  /* send what we got back to stdout */
  if (write(STDOUT_FILENO, buf, n_read) < 0) {
    perror("Problem writing to stdout");
    exit(1);
  }
  return 0;
}
