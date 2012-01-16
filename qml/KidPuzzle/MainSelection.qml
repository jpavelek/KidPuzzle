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
        Rectangle {
            radius: 16
            width: UI.delegateWidth
            height: UI.delegateHeigh
            color: "yellow"
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
            tileComponent: "Mushrooms.qml"
        }
        ListElement {
            tileComponent: "Mushrooms.qml"
        }
        ListElement {
            tileComponent: "Mushrooms.qml"
        }
        ListElement {
            tileComponent: "Mushrooms.qml"
        }
        ListElement {
            tileComponent: "Mushrooms.qml"
        }
        ListElement {
            tileComponent: "Mushrooms.qml"
        }
        ListElement {
            tileComponent: "Mushrooms.qml"
        }
        ListElement {
            tileComponent: "Mushrooms.qml"
        }
        ListElement {
            tileComponent: "Mushrooms.qml"
        }
        ListElement {
            tileComponent: "Mushrooms.qml"
        }
        ListElement {
            tileComponent: "Mushrooms.qml"
        }
        ListElement {
            tileComponent: "Mushrooms.qml"
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

    Component.onCompleted: PropertyAnimation { target: mainPage; property: "opacity"; to: 1; duration: 300; easing.type: Easing.InOutQuad  }

}

