#ifndef GETJSON_H
#define GETJSON_H

#include <QObject>
#include <QNetworkReply>

class GetJson : public QObject
{
    Q_OBJECT

public:
    GetJson();
    //~GetJson();

private slots:
    void repFin(QNetworkReply*);
};

#endif // GETJSON_H
