import QtQuick 2.6
import "parts"

Item {
    id: elemRoot

    Row {
        id: centerRow
        spacing: parent.width/6
        anchors.centerIn: parent

        Button {
            color: "#e57373"
            width: elemRoot.width/4
            height: elemRoot.height/3
            text: "返却"
            onClicked: {
                console.debug("返却したい!!")
            }
        }

        Button {
            color: "#03A9F4"
            width: elemRoot.width/4
            height: elemRoot.height/3
            text: "貸出"
            onClicked: {
                console.debug("貸出したい!!")
            }
        }
    }

    Row {
        spacing: parent.height/15
        layoutDirection: Qt.RightToLeft
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.rightMargin: parent.height/15
        anchors.bottomMargin: parent.height/15

        Button {
            color: "#4CAF50"
            width: elemRoot.width/6
            height: elemRoot.height/5
            text: "設定"
            onClicked: {
                console.debug("設定したい!!")
            }
        }

        Button {
            color: "#4CAF50"
            width: elemRoot.width/6
            height: elemRoot.height/5
            text: "検索"
            onClicked: {
                console.debug("検索したい!!")
            }
        }
    }
}
