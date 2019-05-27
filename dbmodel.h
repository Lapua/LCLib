#ifndef DBMODEL_H
#define DBMODEL_H

#include <QObject>

class DBModel : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int id READ id WRITE setId NOTIFY idChanged)
    Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)

public:
    DBModel(int id, QString name) {
        setId(id);
        setName(name);
    }

    int id() {
        return m_id;
    }

    QString name() {
        return m_name;
    }

    void setId(int id) {
        m_id = id;
        emit idChanged();
    }

    void setName(QString name) {
        m_name = name;
        emit nameChanged();
    }

private:
    int m_id;
    QString m_name;

signals:
    void idChanged();
    void nameChanged();
};

#endif // DBMODEL_H
