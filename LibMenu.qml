import QtQuick 2.6
import QtQuick.Layouts 1.3
import "parts"

Item {
    id: elemRoot

    Row {
        id: topRow
        spacing: parent.width/6
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenterOffset: -(parent.height/8)
        anchors.verticalCenter: parent.verticalCenter

        Button {
            color: "#e74c3c"
            width: elemRoot.width/3
            height: elemRoot.height/3
            text: "Returning"
            onClicked: {
                console.debug("返却したい!!")
            }
        }

        Button {
            color: "#03A9F4"
            width: elemRoot.width/3
            height: elemRoot.height/3
            text: "Lending"
            onClicked: {
                console.debug("貸出したい!!")
            }
        }
    }

    RowLayout {
        id: bottomItem
        spacing: this.width/20
        anchors.top: topRow.bottom
        anchors.bottom: parent.bottom
        anchors.right: topRow.right
        anchors.left: topRow.left

        Button {
            color: "#4CAF50"
            Layout.fillWidth: true
            Layout.preferredHeight: parent.height/3
            //width: elemRoot.width/6
            //height: parent.height/5

            Image {
                anchors.fill: parent
                anchors.bottomMargin: parent.height/10
                anchors.topMargin: parent.height/10
                source: "pics/info.png"
                fillMode: Image.PreserveAspectFit
            }

            onClicked: {
                 console.debug("インフォ見たい!!")
            }
        }

        Button {
            color: "#4CAF50"
            //width: elemRoot.width/6
            Layout.fillWidth: true
            Layout.preferredHeight: parent.height/3
            //height: parent.height/5

            Image {
                anchors.fill: parent
                anchors.bottomMargin: parent.height/10
                anchors.topMargin: parent.height/10
                source: "pics/search.png"
                fillMode: Image.PreserveAspectFit
            }

            onClicked: {
                console.debug("検索したい!!")
            }
        }

        Button {
            color: "#4CAF50"
            //width: elemRoot.width/6
            Layout.fillWidth: true
            Layout.preferredHeight: parent.height/3
            //height: parent.height/5

            /*Image {
                anchors.fill: parent
                anchors.bottomMargin: parent.height/10
                anchors.topMargin: parent.height/10
                source: "pics/search.png"
                fillMode: Image.PreserveAspectFit
            }*/

            onClicked: {
                console.debug("検索したい!!")
            }
        }
    }
}
