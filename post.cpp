#include "post.h"

Post::Post(QObject *parent) : QObject(parent)
{

}

void Post::postReq(int isbn)
{
    qDebug() << "function called ! " << isbn;
}
