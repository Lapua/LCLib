#ifndef GETJSON_H
#define GETJSON_H

#include <QObject>
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QNetworkRequest>
#include <QString>
#include <string>
#include <QJsonDocument>
#include <QJsonArray>
#include <qjsonobject.h>
#include <QQmlContext>

class GetJson : public QObject
{
    Q_OBJECT
public:
    GetJson(QQmlContext *ctx);

private:
    QString *url;
    QJsonArray *jsonArr;
    QQmlContext *context;
    QNetworkAccessManager *manager;

private slots:
    void replyFin(QNetworkReply *reply);
};

#endif // GETJSON_H
