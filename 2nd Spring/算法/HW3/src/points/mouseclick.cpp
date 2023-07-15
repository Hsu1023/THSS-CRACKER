#include "mouseclick.h"

MouseClick::MouseClick(QWidget *parent):QDialog (parent)
{
    this->setFixedSize(1600,960);
    start = new QPushButton("开始计算",this);
    start->setFixedSize(140,50);
    start->setGeometry(0,0,140,50);
    connect(start, &QPushButton::clicked,this, [=](){
        al.calculate();
        repaint();
    });

    restart = new QPushButton("重新开始",this);
    restart->setFixedSize(140,50);
    restart->setGeometry(0,50,140,50);
    connect(restart, &QPushButton::clicked,this, [=](){
        al.renew();
        repaint();
    });

    back = new QPushButton("返回上一层",this);
    back->setFixedSize(140,50);
    back->setGeometry(0,100,140,50);
    connect(back, &QPushButton::clicked,this, [=](){
        al.renew();
        this->hide();
        emit widgetShow();
    });
}
void MouseClick::mousePressEvent(QMouseEvent* event)
{
    int x = event->x();
    int y = event->y();
    al.addPoint(x, y);
    repaint();
    qDebug()<<px[n].x<<px[n].y;
}
void MouseClick::paintEvent(QPaintEvent *)
{
    QPainter painter(this);
    painter.setPen(Qt::NoPen);

    for(int i = 1; i <= n; i++)
    {
        painter.setPen(QPen(Qt::blue, 6));
        painter.drawRect(px[i].x, px[i].y,5,5);
    }
    if(al.keyFlag)
    {
        painter.setPen(QPen(Qt::red, 6));
        painter.drawRect(al.key.first.x, al.key.first.y,5,5);
        painter.drawRect(al.key.second.x, al.key.second.y,5,5);
    }

    painter.setPen(Qt::NoPen);
}
