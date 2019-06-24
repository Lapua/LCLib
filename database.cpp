#include "database.h"
#include <QSqlError>

Database::Database()
{
    db = QSqlDatabase::database();

    connect(&network, &Network::responseReceived, this, &Database::addBook);
}

Database::~Database()
{
    //
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
    for (int i = 0; i < model.rowCount(); i++) {
        QSqlRecord record = model.record(i);

        int id = record.value(columnNum::ID).toInt();
        QString name = record.value(columnNum::NAME).toString();

        list.append(new DBModel(id, name));
    }

    StaticProvider::getEngine()->rootContext()->setContextProperty("userModel",  QVariant::fromValue(list));
}

void Database::deleteUser(int id)
{
    QString queryStr("delete from users where id=");
    queryStr.append(QString::number(id));
    db.exec(queryStr);
}

void Database::addUser(QString name)
{
    if (!name.isEmpty()) {
        QSqlQuery query(db);
        query.prepare("insert into users (name) values(:name)");
        query.bindValue(":name", name);
        query.exec();
    } else {
        qWarning() << "Failed to add user: user name is empty";
    }
}

void Database::requestBookDetail(QString isbn)
{
    network.getBookDetail(isbn);
    addBookIsbn = isbn;
}

void Database::addBook()
{
    QString *title = network.getTitle();
    QSqlQuery query(db);
    query.prepare("insert into books (title, isbn) values(:title, :isbn)");
    query.bindValue(":title", *title);
    query.bindValue(":isbn", addBookIsbn);
    query.exec();
    qDebug() << query.lastError();
}

void Database::closeDb()
{
    db.close();
}
