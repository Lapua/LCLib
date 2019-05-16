#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <qqmlengine.h>
#include <qqmlcontext.h>
#include <qqml.h>
#include <QtQuick/qquickitem.h>
#include <QtQuick/qquickview.h>
#include "getjson.h"
#include "pageback.h"
#include "database.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    //database
    qmlRegisterType<Database>("Database", 1, 0, "Database");
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    QQmlContext *ctxt = engine.rootContext();
    GetJson *getJson = new GetJson(ctxt);

    QObject *rootObject = new QObject;
    rootObject = engine.rootObjects().first();
    PageBack *pageback = new PageBack(rootObject);
    engine.rootContext() -> setContextProperty("cppPageBack", pageback);
    engine.rootContext() -> setContextProperty("cppGetJson", getJson);

    if (engine.rootObjects().isEmpty())
        return -1;

    QObject::connect(&engine, &QQmlApplicationEngine::quit, &app, &QGuiApplication::quit);

    return app.exec();
}
