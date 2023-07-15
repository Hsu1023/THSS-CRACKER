#ifndef MOUSECLICK_H
#define MOUSECLICK_H

#include <QWidget>
#include <QDialog>
#include <QPushButton>
#include <QEvent>
#include <QPen>
#include <QPainter>
#include <QMouseEvent>
#include <QDebug>
#include "algorithm.h"

class MouseClick: public QDialog
{
    Q_OBJECT
public:
    MouseClick(QWidget* parent = nullptr);
    void mousePressEvent(QMouseEvent* event) override;
    void paintEvent(QPaintEvent* event)override;
    Algorithm al;
    QPushButton *start, *restart, *back;
signals:
    void widgetShow();
};

#endif // MOUSECLICK_H
