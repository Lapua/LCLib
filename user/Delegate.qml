import QtQuick 2.0
import Database 1.0


Item {
    width: parent.width
    height: 70
    Database {id: db}

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

        //削除ボタン
        Item {
            anchors {
                right: parent.right
                rightMargin: (parent.height-height)/2
                verticalCenter: parent.verticalCenter
            }
            height: 50; width: height*2 + 10

            Rectangle {
                id: deleteButton
                anchors.fill: parent
                color: "orange"

                Text {
                    anchors.fill: parent
                    text: "×"
                    color: "white"
                    font.pixelSize: 50
                    horizontalAlignment: Text.Center
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        deleteButton.visible = false
                        sureDelete.visible = true
                    }
                }
            }

            Item {
                id: sureDelete
                anchors.fill: parent
                visible: false

                Rectangle {
                    id: sure
                    color: "red"
                    width: parent.width/2 - 5; height: parent.height
                    anchors.right: parent.right
                    MouseArea {
                        anchors.fill: parent
                        onClicked: db.deleteUser(invisibleId.text)
                    }
                }

                Rectangle {
                    id: cancel
                    color: "gray"
                    width: sure.width; height: sure.height
                    anchors.left: parent.left
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            sureDelete.visible = false
                            deleteButton.visible = true
                        }
                    }
                }
            }
        }
    }
}
