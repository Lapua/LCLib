import QtQuick 2.6

Item {
    id: elemRoot
    Row {
        spacing: parent.width/5
        anchors.centerIn: parent

        Rectangle {
            id: leftButton
            color: "red"
            width: elemRoot.width/4
            height: elemRoot.height/3

            Text {
                anchors.fill: parent
                text: "left"
                color: "white"
                fontSizeMode: Text.Fit
                font.pointSize: 500
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: rightButton
            color: "blue"
            width: elemRoot.width/4
            height: elemRoot.height/3

            Text {
                anchors.fill: parent
                text: "right"
                color: "white"
                fontSizeMode: Text.Fit
                font.pointSize: 500
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
    }
}
