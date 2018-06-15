import QtQuick 2.0

Rectangle {
    radius: width/10
    color: "#c8c8c8"

    property bool onOff: true

    Image {
        id: checkID
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
        source: "../pics/check.svg"
        visible: true
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            onOff = !onOff
        }
    }

    StateGroup {
        id: checkBoxID
        states: [
            State {
                when: onOff == true
                PropertyChanges {
                    target: checkID
                    opacity: 1
                }
            },
            State {
                when: onOff == false
                PropertyChanges {
                    target: checkID
                    opacity: 0.3
                }
            }
        ]
    }
}
