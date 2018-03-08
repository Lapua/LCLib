import QtQuick 2.7
import QtQuick.Layouts 1.3

ListView {
    spacing: 5


    //model: bookModel
    model: ListModel {
        ListElement {
            value: "1"
        }
        ListElement {
            value: "2"
        }
    }

    delegate: Rectangle {
        width: parent.width
        height: 100
        color: "white"
        border.width: 5
        border.color: "#81D4FA"

        Text {
            id: modelText
            anchors {
                fill: parent
                margins: 10
            }
            text: model.value
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            fontSizeMode: Text.Fit
            font.pixelSize: 200
        }
    }
}
