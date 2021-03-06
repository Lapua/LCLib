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
    Q_INVOKABLE void lending(int user_id);
    Q_INVOKABLE void returning(QString isbn);
    Q_INVOKABLE void getUserList();
    Q_INVOKABLE void deleteUser(int id);
    Q_INVOKABLE void addUser(QString name);
    Q_INVOKABLE void requestBookDetail(QString isbn);
    Q_INVOKABLE void closeDb();
    Q_INVOKABLE void searchWord(QString word, bool available);
    Q_INVOKABLE void getLentList();
    Q_INVOKABLE void setIsbn(QString isbn);

private:
    QSqlDatabase db;
    Network network;
    QString addBookIsbn;
    QString isbn;

private slots:
    void addBook();
};

#endif // QUICKITEM_H
