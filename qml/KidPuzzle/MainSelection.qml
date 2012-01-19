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
            id: thumbnailImage
            width: UI.delegateWidth
            height: UI.delegateHeigh
            source: thumbnail
            MouseArea {
                anchors.fill: (boardEnabled) ? parent : undefined
                onClicked: {
                    gridTiles.currentIndex = index
                    tileLoader.source = tileComponent
                    console.log("Start " + tileComponent)
                }
            }
            Rectangle {
                visible: !boardEnabled
                anchors.fill: thumbnailImage
                radius: 30
                opacity: 0.5
                color: "black"
            }
            Text {
                visible: (buyTile == undefined) ? false : true
                text: qsTr("Upgrade for $1.59")
                anchors { horizontalCenter: parent.horizontalCenter; verticalCenter: parent.verticalCenter }
                font.pixelSize: 32
                color: "black"
                font.bold: true
            }
        }
    }

    ListModel {
        id: testItems
        ListElement {
            tileComponent: "Lada.qml"
            thumbnail: "lada_thumbnail.png"
            boardEnabled: true
        }
        ListElement {
            tileComponent: "BuyFullVersion.qml"
            thumbnail: "buy_full_version_thumbnail.png"
            boardEnabled: true
            buyTile: true
        }
        ListElement {
            tileComponent: "Aquarium.qml"
            thumbnail: "aquarium_thumbnail.png"
            boardEnabled: true
        }
        ListElement {
            tileComponent: "Aquarium2.qml"
            thumbnail: "aquarium2_thumbnail.png"
            boardEnabled: true
        }
        ListElement {
            tileComponent: "BoardFish.qml"
            thumbnail: "fish_thumbnail.png"
            boardEnabled: true
        }
        ListElement {
            tileComponent: "BoardRedfish.qml"
            thumbnail: "redfish_thumbnail.png"
            boardEnabled: true
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
        height: 50
        anchors { left: parent.left; right: parent.right; bottom: parent.bottom }
        Row {
            Image {
                id: ad1
                source: "Banner-320-50.png"
            }
            Image {
                id: ad2
                source: "Banner-320-50.png"
            }
        }
    }

    Behavior on opacity {  PropertyAnimation { target: mainPage; property: "opacity"; duration: 300; easing.type: Easing.InOutQuad  } }

    Component.onCompleted: { UI.init(); opacity = 1 }

}

