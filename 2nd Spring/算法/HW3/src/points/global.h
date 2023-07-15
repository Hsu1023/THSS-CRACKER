#ifndef GLOBAL_H
#define GLOBAL_H

#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <utility>
struct point
{
    int x, y;
    bool operator == (const point &a){
        return x == a.x && y == a.y;
    }
    point():x(0), y(0){}
};
typedef std::pair<point, point> node;

const int MAXN = 1000005;
const int inf = 1e9;
const double eps = 1e-10;
extern point px[MAXN], py[MAXN], aux[MAXN];
extern int n;
#endif // GLOBAL_H
