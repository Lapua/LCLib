import QtQuick 2.6

Rectangle {
    id: rect
    property alias color: rect.color
    property alias text: text.text

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
    }
}
