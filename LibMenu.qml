import QtQuick 2.6

Item {
    Rectangle {
        id: leftButton
        anchors.top: rightButton.top
        anchors.bottom: rightButton.bottom
        x: parent.width/4 - width/2
        width: rightButton.width
        color: "red"

        Text {
            text: "left"
            color: "white"
            font.pointSize: root.width*0.1
        }
    }

    Rectangle {
        id: rightButton
        anchors.verticalCenter: parent.verticalCenter
        x: (parent.width/4)*3// - text.Contentwidth/2
        width: text.ContentWidth
        height: text.ContentHeight
        color: "blue"

        Text {
            id: text
            text: "right"
            //color: "white"
            font.pointSize: root.width*0.1
        }
    }
}
