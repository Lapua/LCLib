import QtQuick 2.0
import "qrc:/parts"

Item {
    anchors.fill: parent

    TopLabel {
        id: topLabel
        text: "ユーザー選択"
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
        delegate:
            Item {
                width: parent.width
                height: 70

                Rectangle {
                    anchors.centerIn: parent
                    width: parent.width-20
                    height: parent.height

                    Text {
                        id: invisibleId
                        text: id
                        visible: false
                    }

                    Text {
                        id: nameTextId
                        anchors.fill: parent
                        anchors.margins: 10
                        text: name
                        fontSizeMode: Text.Fit
                        font.pixelSize: 200
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            db.lending(invisibleId.text)
                            rootLoader.setSource("qrc:/LibMenu.qml")
                        }
                    }
                }
            }
    }
}
