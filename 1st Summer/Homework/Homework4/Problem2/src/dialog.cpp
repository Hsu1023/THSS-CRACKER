#include "dialog.h"
#include <QLayout>

Dialog::Dialog(QWidget *parent)
    : QDialog(parent)
{
    //设置水平布局，将摄氏与华氏仪表盘并列放置
    QHBoxLayout *hBoxLayout = new QHBoxLayout(this);
    hBoxLayout->addWidget(m_tempConverter.m_celsius);
    hBoxLayout->addWidget(m_tempConverter.m_fahrenheit);
    setLayout(hBoxLayout);
}



