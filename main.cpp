#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <qqmlengine.h>
#include <qqmlcontext.h>
#include <qqml.h>
#include <QtQuick/qquickitem.h>
#include <QtQuick/qquickview.h>
#include "getjson.h"

#include <QtCore/QThread>   //とりあえず仮で

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    GetJson *getJson = new GetJson;
    QQmlContext *ctxt = engine.rootContext();
    getJson -> setEngine(&engine, ctxt);
    //ctxt -> setContextProperty("searchModel", QVariant::fromValue(dataList));
    //ctxt -> setContextProperty("searchModel", QVariant::fromValue(getJson -> getDataList()));

    QThread::sleep(1);  //とりあえず仮で

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
