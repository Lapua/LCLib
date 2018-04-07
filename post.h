#ifndef POST_H
#define POST_H

#include <QObject>
#include <QDebug>

class Post : public QObject
{
    Q_OBJECT
public:
    Post(QObject *parent = nullptr);
    Q_INVOKABLE void postReq(int isbn);

signals:

};

#endif // POST_H
