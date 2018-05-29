//検索のテキスト欄やボタン
import "../parts"
import QtQuick 2.6

Item {
    Grid {
        anchors.centerIn: parent
        columns: 2
        rowSpacing: searchRoot.height/8
        columnSpacing: searchRoot.width/9

        SearchButton {
            text: "タイトル"

            onClicked: {
                searchState.state = "title"
                menuID.visible = false
            }
        }

        SearchButton {
            text: "ジャンル"
        }

        SearchButton {
            text: "著者"
        }

        SearchButton {
            text: "出版社"
        }
    }
}
