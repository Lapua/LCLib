import QtQuick 2.0

Item {
    Rectangle {
        anchors {
            right: parent.right
            rightMargin: parent.width/20
            left: parent.left
            leftMargin: parent.width/20
        }
        height: parent.height/5
        y: parent.height/5
        color: "white"

        TextInput {
            anchors.fill: parent
            horizontalAlignment: TextInput.AlignHCenter
            verticalAlignment: TextInput.AlignVCenter
            font.pointSize: textID.fontInfo.pointSize
        }
    }

    Text {
        id: textID
        width: parent.width/2
        height: parent.height/6
        visible: false
        fontSizeMode: Text.Fit
        font.pointSize: 500
    }
}
