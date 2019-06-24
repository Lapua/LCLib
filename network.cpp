#include "network.h"

Network::Network()
{
    //
}

void Network::getBookDetail(QString &isbn)
{
    QString url = BASE_URL + isbn;
    reply = manager.get(QNetworkRequest(QUrl(url)));

    connect(&manager, &QNetworkAccessManager::finished, this, &Network::replyFin);
}

void Network::replyFin()
{
    QString replyStr;
    replyStr = QString::fromUtf8(reply->readAll().data());
    reply->deleteLater();   //QNetworkAccessManagerのドキュメントに自分で消してねと書いてある(気がする)

    QJsonDocument jsonDoc;
    jsonDoc = QJsonDocument::fromJson(replyStr.toUtf8());

    QJsonObject jsonObjRoot = jsonDoc.object();
    QJsonObject jsonObjItems = jsonObjRoot["items"].toArray().first().toObject();
    QJsonObject jsonObjVInfo = jsonObjItems["volumeInfo"].toObject();
    title = jsonObjVInfo.value("title").toString();

    emit responseReceived();
}

QString* Network::getTitle()
{
    return &title;
}
