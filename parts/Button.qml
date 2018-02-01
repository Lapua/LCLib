import QtQuick 2.6

Rectangle {
    id: rect
    property alias text: text.text
    signal clicked()

    Text {
        id: text
        anchors.fill: parent
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
