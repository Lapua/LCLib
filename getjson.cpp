#include <QNetworkAccessManager>
#include <QJsonDocument>
#include <QJsonArray>
#include <qjsonobject.h>
#include "getjson.h"

GetJson::GetJson()
{
    QString url = "https://tsurai.work/library/%E4%B8%80%E8%88%AC/API_NoEsc.php";
    QNetworkAccessManager *manager = new QNetworkAccessManager(this);
    manager -> get(QNetworkRequest(QUrl(url)));

    connect(manager, SIGNAL(finished(QNetworkReply*)), this, SLOT(repFin(QNetworkReply*)));
}

void GetJson::repFin(QNetworkReply *rep){
    qDebug() << "fin!";
    QString repStr;
    repStr = QString::fromUtf8(rep->readAll().data());

    QJsonDocument jsonDoc = QJsonDocument::fromJson(repStr.toUtf8());
    QJsonArray jsonArr = jsonDoc.array();
    //QJsonObject jsonObj = jsonArr.object();
    //QStringList strList = jsonObj.keys();

    qDebug() << rep -> error();

    //toDoubleのdoubleの型を適切にすることで、メモリの節約が可能
    qDebug() << jsonArr.at(1).toObject().value("ID").toDouble();
    qDebug() << jsonArr.at(1).toObject().value("title").toString();
    qDebug() << jsonDoc.isEmpty();
    qDebug() << jsonArr.first();
    qDebug() << jsonArr.at(1);
}
