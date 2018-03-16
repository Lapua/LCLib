//LCのロゴ背景

import QtQuick 2.6

Image {
    source: "pics/lc_logo.jpg"
    fillMode: Image.PreserveAspectFit

    Rectangle {
        anchors.fill: parent
        color: "black"
        opacity: 0.5
    }
}
