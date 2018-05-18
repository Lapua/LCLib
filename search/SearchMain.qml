//検索のメイン画面

import QtQuick 2.6
import "../parts"   //rootからの絶対パスに修正しよう!

Item {
    TopLabel {
        id: topLabel

        onClicked: {
            searchID.visible = false
        }

        Image {
            anchors {
                verticalCenter: parent.verticalCenter
                left: parent.left
                leftMargin: y*2
            }
            height: parent.height/3*2
            fillMode: Image.PreserveAspectFit
            source: "../pics/arrow.svg"

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    //stateID.state = "menu"
                    //root.clicked()
                }
            }
        }
    }

    Item {
        anchors {
            top:topLabel.bottom
            topMargin: 5
            bottom: parent.bottom
            bottomMargin: 5
        }
        width: parent.width
        z: -1

        SearchList {
            id: listID
            anchors.fill: parent
        }

        SearchDetail {
            id: detailID
            anchors.fill: parent
            visible: false
        }
    }

    StateGroup {
        id: searchState
        states: [
            State {
                name: "list"
                PropertyChanges {
                    target: listID
                    visible: ture
                }
            },
            State {
                name: "detail"
                PropertyChanges {
                    target: detailID
                    visible: true
                }
            }
        ]
    }
}
