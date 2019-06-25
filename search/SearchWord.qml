import QtQuick 2.0
import "../parts"

Item {
    Rectangle {
        anchors {
            right: parent.right
            rightMargin: parent.width/20
            left: parent.left
            leftMargin: parent.width/20
        }
        height: parent.height/5
        y: parent.height/5
        color: "white"

        TextInput {
            id: searchWordID
            anchors.fill: parent
            verticalAlignment: TextInput.AlignVCenter
            font.pointSize: textID.fontInfo.pointSize
            layer.enabled: true

            Image {
                anchors {
                    right: parent.right
                    top: parent.top
                    bottom: parent.bottom
                    margins: parent.height/10
                }
                source: "../pics/search.svg"
                fillMode: Image.PreserveAspectFit
                opacity: 0.4

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        db.searchWord("東京", false);
                    }
                }
            }
        }
    }

    CheckBox {
        id: checkBoxID
        anchors {
            right: textID.left
            rightMargin: parent.width/30
            verticalCenter: textID.verticalCenter
        }
        width: height
        height: textID.height
    }

    Text {
        id: textID
        anchors {
            left: parent.horizontalCenter
            leftMargin: -(checkBoxID.width/2)
        }
        y: parent.height/5*3
        width: height*3
        height: parent.width/12
        fontSizeMode: Text.Fit
        font.pointSize: 500
        text: "貸出可"
        color: "white"
    }

    /*MouseArea {
        anchors.fill: parent
        onClicked: {
            searchState.state = "list"
            optionID.visible = false
            cppGetJson.requestGet(searchWordID.text, " ")
            cppPageBack.setStateID("option", "listID");
            searchWordID.clear()
        }
    }*/
}
