import QtQuick 1.0
import "UI_page.js" as UI

Image {
    id: page
    width: UI.screenWidth
    height: UI.screenHeight
    source: "aquarium_board.png"
    opacity: 0.0
    property bool gameover: false

    Bit {
        source: "aquarium_1.png"
        dockX: 25; dockY: 30; boardX: 177; boardY: 480-458; dockW: 73; dockH: 96
    }
    Bit {
        source: "aquarium_2.png"
        dockX: 45; dockY: 130; boardX: 153; boardY: 480-245; dockW: 33; dockH: 96
    }
    Bit {
        source: "aquarium_3.png"
        dockX: 20; dockY: 230; boardX: 364; boardY: 480-170; dockW: 77; dockH: 96
    }
    Bit {
        source: "aquarium_4.png"
        dockX: 33; dockY: 330; boardX: 652; boardY: 480-222; dockW: 51; dockH: 96
    }
    Bit {
        source: "aquarium_5.png"
        dockX: 33; dockY: 330; boardX: 493; boardY: 480-427; dockW: 51; dockH: 96
    }

    Image {
        id: returnArrow
        source: "back.png"
        anchors { right: parent.right; top: parent.top }
        MouseArea {
            anchors.fill: parent
            onClicked: { tileLoader.source = "MainSelection.qml" }
        }
    }

    onGameoverChanged: {
        loader.sourceComponent = baloonPopper
    }

    Loader {
        id: loader
    }

    Component {
        id: baloonPopper
        Repeater {
            model: UI.nrBaloons
            delegate: Baloon {
                x: Math.floor(Math.random()*UI.screenWidth*0.8)
                y: UI.screenHeight
                source: UI.baloonColors[Math.floor(Math.random()*UI.nrColors)]
                timeout: Math.floor(Math.random()*UI.seedTime)
            }
        }
    }

    Component.onCompleted: PropertyAnimation { target: page; property: "opacity"; to: 1; duration: 300; easing.type: Easing.InOutQuad }
}
