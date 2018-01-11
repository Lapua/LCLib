import QtQuick 2.6

Rectangle {
    property alias title: text.text
    //property alias color: color
    color: "red"

    Text {
        id: text
        color: "white"
        font.pointSize: parent.width/2
    }
}
