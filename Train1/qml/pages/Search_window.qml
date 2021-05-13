import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All
   /* SilicaListView {
        id: newid
        model: 1
        anchors.fill: parent
        header: PageHeader {
            title: qsTr("Page with data")
        }
        delegate: BackgroundItem {
            id: idelegate

            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Не нажимать")+ "\n"+"Эта кнопка НЕ крашит приложение"
                anchors.verticalCenter: parent.verticalCenter
                color: idelegate.highlighted ? Theme.highlightColor : Theme.primaryColor
            }
            onClicked: pageStack.push(Qt.resolvedUrl("1.qml"))
        }
        VerticalScrollDecorator {}
    }*/
    SilicaListView {
        VerticalScrollDecorator {}

        width: page.width
        spacing: Theme.paddingLarge
        PageHeader {
            title: qsTr("\n"+"Поиск")

        }
            TextField {
                id: bodyField
                label: "Введите ФИО" + " " + index
                placeholderText: label
                width: parent.width
                EnterKey.iconSource: "image://theme/icon-m-enter-next"
                EnterKey.onClicked: appNameField.focus = true
            }





    }

}

