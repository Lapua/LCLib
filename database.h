#ifndef QUICKITEM_H
#define QUICKITEM_H

#include <QObject>
#include <QQuickItem>
#include <QSqlDatabase>
#include <QSqlQuery>

class Database : public QQuickItem
{
    Q_OBJECT
public:
    Database();
    Q_INVOKABLE void lend(int isbn);

private:
    QSqlDatabase db;
};

#endif // QUICKITEM_H
