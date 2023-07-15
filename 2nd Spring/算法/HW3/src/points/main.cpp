#include "widget.h"
#include <QApplication>
#include <QMetaType>
#include <QTextCodec>


int main(int argc, char *argv[])
{

    QApplication a(argc, argv);
    // 适应中文
    QTextCodec* codec = QTextCodec::codecForName("utf8");
    QTextCodec::setCodecForLocale(codec);
    Widget w;
    w.show();
    return a.exec();
}
