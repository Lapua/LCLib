//検索結果のListView部分

import QtQuick 2.7
import QtQuick.Layouts 1.3

ListView {
    spacing: 5
    model: searchModel

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
            text: model.modelData
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            fontSizeMode: Text.Fit
            font.pixelSize: 200
        }
    }
}
