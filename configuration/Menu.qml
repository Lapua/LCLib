import QtQuick 2.0
import QtQuick.Layouts 1.3
import "../parts" as CommonParts

Item {
    anchors.fill: parent

    CommonParts.TopLabel {
        id: topLabelId
        text: "設定"
    }

    GridLayout {
        anchors {
            centerIn: parent
            verticalCenterOffset: topLabelId.height/2
        }

        width: parent.width/5*4
        height: parent.height/3*2
        columns: 2
        columnSpacing: width/5
        rowSpacing: height/5

        Component.onCompleted: console.log(parent.width)

        Button {
            text.text: "ユーザー管理"
        }

        Button {
            text.text: "ユーザー追加"
        }

        Button {
            text.text: "書籍登録"
        }

        Button {
            text.text: "終了する"
            onClicked: Qt.quit()
        }
    }
}
