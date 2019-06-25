//検索のテキスト欄やボタン
import "../parts"
import QtQuick 2.6

Item {
    id: searchMenuRoot

    Grid {
        anchors.centerIn: parent
        columns: 3
        rowSpacing: searchMenuRoot.height/8
        columnSpacing: searchMenuRoot.width/15

        SearchButton {
            text.text: "キーワード"
            onClicked: {
                searchLoader.source = "SearchWord.qml"
            }
        }

        SearchButton {
            text.text: "alice"
        }
    }
}
