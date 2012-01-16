import QtQuick 1.0
import "UI_page.js" as UI

Image {
    id: page
    width: UI.screenWidth
    height: UI.screenHeight
    source: "mushrooms.png"
    opacity: 0.0
    property bool gameover: false

    Bit {
        source: "mushrooms_star.png"
        dockX: 10; dockY: 30; boardX: 216; boardY: 226; dockW: 96; dockH: 96
    }
    Bit {
        source: "mushrooms_rectangle.png"
        dockX: 10; dockY: 130; boardX: 477; boardY: 80; dockW: 96; dockH: 96
    }
    Bit {
        source: "mushrooms_circle.png"
        dockX: 10; dockY: 230; boardX: 200; boardY: 30; dockW: 96; dockH: 96
    }
    Bit {
        source: "mushrooms_pentagon.png"
        dockX: 10; dockY: 330; boardX: 620; boardY: 240; dockW: 96; dockH: 96
    }

    Image {
        id: returnArrow
        source: "back.png"
        anchors { right: parent.right; bottom: parent.bottom }
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
