#ifndef QUICKITEM_H
#define QUICKITEM_H

#include <QObject>
#include <QQuickItem>
#include <QSqlDatabase>
#include <QSqlQueryModel>
#include <QSqlQuery>
#include <QSqlRecord>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "dbmodel.h"
#include "appengine.h"

class Database : public QQuickItem
{
    Q_OBJECT
public:
    Database();
    ~Database();
    Q_INVOKABLE void lending(int isbn);
    Q_INVOKABLE void returning(int isbn);
    Q_INVOKABLE void getUserList();
    Q_INVOKABLE void deleteUser(int id);

private:
    QSqlDatabase db;

    enum columnNum {
        ID = 0,
        NAME = 1
    };
};

#endif // QUICKITEM_H
