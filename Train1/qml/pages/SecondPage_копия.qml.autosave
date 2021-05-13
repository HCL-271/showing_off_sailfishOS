import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    SilicaListView {
     VerticalScrollDecorator {}
        id: listView
        model: 20
        anchors.fill: parent

        header: PageHeader {
            title: qsTr(" " + "\n"+" "+ "\n"+" ")
        }
        delegate: BackgroundItem {
            id: delegate


            TextField {
                id: bodyField
                label: "Data" + " " + index
                placeholderText: label
                width: parent.width
                EnterKey.iconSource: "image://theme/icon-m-enter-next"
                EnterKey.onClicked: appNameField.focus = true
            }
        }
        ButtonLayout {
            id: row
            anchors.horizontalCenter: parent.horizontalCenter

            Button {
                text: "Не нажимать"+ "\n"+"Эта кнопка НЕ крашит приложение"

                onClicked: pageStack.push(Qt.resolvedUrl("1.qml"))

            }
            Button {
                text: "Завершить заполнение"

                onClicked: pageStack.push(Qt.resolvedUrl("Search_window.qml"))

            }
        }

        VerticalScrollDecorator {}
    }
}
