#ifndef TEMPCONVERTER_H
#define TEMPCONVERTER_H

#include "groupbox.h"
#include <QObject>

// TempConverter类将摄氏度GroupBox和华氏度GroupBox连接
// 当摄氏度改变时，华氏度也会改变；当华氏度改变时，摄氏度也会改变
// 各个信号与槽用来相互串接，将华氏和摄氏两个GroupBox绑定起来
class TempConverter : public QObject
{
    Q_OBJECT
public:
    GroupBox *m_celsius, *m_fahrenheit;
    int m_tempCelsius;
public:
    explicit TempConverter(QObject *parent = nullptr);
signals:
    void celsiusChanged(const int tempCelsius) const;
    void fahrenheitChanged(const int tempFahrenheit) const;
public slots:
    void setCelsiusTemp(const int tempCelsius);
    void setFahrenheitTemp(const int tempFahrenheit);
};

#endif // TEMPCONVERTER_H
