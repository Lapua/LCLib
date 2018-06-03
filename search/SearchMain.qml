//検索のメイン画面

import QtQuick 2.6
import "../parts"   //rootからの絶対パスに修正しよう!

Item {
    TopLabel {
        id: topLabel
        text: "検索"
        onClicked: {
            searchID.visible = false
        }

        //戻るボタン
        Image {
            visible: true
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

    //各画面
    Item {
        id: searchRoot

        anchors {
            top:topLabel.bottom
            topMargin: 5
            bottom: parent.bottom
            bottomMargin: 5
        }
        width: parent.width
        z: -1

        SearchMenu {
            id: menuID
            anchors.fill: parent
            visible: false
        }

        SearchOption {
            id: optionID
            anchors.fill: parent
            visible: true
        }

        SearchLTitle {
            id: titleID
            anchors.fill: parent
            visible: false
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
                name: "menu"
                PropertyChanges {
                    target: menuID
                    visible: true
                }
            },
            State {
                name: "title"
                PropertyChanges {
                    target: titleID
                    visible: true
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
