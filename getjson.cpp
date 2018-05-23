//jsonを取得して処理するクラス

#include "getjson.h"
#include "json.h"

GetJson::GetJson(QQmlContext *ctx)
{
    context = ctx;
    url =  new QString("https://tsurai.work/library/%E4%B8%80%E8%88%AC/API_NoEsc.php");
    manager = new QNetworkAccessManager(this);
    manager -> get(QNetworkRequest(QUrl(*url)));

    connect(manager, SIGNAL(finished(QNetworkReply*)), this, SLOT(replyFin(QNetworkReply*)));

}

void GetJson::replyFin(QNetworkReply *reply){
    delete url;
    QString *replyStr = new QString;
    //*replyStr = QString::fromUtf8(reply -> readAll().data());
    *replyStr = json();
    delete manager;

    QJsonDocument *jsonDoc = new QJsonDocument;
    *jsonDoc = QJsonDocument::fromJson(replyStr -> toUtf8());
    delete replyStr;

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
