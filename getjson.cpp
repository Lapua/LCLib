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
    QString *repStr = new QString;
    *repStr = QString::fromUtf8(rep -> readAll().data());
    delete manager;

    QJsonDocument *jsonDoc = new QJsonDocument;
    *jsonDoc = QJsonDocument::fromJson(repStr -> toUtf8());
    delete repStr;

    jsonArr = new QJsonArray;
    *jsonArr = jsonDoc -> array();
    delete jsonDoc;

    int counter;
    counter = jsonArr -> count();
    qDebug() << counter;
    QStringList stringList;
    for( ;counter > 0 ; counter--){
        stringList.append(jsonArr -> takeAt(0).toObject().value("title").toString());
    }
    delete jsonArr;

    context -> setContextProperty("searchModel", QVariant::fromValue(stringList));
}

void GetJson::setContext(QQmlContext *ctxt)
{
    context = ctxt;
}

