import QtQuick 2.0
import "qrc:/parts"

Item {
    anchors.fill: parent

    TopLabel {
        text: "ユーザー登録"
    }

    Rectangle {
        id: textinputRoot
        anchors.centerIn: parent
        width: parent.width - 100
        height: parent.height/7
        color: "white"

        TextInput {
            id: textinputId
            anchors.fill: parent
            font.pointSize: textId.fontInfo.pointSize
            horizontalAlignment: Text.AlignHCenter
        }

        Text {
            id: textId
            anchors.fill: parent
            text: ""
            fontSizeMode: Text.Fit
            font.pointSize: 500
        }
    }

    Button {
        anchors {
            horizontalCenter: parent.horizontalCenter
            top: textinputRoot.bottom
            topMargin: parent.height/10
        }
        width: parent.width/2
        height: parent.height/5
        color: "red"
        text.text: "登録"

        onClicked: {
            db.addUser(textinputId.text)
            rootLoader.setSource("qrc:/LibMenu.qml")
        }
    }
}
