import QtQuick 2.6

Rectangle {
    property alias title: text.text

    Text {
        id: text
        color: "white"
        font.pointSize: parent.width*0.5
    }
}
