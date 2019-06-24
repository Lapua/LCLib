#ifndef GETJSON_H
#define GETJSON_H

#include <QObject>
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QNetworkRequest>
#include <QString>
#include <QJsonDocument>
#include <QJsonArray>
#include <QJsonObject>

class Network : public QObject
{
    Q_OBJECT
public:
    Network();
    void getBookDetail(QString &isbn);
    QString* getTitle();

private:
    QNetworkReply *reply;
    QNetworkAccessManager manager;
    const QString BASE_URL = "https://www.googleapis.com/books/v1/volumes?q=isbn:";
    QString title;

signals:
    void responseReceived();

private slots:
    void replyFin();
};

#endif // GETJSON_H
