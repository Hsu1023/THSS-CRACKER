#include "randomcreate.h"
#include <algorithm>
RandomCreate::RandomCreate(QWidget *parent): QDialog(parent)
{
    renew();
    setFixedSize(600, 480);
    edit = new QLineEdit(this);
    edit->setGeometry(200,100,200,40);
    QLabel *l = new QLabel(this);
    l->setText("请输入随机生成的点的个数：");
    l->setGeometry(200,50,200,50);

    start = new QPushButton("生成",this);
    start->setFixedSize(200,50);
    start->setGeometry(200,180,200,50);
    QLabel *label = new QLabel(this);
    label->setFixedSize(500,150);
    label->setGeometry(50,330,500,500);
    connect(start, &QPushButton::clicked,this, [=](){
        int num = 0;
        QString st = edit -> text();
        num = st.toInt();
        if(num < 2)return;
        createPoints(num);
        st = "已生成"+QString::number(num)+"个点，前"+QString::number(std::min(num,10))+"个点为：\n";
        for(int i = 1; i<=std::min(num, 10); i++)st+="("+QString::number(px[i].x)+
                                ","+QString::number(px[i].y)+")"+(i%3?" ":"\n");
        al.calculate();
        st+="\n\n其中最近的两个点为("+QString::number(al.key.first.x)+
                ","+QString::number(al.key.first.y)+")和("+QString::number(al.key.second.x)+
                ","+QString::number(al.key.second.y)+")\n  二者距离为"+QString::number(al.ans);
        label->setText(st);
        qDebug()<<QString::number(num);
    });

    restart = new QPushButton("重新开始",this);
    restart->setFixedSize(200,50);
    restart->setGeometry(200,230,200,50);
    connect(restart, &QPushButton::clicked,this, [=](){
        renew();
        label->setText("");
    });

    back = new QPushButton("返回上一层",this);
    back->setFixedSize(200,50);
    back->setGeometry(200,280,200,50);
    connect(back, &QPushButton::clicked,this, [=](){
        renew();
        this->hide();
        emit widgetShow();
    });
}
void RandomCreate::createPoints(int num)
{
    n = num;
    // 设置伪随机种子
    srand(time(0));
    int range = 10000000;
    for(int i = 1; i<= n; i++)
        px[i].x=py[i].y=rand()*rand()%range-range/2,
        px[i].y=py[i].y=rand()*rand()%range-range/2;

}
void RandomCreate::renew()
{
    n = 0;
}
