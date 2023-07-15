#include "temperature.h"
#include <stdlib.h>

struct Station
{
    int x, y, t;
} a[50000];

int b[50000];

struct Res
{
    long long t;
    int cnt;
    Res(long long t_, int cnt_)
    {
        t = t_;
        cnt = cnt_;
    }
    Res operator+(Res y)
    {
        return Res(this->t + y.t, this->cnt + y.cnt);
    }
};

struct node
{
    int idx, d;
    node *lchd;
    node *rchd;
    node(int idx_, int d_)
    {
        idx = idx_;
        d = d_;
        lchd = nullptr;
        rchd = nullptr;
    }
};

int cmp1(const void *x, const void *y)
{
    return a[*(int *)x].x - a[*(int *)y].x;
}

int cmp2(const void *x, const void *y)
{
    return a[*(int *)x].y - a[*(int *)y].y;
}

struct kdTree
{
    node *root;

    void build(node *&p, int l, int r, bool d)
    {
        if (r == l)
        {
            return;
        }
        else if (r - l == 1)
        {
            p = new node(l, d);
            return;
        }
        d ? qsort(b + l, r - l, sizeof(int), cmp2) : qsort(b + l, r - l, sizeof(int), cmp1);
        // quick_sort(l, r, d);
        int m = (l + r) / 2;
        // printf("%d\n", m);

        p = new node(m, d);

        build(p->lchd, l, m, 1 - d);

        build(p->rchd, m + 1, r, 1 - d);
        // printf("%d\n", this->root->idx);
    }

    Res find(int &x1, int &y1, int &x2, int &y2, node *p)
    {
        if (p == nullptr)
        {
            return Res(0, 0);
        }
        else
        {
            Station tp = a[b[p->idx]];
            if ((!p->d && x1 > tp.x) || (p->d && y1 > tp.y))
            {
                return find(x1, y1, x2, y2, p->rchd);
            }
            else if ((!p->d && x2 < tp.x) || (p->d && y2 < tp.y))
            {
                return find(x1, y1, x2, y2, p->lchd);
            }
            else
            {
                if (!p->d)
                {
                    Res lres = find(x1, y1, tp.x, y2, p->lchd);
                    Res rres = find(tp.x, y1, x2, y2, p->rchd);
                    if (tp.y >= y1 && tp.y <= y2)
                    {
                        return lres + rres + Res(tp.t, 1);
                    }
                    else
                    {
                        return lres + rres;
                    }
                }
                else
                {
                    Res lres = find(x1, y1, x2, tp.y, p->lchd);
                    Res rres = find(x1, tp.y, x2, y2, p->rchd);
                    if (tp.x >= x1 && tp.x <= x2)
                    {
                        return lres + rres + Res(tp.t, 1);
                    }
                    else
                    {
                        return lres + rres;
                    }
                }
            }
        }
    }
};

int main()
{
    int n = GetNumOfStation();
    for (int i = 0; i < n; i++)
    {
        GetStationInfo(i, &(a[i].x), &(a[i].y), &(a[i].t));
        b[i] = i;
    }
    kdTree tree;
    tree.build(tree.root, 0, n, 0);
    int x1, x2, y1, y2;
    while (GetQuery(&x1, &y1, &x2, &y2))
    {
        Res res = tree.find(x1, y1, x2, y2, tree.root);

        res.cnt ? Response(res.t / res.cnt) : Response(0);
        // printf("%d\n", tree.find(x1, y1, x2, y2, tree.root));
    }
    // printf("%d", tree.root->idx);

    return 0;
}