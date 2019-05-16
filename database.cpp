#include "database.h"

Database::Database()
{
    db = QSqlDatabase::addDatabase("QPSQL");
    db.setHostName("localhost");
    db.setDatabaseName("qt_practice");
    db.setUserName("postgres");
    db.setPassword("");

    db.open();
}

void Database::lending(int isbn)
{
    QSqlQuery q(db);
    QString queryStr("update only books set available=FALSE where isbn=");
    queryStr.append(QString::number(isbn));
    q.prepare(queryStr);
    q.exec();
}

void Database::returning(int isbn)
{
    QSqlQuery q(db);
    QString queryStr("update only books set available=TRUE where isbn=");
    queryStr.append(QString::number(isbn));
    q.prepare(queryStr);
    q.exec();
}
