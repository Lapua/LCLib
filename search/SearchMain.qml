//検索のメイン画面

import QtQuick 2.6
import "../parts"   //rootからの絶対パスに修正しよう!
import "PageBack.js" as JsUtil

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
                    cppPageBack.back()
                }
            }
        }
    }

    //各画面
    Loader {
        id: searchLoader
        objectName: "searchLoader"
        anchors {
            top:topLabel.bottom
            topMargin: 5
            bottom: parent.bottom
            bottomMargin: 5
        }
        width: parent.width
        z: -1
        asynchronous: true
        source: "SearchMenu.qml"
    }
}
