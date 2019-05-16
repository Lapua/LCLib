import QtQuick 2.0
import QtQuick.Layouts 1.3
import Database 1.0
import "../parts"

Item {
    TopLabel {
        id: topLabel
        text: "貸出"
        onClicked: {
            lendID.visible = false
        }
    }

    ColumnLayout {
        width: parent.width

        anchors {
            top: topLabel.bottom
            bottom: parent.bottom
        }

        Item {
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredHeight: parent.height/10
            Layout.preferredWidth: parent.width/5*4

            Text {
                id: barcodeText
                anchors.fill: parent
                text: "バーコードを読み取ってください"
                color: "white"
                fontSizeMode: Text.Fit
                font.pointSize: 500
                horizontalAlignment: Text.AlignHCenter
            }
        }

        Rectangle {
            color: "white"
            Layout.preferredHeight: parent.height/10
            Layout.preferredWidth: parent.width/5*4
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop

            TextInput {
                anchors.fill: parent
                focus: true
                horizontalAlignment: TextInput.AlignHCenter
                verticalAlignment: TextInput.AlignVCenter
                font.pointSize: barcodeText.fontInfo.pointSize
            }

            //Debug
            MouseArea {
                anchors.fill: parent
                Database {id: database}
                onClicked: {
                    database.lend(1)
                }
            }
        }
    }
}
