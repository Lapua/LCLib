import QtQuick 2.0

Item {
    Rectangle {
        anchors {
            right: parent.right
            rightMargin: parent.width/20
            left: parent.left
            leftMargin: parent.width/20
            horizontalCenter: parent.horizontalCenter
        }
        height: parent.height/5
        y: parent.height/5
        color: "white"

        TextInput {
            anchors.fill: parent
        }
    }
}
