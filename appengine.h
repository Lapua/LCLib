#ifndef ENGINEPROVIDER_H
#define ENGINEPROVIDER_H

#include <QQmlApplicationEngine>

class AppEngine
{
public:
    AppEngine() {}

    static void set(QQmlApplicationEngine *engine) {
        m_engine = engine;
    }

    static QQmlApplicationEngine* get() {
        return m_engine;
    }

private:
    static QQmlApplicationEngine *m_engine;
};



#endif // ENGINEPROVIDER_H
