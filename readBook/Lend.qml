import QtQuick 2.0
import QtQuick.Layouts 1.3
import "../parts"

Item {
    TopLabel {
        onClicked: {
            lendID.visible = false
        }
    }

    ColumnLayout {
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width/5*4
        height: parent.height/2

        Text {
            text: "バーコードを読み取ってください"
            Layout.preferredHeight: parent.height/10
        }

        Rectangle {
            color: "white"
            Layout.preferredHeight: parent.height/10
            Layout.preferredWidth: parent.width

            TextInput {
                anchors.fill: parent
            }
        }
    }
}
