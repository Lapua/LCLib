#ifndef ENGINEPROVIDER_H
#define ENGINEPROVIDER_H

#include <QQmlApplicationEngine>
#include <QSqlDatabase>

class StaticProvider
{
public:
    StaticProvider() {}

    static void setEngine(QQmlApplicationEngine *engine) {
        m_engine = engine;
    }

    static QQmlApplicationEngine* getEngine() {
        return m_engine;
    }

    static void connectDatabase() {
        QSqlDatabase db = QSqlDatabase::addDatabase("QPSQL");
        db.setHostName("localhost");
        db.setDatabaseName("qt_practice");
        if (!db.open("postgres", "")) {
            qWarning() << "failed to connect database";
        }
    }

    static QSqlDatabase* getDatabase() {
        return &m_database;
    }

private:
    static QQmlApplicationEngine *m_engine;
    static QSqlDatabase m_database;
};

#endif // ENGINEPROVIDER_H
