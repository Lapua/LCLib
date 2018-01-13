import QtQuick 2.6

Rectangle {
    property alias title: text.text
    property alias txtContentWidth: text.contentWidth
    property alias txtContentHeight: text.contentHeight
    property alias

    //width: text.contentWidth
    //height: text.contentHeight

    Text {
        id: text
        color: "white"
        font.pointSize: root.width*0.15
    }
}
