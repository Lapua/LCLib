import QtQuick 2.7

ListView {
    anchors.fill: parent
    spacing: 5
    model: lentModel
    delegate: Rectangle {
        width: parent.width
        height: 100
        border.width: 5
        border.color: "#81D4FA"

        Rectangle {
            anchors.left: parent.left
            color: "white"
            height: parent.height
            width: parent.width/3*2

            Text {
                id: modelText
                anchors {
                    fill: parent
                    margins: 10
                }
                text: title
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                fontSizeMode: Text.Fit
                font.pixelSize: 200
            }
        }

        Rectangle {
            anchors.right: parent.right
            height: parent.height
            width: parent.width/3
            color: "#212121"

            Text {
                anchors.fill: parent
                text: name
                fontSizeMode: Text.Fit
                font.pixelSize: 200
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                color: "white"
            }
        }
    }
}
