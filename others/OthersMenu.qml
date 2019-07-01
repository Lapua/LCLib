import QtQuick 2.0
import QtQuick.Layouts 1.3
import "../parts"

Item {
    anchors.fill: parent

    GridLayout {
        anchors.fill: parent
        rows: 2

        Button {
            color: "#4CAF50"
            text.text: "ユーザーリスト"
            width: 50
            height: 50

            MouseArea {
                anchors.fill: parent
            }
        }

        Button {
            color: "#4CAF50"
            text.text: "ユーザー追加"

            MouseArea {
                anchors.fill: parent
            }
        }

        Button {
            color: "#4CAF50"
            text.text: "書籍登録"

            MouseArea {
                anchors.fill: parent
            }
        }

        Button {
            color: "#4CAF50"
            text.text: "終了する"

            MouseArea {
                anchors.fill: parent
                onClicked: Qt.quit()
            }
        }
    }
}
