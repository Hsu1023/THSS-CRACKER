#include "widget.h"
#include "ui_widget.h"
#include <QVBoxLayout>
#include <QPushButton>

Widget::Widget(QWidget *parent)
    : QDialog(parent)
    , ui(new Ui::Widget)
{
    ui->setupUi(this);
    w1 = new MouseClick;
    w2 = new RandomCreate;
    setFixedSize(600, 480);
    QPushButton * button1 = new QPushButton("鼠标输入",this);
    button1->setFixedSize(250,60);
    button1->setGeometry(180,100,200,50);
    button1->show();
    connect(w1, &MouseClick::widgetShow, this, [=](){show();});
    connect(button1, &QPushButton::clicked, this, [=](){
        w1->show();
        this->hide();
    });
    QPushButton * button2 = new QPushButton("随机生成",this);
    button2->setFixedSize(250,60);
    button2->setGeometry(180,180,200,50);
    button2->show();
    connect(w2, &RandomCreate::widgetShow, this, [=](){show();});
    connect(button2, &QPushButton::clicked, this, [=](){
        w2->show();
        this->hide();
    });

    QPushButton * button3 = new QPushButton("退出程序",this);
    button3->setFixedSize(250,60);
    button3->setGeometry(180,260,200,50);
    button3->show();
    connect(button3, &QPushButton::clicked, this, [=](){
        exit(0);
    });
}

Widget::~Widget()
{
    delete ui;
}

