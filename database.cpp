#include "database.h"
#include <QSqlError>

Database::Database()
{
    db = QSqlDatabase::addDatabase("QPSQL");
    db.setHostName("localhost");
    db.setDatabaseName("qt_practice");
    if (!db.open("postgres", "")) {
        qWarning() << "failed to connect database";
    }

    connect(&network, &Network::responseReceived, this, &Database::addBook);
}

Database::~Database()
{
    //
}

void Database::lending(int user_id)
{
    QString queryStr("update only books set user_id=1 where isbn=");
    queryStr.append(QString::number(isbn));
    db.exec(queryStr);

    QSqlQuery query(db);
    query.prepare("update only books set user_id=:user_id where isbn=:isbn");
    query.bindValue(":user_id", user_id);
    query.bindValue(":isbn", isbn);
    query.exec();
}

void Database::returning(QString isbn)
{
    QString queryStr("update only books set user_id=0 where isbn=");
    queryStr.append(isbn);
    db.exec(queryStr);
}

void Database::getUserList()
{
    QSqlQuery query(db);
    query.exec("select * from users");

    QList<QObject*> list;
    while (query.next()) {
        QSqlRecord record = query.record();

        int id = record.value("id").toInt();
        QString name = record.value("name").toString();

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
}

void Database::closeDb()
{
    db.close();
}

void Database::searchWord(QString word, bool available)
{
    QSqlQuery query(db);
    QString queryStr("select title, user_id from books where title like :word");
    if (available) {
        queryStr.append(" and user_id = 0");
    }
    queryStr.append(" order by title");
    query.prepare(queryStr);
    query.bindValue(":word", "%" + word + "%");
    query.exec();

    QList<QObject*> list;
    while (query.next()) {
        QSqlRecord record = query.record();
        QString title = record.value("title").toString();
        list.append(new DBModel(title));
    }
    StaticProvider::getEngine()->rootContext()
            ->setContextProperty("searchModel",  QVariant::fromValue(list));
}

void Database::getLentList()
{
    QSqlQuery query(db);
    query.exec("select books.title, users.name from books inner join users"
                   " on books.user_id = users.id order by books.title");

    QList<QObject*> list;
    while (query.next()) {
        QSqlRecord record = query.record();
        QString title = record.value("books.title").toString();
        QString name = record.value("users.name").toString();

        list.append(new DBModel(title, name));
    }

    StaticProvider::getEngine()->rootContext()->setContextProperty("lentModel",  QVariant::fromValue(list));
}

void Database::setIsbn(QString p_isbn)
{
    isbn = p_isbn;
}
