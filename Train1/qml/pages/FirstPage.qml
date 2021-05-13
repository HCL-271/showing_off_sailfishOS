import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: qsTr("My name is Van. I'm an artist. A perfomance artist.")
                //onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
        }
        PushUpMenu {
            MenuItem {
                text: qsTr("Перейти на страницу с анкетой")
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
        }
        //PullLeftMenu{

        //}

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Cделано в России")

            }
            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Заполняй анкету"+ "\n"+"Ща поберем тебе соседей")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge

             }

        ButtonLayout {
            id: row
            anchors.horizontalCenter: parent.horizontalCenter

            Button {
                text: "Переход на анкету"
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage_копия.qml"))
            }


        }
    }}
}
