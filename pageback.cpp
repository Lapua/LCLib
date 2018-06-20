#include "pageback.h"

PageBack::PageBack(QObject *rootObj, QObject *parent) : QObject(parent)
{
    rootObject = new QObject;
    rootObject = rootObj;
    previousStateList = new QStringList;
    currentIDList = new QStringList;
}

void PageBack::setStateID(QString preState, QString curID)
{
    previousStateList -> insert(0, preState);
    currentIDList -> insert(0, curID);

    if ( previousStateList -> length() > 3) {

    }
}

void PageBack::back()
{
    QObject *qmlObject = new QObject();
    qmlObject = rootObject -> findChild<QObject*>("searchState");

    if (previousStateList -> isEmpty()) {
        qmlObject = rootObject -> findChild<QObject*>("stateID");
        qmlObject -> setProperty("state", "menu");

        qmlObject = rootObject -> findChild<QObject*>("searchID");
        qmlObject -> setProperty("visible", false);

        return;
    }

    qmlObject -> setProperty("state", previousStateList -> takeFirst());

    qmlObject = rootObject -> findChild<QObject*>(currentIDList -> takeFirst());
    qmlObject -> setProperty("visible", false);
}
