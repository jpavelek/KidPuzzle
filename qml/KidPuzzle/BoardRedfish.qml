import QtQuick 1.0
import "UI_page.js" as UI

Image {
    id: page
    width: 800// UI.screenWidth
    height: UI.screenHeight
    source: "redfish_board.png"
    opacity: 0.0
    property bool gameover: false

    Bit {
        source: "redfish_mid.png"
        dockX: 25; dockY:10; boardX: 310; boardY: UI.screenHeight-353; dockW: 70; dockH: 80
    }
    Bit {
        source: "redfish_tail.png"
        dockX: 25; dockY: 90; boardX: 604; boardY: UI.screenHeight-339; dockW: 70; dockH: 80
    }
    Bit {
        source: "redfish_head.png"
        dockX: 25; dockY: 180; boardX: 171; boardY: UI.screenHeight-339; dockW: 70; dockH: 80
    }
    Bit {
        source: "redfish_tailsection.png"
        dockX: 25; dockY: 230; boardX: 453; boardY: UI.screenHeight-352; dockW: 70; dockH: 80
    }
    Bit {
        source: "redfish_fin.png"
        dockX: 10; dockY: 290; boardX: 430; boardY: UI.screenHeight-219; dockW: 100; dockH: 40
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
