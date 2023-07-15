#ifndef ICON_H
#define ICON_H

#include <QDialog>
#include <QDir>
#include <QDebug>
#include <QPushButton>

class Icon : public QDialog
{
    Q_OBJECT
protected:

    QDir dir; // 储存图片的路径
    QString path; // 设置图片的根目录
    QStringList dirList; // 将所有图片名称存入
    QPushButton *button; // Dialog中所需button
    int point, countPic; // 后者为图片总数，前者为当前图片序号
public:
    Icon(QWidget *parent = nullptr);
    ~Icon();
public slots:
    // 对于图片的序号操作，使其指向下一个图片，并重置button的icon
    void nextPic();
};
#endif // ICON_H
