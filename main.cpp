#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <qqmlengine.h>
#include <qqmlcontext.h>
#include <qqml.h>
#include <QtQuick/qquickitem.h>
#include <QtQuick/qquickview.h>
#include "getjson.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    GetJson *getJson = new GetJson;
    qDebug() << getJson -> getDataList();

    QQmlContext *ctxt = engine.rootContext();
    //ctxt -> setContextProperty("searchModel", QVariant::fromValue(dataList));
    ctxt -> setContextProperty("searchModel", QVariant::fromValue(getJson -> getDataList()));

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
