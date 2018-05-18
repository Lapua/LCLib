#include "networkam.h"

NetworkAM::NetworkAM(QObject *parent) : QObject(parent)
{

}

void NetworkAM::request(QString url) //urlを投げる
{
    manager = new QNetworkAccessManager;
    manager -> get(QNetworkRequest(QUrl(url)));

    connect(manager, SIGNAL(finished(QNetworkReply*)), this, SLOT(repFin(QNetworkReply*)));
}
