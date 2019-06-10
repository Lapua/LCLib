//ホームボタンや戻るボタンなどを配置する上の青いラベル

import QtQuick 2.0

Rectangle {
    id: root
    anchors.top: parent.top
    width: parent.width
    height: parent.height/7
    z: 1
    color: "#3498db"

    property alias text: text.text
    property alias homeButtonId: homeButtonId
    signal clicked()

    Text {
        id: text
        anchors.fill: parent
        color: "white"
        fontSizeMode: Text.Fit
        font.pointSize: 500
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Image {
        id: homeButtonId
        anchors {
            verticalCenter: parent.verticalCenter
            right: parent.right
            rightMargin: y*2
        }
        height: parent.height/3*2
        fillMode: Image.PreserveAspectFit
        source: "../pics/home.svg"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                rootLoader.setSource("../LibMenu.qml")
            }
        }
    }
}
