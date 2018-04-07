﻿//menu画面。ボタンが配置してある

import QtQuick 2.6
import QtQuick.Layouts 1.3
import "parts"

Item {
    id: root

    Row {   //貸し出し返却ボタン
        id: topRow
        spacing: parent.width/6
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenterOffset: -(parent.height/8)
        anchors.verticalCenter: parent.verticalCenter

        Button {
            color: "#e74c3c"
            width: root.width/3
            height: root.height/3
            text: "Returning"
            onClicked: {
                menuID.visible = false
                stateID.state = "return"
            }
        }

        Button {
            color: "#03A9F4"
            width: root.width/3
            height: root.height/3
            text: "Lending"
            onClicked: {
                menuID.visible = false
                stateID.state = "lend"
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

            Image {
                anchors.fill: parent
                anchors.bottomMargin: parent.height/10
                anchors.topMargin: parent.height/10
                source: "pics/shutdown.png"
                fillMode: Image.PreserveAspectFit
            }

            onClicked: {
                Qt.quit();
            }
        }

        Button {
            id: seachButton
            color: "#4CAF50"
            Layout.fillWidth: true
            Layout.preferredHeight: parent.height/3

            Image {
                anchors.fill: parent
                anchors.bottomMargin: parent.height/10
                anchors.topMargin: parent.height/10
                source: "pics/search.png"
                fillMode: Image.PreserveAspectFit
            }

            onClicked: {
                menuID.visible = false
                stateID.state = "search"
            }
        }

        Button {
            color: "#4CAF50"
            Layout.fillWidth: true
            Layout.preferredHeight: parent.height/3

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
    }
}
