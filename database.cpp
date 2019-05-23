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
    QString queryStr("update only books set having_user_id=1 where isbn=");
    queryStr.append(QString::number(isbn));
    db.exec(queryStr);
}

void Database::returning(int isbn)
{
    QString queryStr("update only books set having_user_id=0 where isbn=");
    queryStr.append(QString::number(isbn));
    db.exec(queryStr);
}
