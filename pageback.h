#ifndef PAGEBACK_H
#define PAGEBACK_H

#include <QObject>
#include <QVariant>

class PageBack : public QObject
{
    Q_OBJECT
public:
    explicit PageBack(QObject *rootObj, QObject *parent = nullptr);
    ~PageBack();
    Q_INVOKABLE void setHistory(QString preSource);
    Q_INVOKABLE void back();

private:
    QObject *rootObject;
    QObject *qmlObject;
    QStringList *historyList;
};

#endif // PAGEBACK_H
