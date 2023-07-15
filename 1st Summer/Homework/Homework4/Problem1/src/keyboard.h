#ifndef KEYBOARD_H
#define KEYBOARD_H

#include <QDialog>

class Keyboard : public QDialog
{
    Q_OBJECT
public:
    explicit Keyboard(QWidget *parent = nullptr);
signals:

};

#endif // KEYBOARD_H
