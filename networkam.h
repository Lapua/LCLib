#ifndef NETWORKAM_H
#define NETWORKAM_H

#include <QObject>
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QNetworkRequest>
#include <QString>
#include <string>
using namespace std;

class NetworkAM : public QObject
{
    Q_OBJECT
public:
    explicit NetworkAM(QObject *parent = nullptr);

private:
    QNetworkAccessManager *manager;

protected:
    void request(QString url);
};

#endif // NETWORKAM_H
