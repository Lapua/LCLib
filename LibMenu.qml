import QtQuick 2.6

Item {
    id: elemRoot

    Row {
        spacing: parent.width/5
        anchors.centerIn: parent

        Button {
            color: "red"
            width: elemRoot.width/4
            height: elemRoot.height/3
            text: "left"
        }

        Button {
            color: "blue"
            width: elemRoot.width/4
            height: elemRoot.height/3
            text: "right"
        }
    }
}
