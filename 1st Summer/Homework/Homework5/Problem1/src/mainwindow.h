#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QTextEdit>
#include <QBoxLayout>
#include <QEvent>
#include <QDebug>
#include <QKeyEvent>

class MainWindow : public QMainWindow
{
    Q_OBJECT
public:
    QTextEdit *edit1, *edit2;
protected:
    // 重写事件过滤器，以捕获在Edit1中输入的内容
    bool eventFilter(QObject *watched, QEvent *event) override;
public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();
signals:
    // 信号：Edit1中输入回车键，说明输入了一整行
    void inputLine(const QString);
};
#endif // MAINWINDOW_H
