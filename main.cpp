#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <qqmlengine.h>
#include <qqmlcontext.h>
#include <qqml.h>
#include <QtQuick/qquickitem.h>
#include <QtQuick/qquickview.h>
#include "network.h"
#include "database.h"
#include "staticprovider.h"

QQmlApplicationEngine *StaticProvider::m_engine;

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    StaticProvider::setEngine(&engine);
    qmlRegisterType<Database>("Database", 1, 0, "Database");
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    QQmlContext *ctxt = engine.rootContext();

    QObject *rootObject = new QObject;
    rootObject = engine.rootObjects().first();

    if (engine.rootObjects().isEmpty())
        return -1;

    QObject::connect(&engine, &QQmlApplicationEngine::quit, &app, &QGuiApplication::quit);

    return app.exec();
}
