//jsonを取得して処理するクラス

#include "getjson.h"

GetJson::GetJson()
{
    url =  new QString("https://tsurai.work/library/%E4%B8%80%E8%88%AC/API_NoEsc.php");
    manager = new QNetworkAccessManager(this);
    manager -> get(QNetworkRequest(QUrl(*url)));

    connect(manager, SIGNAL(finished(QNetworkReply*)), this, SLOT(repFin(QNetworkReply*)));
}

void GetJson::repFin(QNetworkReply *rep){
    delete url;
    QString repStr =  QString::fromUtf8(rep -> readAll().data());
    delete manager;
    QJsonDocument jsonDoc = QJsonDocument::fromJson(repStr.toUtf8());

    jsonArr = jsonDoc.array();

    //toDoubleのdoubleの型を適切にすることで、メモリの節約が可能
    qDebug() << jsonArr.at(1).toObject().value("ID").toDouble();
    qDebug() << jsonArr.at(1).toObject().value("title").toString();
    qDebug() << jsonArr.first();
    qDebug() << jsonArr.at(1);
}

QJsonArray GetJson::getDataList()
{
    return jsonArr;
}
