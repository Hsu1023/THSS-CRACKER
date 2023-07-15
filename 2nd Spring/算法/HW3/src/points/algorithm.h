#ifndef ALGORITHM_H
#define ALGORITHM_H

#include <QObject>
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include "global.h"


class Algorithm : public QObject
{
    Q_OBJECT
public:

    bool keyFlag;
    node key;
    double ans;
    Algorithm(QObject *parent = nullptr);
    double partition(int l, int r);
    void addPoint(int x, int y);
    void calculate();
    void renew();
    void quick_sort(int l, int r);
signals:
};



#endif // ALGORITHM_H
