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
        LibMenu {
            id: menuID
            anchors.fill: parent
        }

        SearchMain {
            id: searchID
            objectName: "searchID"
            anchors.fill: parent
            visible: false
        }

        Lend {
            id: lendID
            anchors.fill: parent
            visible: false
        }

        Return {
            id: returnID
            anchors.fill: parent
            visible: false
        }
    }

    StateGroup {    //画面遷移
        id: stateID
        objectName: "stateID"
        states: [
            State {
                name: "menu"
                PropertyChanges {
                    target: menuID
                    visible: true
                }
            },
            State {
                name: "search"
                PropertyChanges {
                    target: searchID
                    visible: true
                }
            },
            State {
                name: "lend"
                PropertyChanges {
                    target: lendID
                    visible: true
                }
            },
            State {
                name: "return"
                PropertyChanges {
                    target: returnID
                    visible: true
                }
            }
        ]
    }
}
