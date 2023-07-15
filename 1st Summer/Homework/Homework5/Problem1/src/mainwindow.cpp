#include "mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
{
    // 初始化两个文本编辑器
    edit1 = new QTextEdit;
    edit2 = new QTextEdit;

    // 设置edit1的高
    edit1->setFixedHeight(25);
    // 安装事件过滤器，以用eventFilter函数捕获键盘输入事件
    edit1->installEventFilter(this);

    // 用QVBoxLayout对文本编辑器进行排版
    QVBoxLayout *vLayout = new QVBoxLayout;
    vLayout->addWidget(edit1);
    vLayout->addWidget(edit2);

    // 若edit1中输入了回车，则将edit1内容清除，将对应内容插入edit2内
    connect(this, &MainWindow::inputLine, edit1, &QTextEdit::clear);
    connect(this, &MainWindow::inputLine, edit2, &QTextEdit::insertPlainText);

    // 将QVBoxLayout插入MainWindow中
    QWidget* widget = new QWidget(this);
    this->setCentralWidget(widget);
    widget->setLayout(vLayout);
}
// 重写事件过滤器，以捕获在Edit1中输入的内容
bool MainWindow::eventFilter(QObject *watched, QEvent *event)
{
    if(watched == edit1)
    {
        // 要求事件是键盘输入事件
        if(event->type()==QEvent::KeyPress)
        {
            QKeyEvent *keyEvent = static_cast<QKeyEvent *>(event);
            //要求键盘输入的是回车键，若是回车键则发射inputLine信号
            if(keyEvent->key() == 0x01000005 || keyEvent->key() == 0x01000004)
            {
                emit inputLine(edit1->toPlainText()+'\n');
                return true;
            }
            else
                return false; //keyEvent->key() != 0x01000005 or 0x01000004
        }
        else
            return false; // event->type()!=QEvent::KeyPress
    }
    return QMainWindow::eventFilter(watched, event);
}
MainWindow::~MainWindow()
{
}

