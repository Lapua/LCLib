#include "pageback.h"
#include <QDebug>

PageBack::PageBack(QObject *rootObj, QObject *parent) : QObject(parent)
{
    rootObject = new QObject;
    rootObject = rootObj;
    historyList = new QStringList;
    qmlObject = new QObject;
}

PageBack::~PageBack()
{
    delete rootObject;
    delete historyList;
    delete qmlObject;
}

void PageBack::setHistory(QString preSource)
{
    preSource = "qrc:/search/" + preSource;
    historyList -> insert(0, preSource);
}

void PageBack::back()
{
    if (historyList -> isEmpty()) {
        qmlObject = rootObject -> findChild<QObject*>("searchID");
        qmlObject -> setProperty("visible", "false");

        qmlObject = rootObject -> findChild<QObject*>("stateID");
        qmlObject -> setProperty("state", "menu");
    } else {
        qmlObject = rootObject -> findChild<QObject*>("searchLoader");
        qmlObject -> setProperty("source", historyList -> takeFirst());
    }
}
