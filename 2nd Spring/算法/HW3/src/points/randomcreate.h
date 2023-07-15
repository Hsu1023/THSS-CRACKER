#ifndef RANDOMCREATE_H
#define RANDOMCREATE_H

#include <QWidget>
#include <QDialog>
#include <QPushButton>
#include <QDebug>
#include <QLineEdit>
#include <QLabel>
#include "global.h"
#include "algorithm.h"

class RandomCreate: public QDialog
{
    Q_OBJECT
public:
    RandomCreate(QWidget *parent = nullptr);
    void createPoints(int num);
    void renew();
    Algorithm al;
    QPushButton *start, *restart, *back;
    QLineEdit *edit;
signals:
    void widgetShow();
};

#endif // RANDOMCREATE_H
