#define _CRT_SECURE_NO_DEPRECATE
#include <cstdio>
#include <cstring>
#include <cstdlib>
#include <iostream>
#include <vector>
#include <windows.h>
#include <map>
#include <fstream>

#include "timer.h"
#include "rand.h"

using namespace std;

vector<int> brutal(const string& s, const string& p)
{
    vector<int> res;
    res.clear();
    int len1 = s.length();
    int len2 = p.length();
    for (int i = 0; i < len1; i++)
        for (int j = 0; j < len2; j++)
        {
            if (s[i + j] != p[j])
                break;
            if (j == len2 - 1)
                res.push_back(i);
        }
    return res;
}

vector<int> kmp(const string& ss, const string& pp)
{
    vector<int> res;
    res.clear();

    int len1 = ss.length();
    int len2 = pp.length();

    string s = " " + ss;
    string p = " " + pp;

    int* next = new int[len2 + 1];
    memset(next, 0, sizeof(int) * (len2 + 1));

    int t = 0;
    for (int i = 2; i <= len2; i++)
    {
        while (t && p[i] != p[t + 1])
            t = next[t];
        if (p[i] == p[t + 1])
            t++;
        next[i] = t;
    }

    t = 0;
    for (int i = 1; i <= len1; i++)
    {
        while (t && s[i] != p[t + 1])
            t = next[t];
        if (s[i] == p[t + 1])
            t++;
        if (t == len2)
        {
            res.push_back(i - len2);
            t = next[t];
        }
    }
    delete[] next;
    return res;
}
void badChar(const string& p, vector<int>& bc)
{
    int len = p.length();
    for (int i = 0; i < 256; i++)
        bc[i] = len;
    for (int i = 0; i < len; i++) // 以右端为下标0
        bc[p[i]] = len - 1 - i;
}
void Osuff(const string& p, vector<int>& osuff)
{
    int len = p.length();
    osuff.resize(len);
    osuff[len - 1] = len;
    int last = len - 1;
    int fail = len - 1;
    for (int i = len - 2; i >= 0; i--)
    {
        if (i > fail)
        {
            if (osuff[len - 1 - last + i] < i - fail)
                osuff[i] = osuff[len - 1 - last + i];
            else
            {
                while (fail >= 0 && p[len - 1 - last + fail] == p[fail])
                    fail--;
                last = i;
                osuff[i] = last - fail;
            }
        }
        else
        {
            fail = i;
            while (fail >= 0 && p[len - 1 - i + fail] == p[fail])
                fail--;
            last = i;
            osuff[i] = last - fail;
        }
    }
}
void goodSuffix(const string& p, vector<int>& gs)
{
    int len = p.length();
    vector<int> osuff;
    Osuff(p, osuff); // 0为下标
    for (int i = 0; i < len; i++)
        gs[i] = len;
    int j = 0;
    for (int i = len - 2; i >= 0; i--)
    {
        if (osuff[i] == i + 1)
            while (len - 1 - osuff[i] > j)
            {
                if (gs[j] == len)
                    gs[j] = len - i - 1;
                j++;
            }
    }
    for (int i = 0; i < len - 1; i++)
        gs[len - 1 - osuff[i]] = len - 1 - i;
}
vector<int> BM(const string& s, const string& p)
{
    vector<int> res;
    res.clear();
    int len1 = s.length();
    int len2 = p.length();
    vector<int> bc;
    bc.resize(256);
    badChar(p, bc);
    vector<int> gs;
    gs.resize(len2);
    goodSuffix(p, gs);

    int i = 0;
    while (i <= len1 - len2)
    {
        int j = len2 - 1;
        while (j >= 0 && s[i + j] == p[j])
            j--;
        if (j < 0)
        {
            res.push_back(i);
            i += gs[0];
        }
        else i += max(gs[j], bc[s[i + j]] - (len2 - 1 - j));
    }
    return res;
}
/*
vector<int> DFA(const string& s, const string& p)
{
    vector<int> res;
    res.clear();
    int len1 = s.length();
    int len2 = p.length();

    int *next = new int[len2];
    memset(next, 0, sizeof (int) * len2);
    int **t = new int*[len2 + 1];

    int dic[256];
    memset(dic, 0, sizeof (int) * 256);
    int sigma = 0;

    for (int i = 0; i < len2; i++)
        dic[p[i]] = 1;
    for (int i = 0; i < 256; i++)
        if(dic[i])
            dic[i] = sigma++;


    for (int i = 0; i <= len2; i++)
        t[i] = new int[sigma],
        memset(t[i], 0, sizeof(int) * sigma);

    next[0] = -1;
    int k = -1;
    for (int i = 1; i < len2; i++)
    {
        while(k >= 0 && p[i] != p[k + 1])
            k = next[k];
        if(p[i] == p[k + 1])
            k++;
        next[i] = k;
    }

    for (int i = 0; i <= len2; i++)
    {
        if(i > 0)
            for (int j = 0; j < sigma; j++)
                t[i][j] = t[next[i - 1] + 1][j];
            if (i < len2)
                    t[i][dic[p[i]]] = i + 1;
    }

    int state = 0;
    for (int i = 0; i < len1; i++)
    {
        state = t[state][dic[s[i]]];
        if (state == len2)
            res.push_back(i - len2 + 1);
    }

    delete[] next;
    for (int i = 0; i <= len2; i++)
        delete[] t[i];
    delete[] t;

    return res;
}
*/
void test(const string& s, const string& p)
{
    FILE* f = freopen("result.txt", "w", stdout);
    Timer t;
    t.begin();
    vector<int>res = brutal(s, p);
    printf("暴力枚举用时：%d微秒\n匹配结果为：", t.end());
    if (res.size() == 0)printf("空");
    for (int i = 0; i < res.size(); i++)printf("%d ", res[i]);
    putchar('\n');

    t.begin();
    res = kmp(s, p);
    printf("KMP算法用时：%d微秒\n匹配结果为：", t.end());
    if (res.size() == 0)printf("空");
    for (int i = 0; i < res.size(); i++)printf("%d ", res[i]);
    putchar('\n');
    /*
    t.begin();
    res = DFA(s, p);
    printf("DFA算法枚举用时：%d微秒\n匹配结果为：", t.end());
    if(res.size() == 0)printf("空");
    for (int i = 0; i < res.size(); i++)printf("%d ", res[i]);
    putchar('\n');
    */
    t.begin();
    res = BM(s, p);
    printf("BM算法用时：%d微秒\n匹配结果为：", t.end());
    if (res.size() == 0)printf("空");
    for (int i = 0; i < res.size(); i++)printf("%d ", res[i]);
    putchar('\n');
    //fclose(f);
    freopen("CON", "w", stdout);
    printf("结果已经保存在exe文件的同级目录下！\n");
}
int main()
{
    string s, p;

    while (true)
    {
        printf("请选择输入来源：\n0-随机生成  1-打开文件 2-控制台输入\n");
        int op;
        scanf("%d", &op);
        string s, p;
        if (op == 0)
        {
            int n, m;
            printf("请输入文本串的大小：");
            scanf("%d", &n);
            printf("请输入模板串的大小：");
            scanf("%d", &m);
            if (n <= 0 || m <= 0)
                continue;
            s = createString(n);
            p = createString(m);
            test(s, p);
            break;
        }
        else if (op == 1)
        {
            printf("请输入文件绝对路径：");
            char filename[100];
            cin >> filename;
            ifstream fin;
            fin.open(filename, ios::in);
            if (fin.fail())
            {
                printf("打开文件错误，请重新输入！\n");

                break;
            }

            fin >> s >> p;
            test(s, p);
            fin.close();
            break;
        }
        else if (op == 2)
        {
            printf("请输入文本串：");
            cin >> s;

            printf("请输入模板串：");
            cin >> p;

            test(s, p);
            break;
        }
    }
    system("pause");
    return 0;
}