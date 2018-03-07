import QtQuick 2.0

Rectangle {
    anchors.top: parent.top
    width: parent.width
    height: parent.height/7
    color: "#3498db"

    Image {
        anchors {
            verticalCenter: parent.verticalCenter
            right: parent.right
            rightMargin: y*2
        }
        height: parent.height/3*2
        fillMode: Image.PreserveAspectFit
        source: "../pics/home.png"
    }
}
