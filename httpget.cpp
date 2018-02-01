#include "httpget.h"

void httpGet(QString url) {
    QNetworkAccessManager manager;
    manager.get(QNetworkRequest(QUrl(url)));

    connect(manager, SIGNAL(finished(QNetworkReply*)), this, SLOT(repFin(QNetworkReply*)));
}

