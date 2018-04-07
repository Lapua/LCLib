#ifndef POST_H
#define POST_H

#include <QObject>

class post : public QObject
{
    Q_OBJECT
public:
    explicit post(QObject *parent = nullptr);

signals:

public slots:
};

#endif // POST_H