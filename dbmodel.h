#ifndef DBMODEL_H
#define DBMODEL_H

#include <QObject>

class DBModel : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int id READ id WRITE setId NOTIFY idChanged)
    Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
    Q_PROPERTY(QString title READ title WRITE setTitle NOTIFY titleChanged)

public:
    DBModel(int id, QString name) {
        setId(id);
        setName(name);
    }

    DBModel(QString name) {
        setName(name);
    }

    DBModel(QString title, QString name) {
        setTitle(title);
        setName(name);
    }

    int id() {
        return m_id;
    }

    QString name() {
        return m_name;
    }

    QString title() {
        return m_title;
    }

    void setId(int id) {
        m_id = id;
        emit idChanged();
    }

    void setName(QString name) {
        m_name = name;
        emit nameChanged();
    }

    void setTitle(QString title) {
        m_title = title;
        emit titleChanged();
    }

private:
    int m_id;
    QString m_name;
    QString m_title;

signals:
    void idChanged();
    void nameChanged();
    void titleChanged();
};

#endif // DBMODEL_H
