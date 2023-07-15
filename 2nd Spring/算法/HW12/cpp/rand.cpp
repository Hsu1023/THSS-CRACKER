#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <vector>

using namespace std;

void pushback(vector<int>& v, char s[], int num)
{    
    for (int i = 0; i < 26; i++)
        v.push_back('a' + i);
    for (int i = 0; i < 26; i++)
        v.push_back('A' + i);
    for (int i = 0; i < 10; i++)
        v.push_back('0' + i);
    for (int i = 0; i < num; i++)
        v.push_back(s[i]);
}

int main()
{
    srand(time(0));
    vector<int> v;

    pushback(v, ",./;-+*()!'", 12);

    int num = v.size();
    freopen("data.txt", "w", stdout);
    int n = 10000000;
    int m = 100000;
    for (int i = 0; i < n; i++)
        putchar(v[rand() % num]);
    putchar('\n');

    string s;
    for (int i = 0; i < m/4; i++)
        s += v[rand()%num];
    cout << s + s + s + s;
}