#include "keyboard.h"
#include <QLayout>
#include <QLineEdit>
#include <QPushButton>
#include <QSignalMapper>

Keyboard::Keyboard(QWidget *parent) : QDialog(parent)
{
    // 声明输入数字的显示窗口，并连接到整体布局上
    QLineEdit *lineEdit = new QLineEdit;
    // 声明局部布局（将所有按钮作为一个整体设置布局）
    QGridLayout *numberLayout = new QGridLayout;
    // 声明信号映射器，将10个数字按钮与对应的QString构建映射
    QSignalMapper *signalMapper = new QSignalMapper(this);
    // 声明一个临时按钮
    QPushButton *tempButton;
    // 从1到9循环，每个数字均设置按键
    // 并将数字与按钮与信号映射器相连，将按键与局部布局相连
    for(int i = 1; i < 10; i++)
    {
        tempButton = new QPushButton(QString::number(i));

        connect(tempButton, SIGNAL(clicked()),
                signalMapper, SLOT(map()));// 将按钮与信号映射器相连
        signalMapper->setMapping(tempButton,
                                 QString::number(i));// 将数字与信号映射器相连

        numberLayout->addWidget(tempButton,
                                (i - 1) / 3, (i - 1) % 3);// 设置局部布局
    }
    // 设置按键“0”，为了保证局部布局美观，故不放入循环
    tempButton = new QPushButton("0");
    connect(tempButton, SIGNAL(clicked()),
            signalMapper, SLOT(map()));
    signalMapper->setMapping(tempButton, "0");
    numberLayout->addWidget(tempButton, 3, 0);
    // 为以上0-9按钮设置信号与槽机制
    // 每当信号映射器被触发，lineEdit中插入相应信号
    connect(signalMapper, &QSignalMapper::mappedString,
            lineEdit, &QLineEdit::insert);

    // 设置“清除按键”，并设置信号与槽机制
    // 每当按键被点击，lineEdit所有内容被清空
    tempButton = new QPushButton("Clear");
    connect(tempButton, SIGNAL(clicked()),
            lineEdit, SLOT(clear()));
    numberLayout->addWidget(tempButton, 3, 2);

    // 声明整体布局，包括lineEdit+所有按钮的局部布局，并进行组装
    QGridLayout *totalLayout = new QGridLayout(this);
    totalLayout->addWidget(lineEdit, 0, 0);
    totalLayout->addLayout(numberLayout, 1, 0);
    // 将整体布局设置到Dialog上
    setLayout(totalLayout);
}
