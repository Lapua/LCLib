import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    id: root
    visible: true
    width: 800
    height: 480

    Background{
        anchors.fill: parent
        LibMenu {anchors.fill: parent}
    }
}
