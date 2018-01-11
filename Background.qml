import QtQuick 2.6

Image {
    source: "pics/lc_logo.jpg"
    fillMode: Image.PreserveAspectFit

    Rectangle {
        anchors.fill: parent
        color: "white"
        opacity: 0.5
    }
}
