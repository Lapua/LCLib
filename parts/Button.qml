//ボタンエレメント

import QtQuick 2.6

Rectangle {
    id: rect
    radius: 10
    property alias text: text
    signal clicked()

    Text {
        id: text
        anchors.fill: parent
        padding: parent.height/10
        color: "white"
        fontSizeMode: Text.Fit
        font.pointSize: 500
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            rect.clicked()
        }
    }
}
