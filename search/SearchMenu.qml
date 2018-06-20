//検索のテキスト欄やボタン
import "../parts"
import QtQuick 2.6

Item {
    Grid {
        anchors.centerIn: parent
        columns: 3
        rowSpacing: searchRoot.height/8
        columnSpacing: searchRoot.width/15

        SearchButton {
            text: "キーワード"
            onClicked: {
                searchState.state = "option"
                menuID.visible = false
                cppPageBack.setStateID("menu", "optionID")
            }
        }

        SearchButton {
            text: "タイトル"

            onClicked: {
                searchState.state = "option"
                menuID.visible = false
                cppPageBack.setStateID("menu", "optionID")
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

        SearchButton {
            text: "貸出中一覧"
        }
    }
}
