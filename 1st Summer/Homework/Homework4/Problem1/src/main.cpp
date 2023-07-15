#include "keyboard.h"

#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    Keyboard tempKeyboard;
    tempKeyboard.show();
    return a.exec();
}
