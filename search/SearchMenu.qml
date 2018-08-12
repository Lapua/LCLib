//検索のテキスト欄やボタン
import "../parts"
import QtQuick 2.6
import "PageBack.js" as JsUtil

Item {
    id: searchMenuRoot

    Grid {
        anchors.centerIn: parent
        columns: 3
        rowSpacing: searchMenuRoot.height/8
        columnSpacing: searchMenuRoot.width/15

        SearchButton {
            text: "キーワード"
            onClicked: {
                searchLoader.source = "SearchOption.qml"
                cppPageBack.setHistory("SearchMenu.qml");
            }
        }

        SearchButton {
            text: "タイトル"
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
