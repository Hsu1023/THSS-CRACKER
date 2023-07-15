#include "icon.h"

#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    Icon w;
    w.show();
    return a.exec();
}
