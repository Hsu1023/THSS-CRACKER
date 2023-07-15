#include "datawidget.h"

#include <QWidget>
#include <QLayout>
#include <QLabel>
#include <QPushButton>
#include <QLineEdit>
#include <QDebug>
#include <QMessageBox>
#include <QValidator>
#include <QIntValidator>

DateWidget::DateWidget(QDialog *parent)
    : QDialog(parent)
{
    // 初始化布局
    QGridLayout *gLayout = new QGridLayout;
    gLayout->setContentsMargins(100, 100, 100, 100);

    // 输出“请输入日期：”的QLabel
    QLabel *label0 = new QLabel("请输入日期：",this);
    gLayout->addWidget(label0, 0, 0);

    // 输入年份的edit对应的布局设置
    yearEdit = new QLineEdit(this);
    yearEdit->setFixedSize(100, 25);
    gLayout->addWidget(yearEdit, 1, 0);
    QLabel *label1 = new QLabel("年",this);
    gLayout->addWidget(label1, 1, 1);

    // 输入月份的edit对应的布局设置
    monthEdit = new QLineEdit(this);
    monthEdit->setFixedSize(50, 25);
    gLayout->addWidget(monthEdit, 1, 2);
    QLabel *label2 = new QLabel("月",this);
    gLayout->addWidget(label2, 1, 3);

    // 输入日期的edit对应的布局设置
    dayEdit = new QLineEdit(this);
    dayEdit->setFixedSize(50, 25);
    gLayout->addWidget(dayEdit, 1, 4);
    QLabel *label3 = new QLabel("日",this);
    gLayout->addWidget(label3, 1, 5);

    // OK键及相关布局
    QPushButton *pushButton = new QPushButton("OK",this);
    pushButton->setFixedSize(50, 25);
    gLayout->addWidget(pushButton, 3, 2);

    setLayout(gLayout);

    // 若按下OK键，则自动判断日期是否合法
    connect(pushButton,&QPushButton::clicked,this,&DateWidget::checkDate);
}

//  判断输入是否合法，合法则emit acceptDate，反之则emit refuseDate
void DateWidget::checkDate()
{
    // 检测文本的初始位置
    int pos = 0;

    // 对于年份过滤，1000-3000的int为合法值
    QIntValidator yearValidator(1000,3000);
    QString yearStr=yearEdit->text();
    if(yearValidator.validate(yearStr, pos)!=QIntValidator::Acceptable)
    {
        // 如果年份不合法则emit refuseDate并结束函数
        emit refuseDate();
        return ;
    }

    // 对于月份过滤，1-12的int为合法值
    QIntValidator monthValidator(1,12);
    QString monthStr=monthEdit->text();
    if(monthValidator.validate(monthStr, pos)!=QIntValidator::Acceptable)
    {
        // 如果月份不合法则emit refuseDate并结束函数
        emit refuseDate();
        return ;
    }

    // 对于日期初步过滤，1-31的int为合法值
    QIntValidator dayValidator(1,31);
    QString dayStr=dayEdit->text();
    if(dayValidator.validate(dayStr, pos)!=QIntValidator::Acceptable)
    {
        // 如果日期初步鉴定不合法则emit refuseDate并结束函数
        emit refuseDate();
        return ;
    }

    // 用int存储日期
    year = yearStr.toInt();
    month = monthStr.toInt();
    day = dayStr.toInt();

    // 用大小月和闰月法判断日期是否合法，将月份对应的日期最大值
    int dayMax = [=]()->int
    {
         if(month == 1||month == 3||month == 5||month == 7||month == 8||month == 10||month == 12)
             return 31; // 大月
         else if(month == 4||month == 6||month == 9||month == 11)
             return 30; // 小月
         else // 二月的特殊判断
         {
             if(year%400==0)return 29; // 能被400整除为闰年
             else if(year%100==0)return 28; // 不能被400整除但能被100整除不为闰年
             else if(year%4==0)return 29; // 不能被100整除但能被4整除的为闰年
             else return 28; // 不能被4整除的不为闰年
         }
    }();

    //如果日期与月份不对应，则emit refuseDate，否则emit acceptDate
    if(day > dayMax)emit refuseDate();
    else emit acceptDate();
}
