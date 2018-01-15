import QtQuick 2.6

Item {
    id: elemRoot

    Row {
        id: centerRow
        spacing: parent.width/6
        anchors.centerIn: parent

        Button {
            color: "#f44336"
            width: elemRoot.width/4
            height: elemRoot.height/3
            text: "返却"
        }

        Button {
            color: "#03A9F4"
            width: elemRoot.width/4
            height: elemRoot.height/3
            text: "貸出"
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
        }

        Button {
            color: "#4CAF50"
            width: elemRoot.width/6
            height: elemRoot.height/5
            text: "検索"
        }
    }
}
