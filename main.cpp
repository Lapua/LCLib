#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <qqmlengine.h>
#include <qqmlcontext.h>
#include <qqml.h>
#include <QtQuick/qquickitem.h>
#include <QtQuick/qquickview.h>
#include "network.h"
#include "pageback.h"
#include "database.h"
#include "staticprovider.h"

QQmlApplicationEngine *StaticProvider::m_engine;
QSqlDatabase StaticProvider::m_database;

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    StaticProvider::setEngine(&engine);
    StaticProvider::connectDatabase();
    qmlRegisterType<Database>("Database", 1, 0, "Database");
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    QQmlContext *ctxt = engine.rootContext();

    QObject *rootObject = new QObject;
    rootObject = engine.rootObjects().first();
    PageBack *pageback = new PageBack(rootObject);
    engine.rootContext() -> setContextProperty("cppPageBack", pageback);

    if (engine.rootObjects().isEmpty())
        return -1;

    QObject::connect(&engine, &QQmlApplicationEngine::quit, &app, &QGuiApplication::quit);

    return app.exec();
}
