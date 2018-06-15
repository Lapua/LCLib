#ifndef PAGEBACK_H
#define PAGEBACK_H

#include <QObject>
#include <QVariant>

class PageBack : public QObject
{
    Q_OBJECT
public:
    explicit PageBack(QObject *rootObject, QObject *parent = nullptr);
    Q_INVOKABLE void setStateID(QString preState, QString curID);
    Q_INVOKABLE void back();

private:
    QObject *rootObject;
    QStringList *previousStateList;
    QStringList *currentIDList;
};

#endif // PAGEBACK_H
