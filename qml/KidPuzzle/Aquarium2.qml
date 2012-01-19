import QtQuick 1.0
import "UI_page.js" as UI

Image {
    id: page
    width: 800// UI.screenWidth
    height: UI.screenHeight
    source: "aquarium2_board.png"
    opacity: 0.0
    property bool gameover: false

    Bit {
        source: "aquarium_1.png"
        dockX: 10; dockY:10; boardX: 571; boardY: UI.screenHeight-316; dockW: 116; dockH: 80
    }
    Bit {
        source: "aquarium_2.png"
        dockX: 10; dockY: 130; boardX: 386; boardY: UI.screenHeight-437; dockW: 100; dockH: 33
    }
    Bit {
        source: "aquarium_3.png"
        dockX: 20; dockY: 210; boardX: 459; boardY: UI.screenHeight-181; dockW: 79; dockH: 80
    }
    Bit {
        source: "aquarium_4.png"
        dockX: 20; dockY: 310; boardX: 202; boardY: UI.screenHeight-427; dockW: 89; dockH: 80
    }
    Bit {
        source: "aquarium_5.png"
        dockX: 45; dockY: 410; boardX: 229; boardY: UI.screenHeight-248; dockW: 44; dockH: 80
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
        if (gameover) {
            loader.sourceComponent = baloonPopper
        }
    }

    Loader {
        id: loader
    }

    Component {
        id: baloonPopper
        Repeater {
            model: UI.nrBaloons
            Baloon {
                x: Math.floor(Math.random()*UI.screenWidth*0.7 + UI.screenWidth*0.1)
                y: UI.screenHeight - 1
                source: UI.baloonColors[Math.floor(Math.random()*UI.nrColors)]
                timeout: Math.floor(Math.random()*UI.seedTime)
            }
        }
    }

    Component.onCompleted: PropertyAnimation { target: page; property: "opacity"; to: 1; duration: 300; easing.type: Easing.InOutQuad }
}
