#ifndef GETJSON_H
#define GETJSON_H

#include <QQmlApplicationEngine>
#include <QObject>
#include <QNetworkReply>
#include <QNetworkAccessManager>
#include <QJsonDocument>
#include <QJsonArray>
#include <qjsonobject.h>
#include <QQmlContext>

class GetJson : public QObject
{
    Q_OBJECT

public:
    GetJson();
    void setContext(QQmlContext *ctxt);

private:
    QString *url;
    QNetworkAccessManager *manager;
    QJsonArray *jsonArr;
    QQmlContext *context;
    QQmlApplicationEngine *engine;

private slots:
    void repFin(QNetworkReply*);
};

#endif // GETJSON_H
