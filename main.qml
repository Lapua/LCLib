import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    id: root
    visible: true
    width: 800
    height: 480

    Background {
        anchors.fill: parent
        LibMenu {
            id: menuID
            anchors.fill: parent
        }

        SearchList {
            id: searchID
            anchors.fill: parent
            visible: false
        }
    }

    StateGroup {
        id: stateID
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
            }
        ]
    }
}
