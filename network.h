#ifndef GETJSON_H
#define GETJSON_H

#include <QObject>
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QNetworkRequest>
#include <QString>
#include <QJsonDocument>
#include <QJsonArray>

class Network : public QObject
{
    Q_OBJECT
public:
    Network();
    void getBookDetail(QString &isbn);

private:
    QNetworkReply *reply;
    QNetworkAccessManager manager;

private slots:
    void replyFin();
    void replyFinn(QNetworkReply *reply);
    void alice();
};

#endif // GETJSON_H
