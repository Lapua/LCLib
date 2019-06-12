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
#include "staticprovider.h"
#include "network.h"

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
    Q_INVOKABLE void addUser(QString name);
    Q_INVOKABLE void addBook(QString isbn);
    Q_INVOKABLE void closeDb();

private:
    QSqlDatabase db;
    Network network;

    enum columnNum {
        ID = 0,
        NAME = 1
    };
};

#endif // QUICKITEM_H
