#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include "datawidget.h"
#include <QObject>
#include <QMainWindow>

class MainWindow : public QMainWindow
{
    Q_OBJECT
public:
    MainWindow(QMainWindow *parent = nullptr);
    ~MainWindow();
};
#endif // MAINWINDOW_H
