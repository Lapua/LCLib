import QtQuick 2.0
import "qrc:/parts"

Item {
    anchors.fill: parent

    TopLabel {
        id: topLabel
        text: "ユーザー管理"

        Item {
            anchors.right: topLabel.homeButtonId.left
            height: topLabel.height
            width: height

            Text {
                anchors.fill: parent
                text: "+"
                color: "white"
                fontSizeMode: Text.Fit
                font.pointSize: 500
                horizontalAlignment: Text.AlignHCenter
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    rootLoader.setSource("Add.qml")
                }
            }
        }
    }

    ListView {
        anchors {
            top: topLabel.bottom
            bottom: parent.bottom
            margins: 10
        }
        width: parent.width
        spacing: 10
        model: userModel
        delegate: Delegate{}
    }
}
