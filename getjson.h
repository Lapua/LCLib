#ifndef GETJSON_H
#define GETJSON_H

#include <QObject>
#include <QNetworkReply>
#include <QNetworkAccessManager>
#include <QJsonDocument>
#include <QJsonArray>
#include <qjsonobject.h>

class GetJson : public QObject
{
    Q_OBJECT

public:
    GetJson();
    QJsonArray getDataList();

private:
    //QString *url;
    QJsonArray jsonArr;
    QStringList stringList;

private slots:
    void repFin(QNetworkReply*);
};

#endif // GETJSON_H
