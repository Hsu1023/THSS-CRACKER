#include "groupbox.h"
#include "tempconverter.h"
#include <QHBoxLayout>

TempConverter::TempConverter(QObject *parent) : QObject(parent)
{
    // 初始化成员变量
    m_celsius = new GroupBox("Celsius");
    m_fahrenheit = new GroupBox("Fahrenheit");

    // 设定两个示数表的range
    m_celsius->setRange(0,100);
    m_fahrenheit->setRange(32, 212);

    // 当摄氏温度改变时TempConverter改变温度
    connect(m_celsius, &GroupBox::valueChanged,
            this, &TempConverter::setCelsiusTemp);
    // 当TempConverter改变温度时摄氏温度改变
    connect(this, SIGNAL(celsiusChanged(int)),
            m_celsius, SLOT(setValue(int)));

    // 当华氏温度改变时TempConverter改变温度
    connect(m_fahrenheit, &GroupBox::valueChanged,
            this, &TempConverter::setFahrenheitTemp);
    // 当TempConverter改变温度时华氏温度改变
    connect(this, SIGNAL(fahrenheitChanged(int)),
            m_fahrenheit, SLOT(setValue(int)));
}
void TempConverter::setCelsiusTemp(const int tempCelsius)
{
    // 若需要设定的温度为当前温度，则不需要改变了
    if(m_tempCelsius == tempCelsius)
    {
        return;
    }
    m_tempCelsius = tempCelsius;
    // 发送温度改变信号
    emit celsiusChanged(tempCelsius);
    emit fahrenheitChanged(32 + tempCelsius * 1.8);
}
void TempConverter::setFahrenheitTemp(const int tempFahrenheit)
{
    // 华氏温度改变也需改变摄氏温度
    setCelsiusTemp((tempFahrenheit - 32) / 1.8);
}
