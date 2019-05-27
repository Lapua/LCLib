import QtQuick 2.0
import Database 1.0

ListView {
    anchors.fill: parent
    spacing: 5
    model: userModel
    delegate: Item {
        width: parent.width
        height: 100

        Rectangle {
            anchors.centerIn: parent
            width: parent.width-20
            height: 90

            Text {
                text: id + " : " + name
            }
        }
    }
}
