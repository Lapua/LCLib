//検索のメイン画面

import QtQuick 2.6
import "../parts"   //rootからの絶対パスに修正しよう!

Item {
    TopLabel {
        id: topLabel
        text: "検索"
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
