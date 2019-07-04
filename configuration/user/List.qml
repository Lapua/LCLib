import QtQuick 2.0
import "qrc:/parts"

Item {
    anchors.fill: parent

    TopLabel {
        id: topLabel
        text: "ユーザー管理"
    }

    ListView {
        anchors {
            top: topLabel.bottom
            bottom: parent.bottom
            margins: 10
        }
        width: parent.width
        spacing: 10
        model: userModel
        delegate: Delegate{}
    }
}
