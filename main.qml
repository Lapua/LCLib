//各エレメントの配置と状態遷移

import QtQuick 2.6
import QtQuick.Window 2.2
import "search"
import "readBook"

Window {
    id: root
    visible: true
    width: 800
    height: 480

    Background {    //表示する各エレメントを配置
        anchors.fill: parent

        Loader {
            id: rootLoader
            anchors.fill: parent
            source: "LibMenu.qml"
            focus: true
        }
    }
}
