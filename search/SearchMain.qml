//検索のメイン画面

import QtQuick 2.6
import "../parts"   //rootからの絶対パスに修正しよう!

Item {
    TopLabel {
        id: topLabel
        onClicked: {
            searchID.visible = false
            stateID.state = "menu"
        }
    }

    SearchList {
        anchors {
            top:topLabel.bottom
            topMargin: 5
            bottom: parent.bottom
            bottomMargin: 5
        }
        width: parent.width
    }
}
