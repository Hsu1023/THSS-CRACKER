#ifndef UTILS_H
#define UTILS_H

#include "global.h"

void init_client(struct Client *client);

bool writeMsg(int fd, char *sentence);

bool readMsg(int fd, char *sentence);

int parseVerb(char *msg);

void intarr2IP(int *ip, char *addr);

void intarr2Port(int *ip, int *addr);

char *itoa(int value, char *str);

#endif