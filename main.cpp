#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <qqmlengine.h>
#include <qqmlcontext.h>
#include <qqml.h>
#include <QtQuick/qquickitem.h>
#include <QtQuick/qquickview.h>
#include "httpget.h"
#include "getjson.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    GetJson *getJson;
    getJson = new GetJson;

    QVariant dataList(getJson -> getDataList());
    qDebug() << "vari:" << dataList.toStringList();

    //QStringList dataList;
    //dataList.append("ryusei");

    QQmlContext *ctxt = engine.rootContext();
    //ctxt -> setContextProperty("searchModel", QVariant::fromValue(dataList));
    ctxt -> setContextProperty("searchModel", dataList);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
