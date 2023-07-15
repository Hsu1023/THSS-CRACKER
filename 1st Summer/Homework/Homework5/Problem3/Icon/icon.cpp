#include "icon.h"

Icon::Icon(QWidget *parent)
    : QDialog(parent)
{
    // 初始化QPushButton
    button = new QPushButton(this);
    button->resize(150, 150);
    button->setIconSize(QSize(300,300));

    // 将所有图片文件后缀加入dirList
    dirList<<"*.bmp"<<"*.jpg"<<"*.png";

    // 在指定路径下寻找所有dirList内所有后缀文件，并存在dir中
    path = ":/pic/pic/";
    dir = QDir(path);
    dir.setNameFilters(dirList);
    countPic = dir.count();

    // 初始化当前图片
    point = 0;
    button->setIcon(QIcon(path + dir[point]));

    // 将按键点击与翻页函数通过信号与槽相连
    connect(button, &QPushButton::clicked, this, &Icon::nextPic);
}

Icon::~Icon()
{
}
void Icon::nextPic()
{
    // 对于图片的序号操作，使其指向下一个图片，并重置button的icon
    point++;
    if(point >= countPic)
    {
        point = 0;
    }
    button->setIcon(QIcon(path + dir[point]));
}
