#include "database.h"
#include <QDebug>

Database::Database()
{
    db = QSqlDatabase::addDatabase("QPSQL");
    db.setHostName("localhost");
    db.setDatabaseName("qt_practice");
    db.setUserName("postgres");
    db.setPassword("");
    qDebug() << db.open();
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

void Database::getUserList()
{
    QSqlQueryModel model;
    model.setQuery("select * from users", db);

    QList<QObject*> list;
    for (int i = 0; i < model.record().count(); i++) {
        QSqlRecord record = model.record(i);

        int id = record.value(columnNum::ID).toInt();
        QString name = record.value(columnNum::NAME).toString();

        list.append(new DBModel(id, name));
    }

    QStringList str;
    str.append("dia");
    str.append("media");

    AppEngine::get()->rootContext()->setContextProperty("userModel", QVariant::fromValue(list));
}
