#ifndef DIALOG_H
#define DIALOG_H

#include "tempconverter.h"
#include <QObject>
#include <QDialog>

class Dialog : public QDialog
{
    Q_OBJECT
protected:
    TempConverter m_tempConverter;
public:
    Dialog(QWidget *parent = nullptr);
};
#endif // DIALOG_H
