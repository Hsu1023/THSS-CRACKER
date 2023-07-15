#include "mainwindow.h"
#include "datawidget.h"
#include <QMessageBox>
#include <QMenu>
#include <QLabel>
#include <QMenuBar>
#include <QLayout>

// 应用程序的主窗口（顶层窗体）
MainWindow::MainWindow(QMainWindow *parent)
    : QMainWindow(parent)
{
    // 创建一个DateWidget
    DateWidget *dlg = new DateWidget;
    // 设置窗口大小
    setFixedSize(300, 300);

    // 给出提示的QLabel
    QLabel *label = new QLabel("hint: \n输入的年份要在1000-3000之间\n输入的日期也应是合法日期\n否则将会给出错误提示", this);
    setCentralWidget(label);

    // 设置菜单
    QMenuBar *menuBar = new QMenuBar;
    QMenu *settingMenu = menuBar->addMenu("设置");
    QAction *settingTime = settingMenu->addAction("设置时间");
    setMenuBar(menuBar);


    // 通过菜单按键弹出DateWidget窗口
    connect(settingTime, &QAction::triggered, dlg, &DateWidget::show);

    // 如果DateWidget发出acceptDate信号，则弹出设定好的日期QMessageBox
    connect(dlg, &DateWidget::acceptDate, this, [=](){
        QMessageBox *messageBox = new QMessageBox;
        messageBox->setAttribute(Qt::WA_DeleteOnClose, true);
        messageBox->setText("设定的日期为"+QString::number(dlg->year)+"年"
                    +QString::number(dlg->month)+"月"+QString::number(dlg->day)+"日");
        messageBox->exec();
    });

    // 如果DateWidget发出refuseDate信号，则弹出输入不合法的QMessageBox
    connect(dlg, &DateWidget::refuseDate, this, [=](){
        QMessageBox *messageBox = new QMessageBox;
        messageBox->setAttribute(Qt::WA_DeleteOnClose,true);
        messageBox->setText("您的输入不正确");
        messageBox->exec();
    });
}
MainWindow::~MainWindow()
{
}

