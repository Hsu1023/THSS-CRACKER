#ifndef RAND_H
#define RAND_H

#include <cstdlib>
#include <time.h>
#include <vector>
#include <string>

void pushback(std::vector<int>& v, std::string s)
{    
    for (int i = 0; i < 26; i++)
        v.push_back('a' + i);
    for (int i = 0; i < 26; i++)
        v.push_back('A' + i);
    for (int i = 0; i < 10; i++)
        v.push_back('0' + i);
    for (int i = 0; i < s.length(); i++)
        v.push_back(s[i]);
}

std::string createString(int n)
{
    static int cnt = 0;
    cnt++;
    srand(time(0) + cnt);
    std::vector<int> v;

    pushback(v, ",.;-+*()![]");

    int num = v.size();
    std::string s;

    for (int i = 0; i < n; i++)
        s += v[rand() % num];
    putchar('\n');

    return s;
}
#endif