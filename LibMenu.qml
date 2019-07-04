import QtQuick 2.6
import "parts"

Item {
    id: root

    Row {   //貸出・返却ボタン
        id: topRow
        spacing: parent.width/6
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenterOffset: -(parent.height/8)
        anchors.verticalCenter: parent.verticalCenter

        Button {
            color: "#e74c3c"
            width: root.width/3
            height: root.height/3
            text.text: "Returning"
            onClicked: {
                rootLoader.setSource("readBook/Return.qml")
            }
        }

        Button {
            color: "#03A9F4"
            width: root.width/3
            height: root.height/3
            text.text: "Lending"
            onClicked: {
                rootLoader.setSource("readBook/Lend.qml")
            }
        }
    }

    Row {
        id: bottomItem
        spacing: parent.width/6
        anchors {
            top: topRow.bottom
            topMargin: parent.height/10
            bottom: parent.bottom
            right: topRow.right
            left: topRow.left
        }

        Button {
            id: seachButton
            color: "#4CAF50"
            width: root.width/3
            height: parent.height/2

            Image {
                anchors.fill: parent
                anchors.bottomMargin: parent.height/10
                anchors.topMargin: parent.height/10
                source: "pics/search.png"
                fillMode: Image.PreserveAspectFit
            }

            onClicked: {
                rootLoader.setSource("search/SearchMain.qml")
            }
        }

        Button {
            color: "#4CAF50"
            width: root.width/3
            height: parent.height/2

            Image {
                anchors.fill: parent
                anchors.bottomMargin: parent.height/10
                anchors.topMargin: parent.height/10
                source: "pics/info.png"
                fillMode: Image.PreserveAspectFit
            }
            onClicked: {
                rootLoader.setSource("configuration/Menu.qml")
            }
        }
    }
}
