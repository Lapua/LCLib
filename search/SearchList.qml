import QtQuick 2.0

ListView {
    //model: bookModel
    model:  ListModel {
        ListElement {
            value: "1"
        }
        ListElement {
            value: "2"
        }
    }

    delegate:   Rectangle {
        color: "white"
        width: parent.width
        height: modelText.contentHeight

        Text {
            id: modelText
            text: model.value
        }
    }
}
