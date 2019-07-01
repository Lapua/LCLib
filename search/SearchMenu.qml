//検索のテキスト欄やボタン
import "../parts"
import QtQuick 2.6
import QtQuick.Layouts 1.3

Item {
    id: searchMenuRoot

    RowLayout {
        anchors.centerIn: parent
        spacing: searchMenuRoot.width/15

        SearchButton {
            text.text: "キーワード"
            onClicked: {
                searchLoader.setSource("SearchWord.qml")
            }
        }

        SearchButton {
            text.text: "貸出中一覧"
            onClicked: {
                searchLoader.setSource("SearchLentList.qml")
                db.getLentList();
            }
        }
    }
}
