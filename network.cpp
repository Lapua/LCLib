#include "network.h"
#include <QThread>

Network::Network()
{
    //
}

void Network::getBookDetail(QString &isbn)
{
    //QString url("https://www.googleapis.com/books/v1/volumes?q=isbn:" + isbn);
    QString url("http://example.com");

    reply = manager.get(QNetworkRequest(QUrl(url)));

    connect(&manager, &QNetworkAccessManager::finished, this, &Network::replyFin);
    connect(reply, QOverload<QNetworkReply::NetworkError>::of(&QNetworkReply::error), this, &Network::alice);
    connect(reply, &QNetworkReply::finished, this, &Network::replyFin);
    connect(reply, &QIODevice::readyRead, this, &Network::replyFin);
    connect(&manager, SIGNAL(finished(QNetworkReply*)), this, SLOT(replyFinn(QNetworkReply*)));
}

void Network::replyFin()
{
    qDebug() << "got reply";
    QString replyStr;
    replyStr = QString::fromUtf8(reply->readAll().data());
    reply->deleteLater();   //QNetworkAccessManagerのドキュメントに自分で消してねと書いてある(気がする)

    QJsonDocument jsonDoc;
    jsonDoc = QJsonDocument::fromJson(replyStr.toUtf8());

    QJsonArray jsonArr = jsonDoc.array();

//    int counter;
//    counter = jsonArr.count();
//    QStringList stringList;
//    for( ;counter > 0 ; counter--){
//        stringList.append(jsonArr -> takeAt(0).toObject().value("title").toString());
//    }
}

void Network::replyFinn(QNetworkReply *reply)
{
    qDebug() << "fired";
}

void Network::alice()
{
    qDebug() << "alice";
}
