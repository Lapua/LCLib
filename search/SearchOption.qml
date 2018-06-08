import QtQuick 2.0
import "../parts"

Item {
    id: searcHOptionRootID
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

    Row {
        anchors {
            right: parent.right
            rightMargin: parent.width/20
            left: parent.left
            leftMargin: parent.width/20
        }
        y: parent.height/3*2
        spacing: parent.width/20

        Row {
            CheckBox {
                //anchors.centerIn: parent
                width: 50
                height: 50
            }

            Text {
                id: textID
                width: searcHOptionRootID.width/10
                height: searcHOptionRootID.height/6
                fontSizeMode: Text.Fit
                font.pointSize: 500
                text: "貸出可"
            }
        }
    }
}
