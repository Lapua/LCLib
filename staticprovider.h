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



private:
    static QQmlApplicationEngine *m_engine;
};

#endif // ENGINEPROVIDER_H
