import QtQuick 1.0
import "UI_page.js" as UI

Image {
    id: page
    width: 800// UI.screenWidth
    height: UI.screenHeight
    source: "fish_board.png"
    opacity: 0.0
    property bool gameover: false

    Bit {
        source: "fish_1.png"
        dockX: 40; dockY:10; boardX: 128; boardY: 0; dockW: 37; dockH: 70
    }
    Bit {
        source: "fish_2.png"
        dockX: 10; dockY: 90; boardX: 391; boardY: 0; dockW: 105; dockH: 70
    }
    Bit {
        source: "fish_3.png"
        dockX: 10; dockY: 180; boardX: 128; boardY: UI.screenHeight-168; dockW: 110; dockH: 34
    }
    Bit {
        source: "fish_4.png"
        dockX: 10; dockY: 230; boardX: 128; boardY: 0; dockW: 110; dockH: 45
    }
    Bit {
        source: "fish_5.png"
        dockX: 30; dockY: 290; boardX: 507; boardY: UI.screenHeight-332; dockW: 62; dockH: 70
    }
    Bit {
        source: "fish_6.png"
        dockX: 10; dockY: 370; boardX: 173; boardY: UI.screenHeight-423; dockW: 94; dockH: 70
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
