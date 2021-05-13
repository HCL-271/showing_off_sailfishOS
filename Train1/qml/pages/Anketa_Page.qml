import QtQuick 2.0

import QtQuick 2.0
import Sailfish.Silica 1.0

Page{
    // of the page, followed by our content.
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All
SilicaFlickable {
    contentHeight: column.height
    anchors.fill: parent

    // Place our content in a Column.  The PageHeader is always placed at the top
    // of the page, followed by our content.
    Column {
        id: column

        width: page.width
        spacing: Theme.paddingLarge

        Label {
            //x: Theme.horizontalPageMargin
            text: qsTr("Ну я же просил :(")
            color: Theme.secondaryHighlightColor
            font.pixelSize: Theme.fontSizeExtraLarge
        }
        PushUpMenu {
            MenuItem {
                text: qsTr("Вернуться")
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage_копия.qml"))
            }
        }
    }

        VerticalScrollDecorator {}
    }
}
