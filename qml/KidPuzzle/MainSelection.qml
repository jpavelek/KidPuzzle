// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.0
import "UI_page.js" as UI

Rectangle {
    id: mainPage
    width: UI.screenWidth
    height: UI.screenHeight
    color: "gray"
    opacity: 0.0

    Component {
        id: tilesGridDelegate
        Image {
            width: UI.delegateWidth
            height: UI.delegateHeigh
            source: thumbnail
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    gridTiles.currentIndex = index
                    tileLoader.source = tileComponent
                    console.log("Start " + tileComponent)
                }
            }
        }
    }

    ListModel {
        id: testItems
        ListElement {
            tileComponent: "Lada.qml"
            thumbnail: "lada_thumbnail.png"
        }
        ListElement {
            tileComponent: "Lada.qml"
            thumbnail: "lada_thumbnail.png"
        }
        ListElement {
            tileComponent: "Lada.qml"
            thumbnail: "lada_thumbnail.png"
        }
        ListElement {
            tileComponent: "Lada.qml"
            thumbnail: "lada_thumbnail.png"
        }
        ListElement {
            tileComponent: "Lada.qml"
            thumbnail: "lada_thumbnail.png"
        }
        ListElement {
            tileComponent: "Lada.qml"
            thumbnail: "lada_thumbnail.png"
        }
        ListElement {
            tileComponent: "Lada.qml"
            thumbnail: "lada_thumbnail.png"
        }
        ListElement {
            tileComponent: "Lada.qml"
            thumbnail: "lada_thumbnail.png"
        }
    }


    GridView {
        id: gridTiles
        model: testItems
        cellWidth: UI.gridCellWidth
        cellHeight: UI.gridCellHeight
        flow: GridView.TopToBottom
        delegate: tilesGridDelegate
        anchors { fill: parent; topMargin: 20; bottomMargin: 20; leftMargin: 20; rightMargin: 20 }
    }

    Rectangle {
        id: addBar
        color: "red"
        opacity: 0.5
        height: 60
        anchors { left: parent.left; right: parent.right; bottom: parent.bottom }
    }

    Behavior on opacity {  PropertyAnimation { target: mainPage; property: "opacity"; duration: 300; easing.type: Easing.InOutQuad  } }

    Component.onCompleted: { UI.init(); opacity = 1 }

}

