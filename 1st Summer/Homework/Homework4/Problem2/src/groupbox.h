#ifndef GROUPBOX_H
#define GROUPBOX_H

#include <QObject>
#include <QDial>
#include <QGroupBox>
#include <QLCDNumber>

// GroupBox类将一个QDial和一个QLCDNumber绑定
// 并实现QLCDNumber的示数随QDial改变而转变的功能

class GroupBox : public QGroupBox
{
    Q_OBJECT
protected:
    QDial *m_dial;
    QLCDNumber *m_lcdNumber;
    int maxi, mini;
public:
    explicit GroupBox(const QString &title, QWidget *parent = nullptr);
    // 提供函数setRange以改变QDial的range
    void setRange(const int min, const int max);
signals:
    // 提供valueChanged的信号，当QDial改变后发射
    void valueChanged(const int value) const;
public slots:
    // 提供setValue的槽，以改变QDial的值
    void setValue(const int value);
};

#endif // GROUPBOX_H
