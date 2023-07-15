#ifndef DATAWIDGET_H
#define DATAWIDGET_H

#include <QObject>
#include <QLineEdit>
#include <QDialog>

// DateWidget是一个QDialog派生类，显示为一个窗口
// 它记录了输入的日期等信息，同时可以发出输入日期是否合法的信号
class DateWidget : public QDialog
{
    Q_OBJECT
public:
    DateWidget(QDialog *parent = nullptr);
    // 输入年月日的编辑窗口
    QLineEdit *yearEdit, *monthEdit, *dayEdit;
    // 输入的年月日
    int year, month, day;
    //  判断输入是否合法，合法则emit acceptDate，反之则emit refuseDate
    void checkDate();
signals:
    // 输入的日期合法
    void acceptDate();
    // 输入的日期不合法
    void refuseDate();
};

#endif // DATAWIDGET_H
