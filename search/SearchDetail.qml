import QtQuick 2.0
import QtQuick.Controls 2.2

Item {
    Rectangle {
        anchors.fill: parent
        anchors.margins: 10
        color: "white"
        border.width: 10
        border.color: "#81D4FA"

        ScrollView {
            id: scrollViewID
            anchors {
                fill: parent
                margins: 20
            }

            Column {
                DetailTextParts {
                    id: titleID
                }

                DetailTextParts {
                    id: statusID
                }
            }
        }
    }
}
