#include "algorithm.h"



bool cmpx(point a, point b)
{
    return (a.x < b.x) || (a.x == b.x && a.y < b.y);
}
bool cmpy(point a, point b)
{
    return (a.y < b.y) || (a.y == b.y && a.x < b.x);
}
inline double dist(const point &a, const point &b)
{
    return sqrt(1LL*(a.x - b.x) * (a.x - b.x) + 1LL*(a.y - b.y) * (a.y - b.y));
}

Algorithm::Algorithm(QObject *parent) : QObject(parent)
{
    renew();
}
void Algorithm::renew()
{
    ans = inf;
    n = 0;
    keyFlag = 0;
}
double Algorithm::partition(int l, int r)
{
    using namespace std;
    if(l == r)
    {
        py[l] = px[l];
        return inf;
    }
    if(r - l == 1) {
        if(cmpy(px[l], px[r])==0)py[l] = px[r], py[r] = px[l];
        else py[l] = px[l], py[r] = px[r];
        double temp = dist(px[l], px[r]);
        if (ans - temp > eps) ans = temp, key = make_pair(px[l], px[r]);
        return temp;
    }
    int mid = (l + r) >> 1;
    double d = min(partition(l, mid), partition(mid + 1, r));

    int cnt = mid + 1;
    double res = d;
    for(int i = l; i <= mid; i++)
    {
        while(cnt < r && py[cnt + 1].y < py[i].y) cnt++;
        for (int j = max(mid + 1, cnt - 3); j <= min(r, cnt + 3); j++)
        {
            double temp = dist(py[i], py[j]);
            if (ans > temp) ans = temp, key = make_pair(py[i], py[j]);
            res = min(res, temp);
        }
    }
    int cnt1 = l, cnt2 = mid + 1;
    cnt = l;
    while(cnt1 <= mid && cnt2 <= r)
    {
        while(cmpy(py[cnt1], py[cnt2]) == 0 && cnt1 <= mid && cnt2 <= r) {aux[cnt++] = py[cnt2]; cnt2++;}
        while(cmpy(py[cnt1], py[cnt2]) == 1 && cnt1 <= mid && cnt2 <= r) {aux[cnt++] = py[cnt1]; cnt1++;}
    }
    while(cnt1 <= mid) {aux[cnt++] = py[cnt1]; cnt1++;}
    while(cnt2 <= r) {aux[cnt++] = py[cnt2]; cnt2++;}
    for(int i = l; i <= r; i++) py[i] = aux[i];
    return res;
}
void Algorithm::addPoint(int x, int y)
{
    n++;
    px[n].x = py[n].x = x;
    px[n].y = py[n].y = y;
}
void Algorithm::quick_sort(int l, int r)
{
    if(r - l < 2)return;
    int h = l;
    point x = px[l + rand()%(r - l + 1)];
    for(int i = l; i <= r; i++)
        if(cmpx(px[i], x))
        {
            point t = px[i];
            px[i] = px[h];
            px[h] = t;
            h++;
        }
    quick_sort(l, h - 1);
    quick_sort(h + 1, r);
}
void Algorithm::calculate()
{
    using namespace std;
    if(n < 2) {keyFlag = false; return;}
    ans = inf;
    srand(time(0));
    quick_sort(1, n);
    partition(1, n);
    if(ans < inf)keyFlag = true;
    else keyFlag = false;
}
