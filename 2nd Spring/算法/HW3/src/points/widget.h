#ifndef WIDGET_H
#define WIDGET_H

#include <QWidget>
#include <QDialog>
#include "mouseclick.h"
#include "randomcreate.h"

QT_BEGIN_NAMESPACE
namespace Ui { class Widget; }
QT_END_NAMESPACE

class Widget : public QDialog
{
    Q_OBJECT

public:
    Widget(QWidget *parent = nullptr);
    MouseClick *w1;
    RandomCreate *w2;
    ~Widget();

private:
    Ui::Widget *ui;
};
#endif // WIDGET_H
