//jsonを取得して処理するクラス

#include <QFile>
#include "getjson.h"

GetJson::GetJson(QQmlContext *ctx)
{
    context = ctx;
    url =  new QString("https://www.google.co.jp/");
    manager = new QNetworkAccessManager(this);
    manager -> get(QNetworkRequest(QUrl(*url)));

    connect(manager, SIGNAL(finished(QNetworkReply*)), this, SLOT(replyFin(QNetworkReply*)));

}

void GetJson::replyFin(QNetworkReply *reply){
    delete url;
    QString *replyStr = new QString;
    //*replyStr = QString::fromUtf8(reply -> readAll().data());
    delete manager;

    QFile file("/Users/Lapua/QtProject/LCLib/lib.txt");    //テスト用にファイル読み込み
    file.open(QFile::ReadOnly);
    QTextStream in(&file);
    QJsonDocument *jsonDoc = new QJsonDocument;
    *jsonDoc = QJsonDocument::fromJson(in.readAll().toUtf8());

    //QJsonDocument *jsonDoc = new QJsonDocument;
    //*jsonDoc = QJsonDocument::fromJson(replyStr -> toUtf8());
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
