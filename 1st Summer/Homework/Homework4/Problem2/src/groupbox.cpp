#include "groupbox.h"
#include <QVBoxLayout>

GroupBox::GroupBox(const QString &title, QWidget *parent) : QGroupBox(title, parent)
{
    // 初始化成员变量
    m_dial = new QDial(this);
    m_lcdNumber = new QLCDNumber(this);

    // 设置布局
    QVBoxLayout *vBoxLayout = new QVBoxLayout(this);
    vBoxLayout->addWidget(m_dial);
    vBoxLayout->addWidget(m_lcdNumber);
    setLayout(vBoxLayout);

    // QDial改变则QLCDNumber示数改变
    connect(m_dial, SIGNAL(valueChanged(int)),
            m_lcdNumber, SLOT(display(int)));
    // 当QDial改变则发射valueChanged的信号
    connect(m_dial, &QDial::valueChanged,this,
            [=](int tempInt){emit valueChanged(tempInt);}
    );
}
// 函数setRange以改变QDial的range
void GroupBox::setRange(const int min, const int max)
{
    m_dial->setRange(min, max);
}
// 提供setValue的槽，以改变QDial的值
void GroupBox::setValue(const int value)
{
    m_dial->setValue(value);
}
