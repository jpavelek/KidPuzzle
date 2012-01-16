// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.0
import "UI_page.js" as UI

Image {
    id: aBit
    property int dockX: 0           // what is the dock position on the left hand side
    property int dockY: 0           // what is the dock position on the left hand side
    property int dockW: 0           // how wide is in dock
    property int dockH: 0           // how high is in dock
    property int boardX: 0          // what is the hole position
    property int boardY: 0          // what is the hole position
    property bool free: true        // is this still not placed and free in the dock?

    function closeEnough(x,y,tx,ty) {
        if ((Math.abs(x-tx) + Math.abs(y-ty)) < UI.threshold) {
            return true
        } else {
            return false
        }
    }

    Component.onCompleted: { width = dockW; height = dockH; x = dockX; y = dockY }
    Behavior on x { PropertyAnimation { duration: 250; easing.type: Easing.InOutQuad } }
    Behavior on y { PropertyAnimation { duration: 250; easing.type: Easing.InOutQuad } }
    Behavior on width { PropertyAnimation { duration: 250; easing.type: Easing.InOutQuad } }
    Behavior on height { PropertyAnimation { duration: 250; easing.type: Easing.InOutQuad } }

    MouseArea {
        anchors.fill: parent
        drag.target: aBit
        onPressed: {
            aBit.width = aBit.sourceSize.width
            aBit.height = aBit.sourceSize.height
        }
        onReleased: {
            if (closeEnough(aBit.x, aBit.y, aBit.boardX, aBit.boardY)) {
                free = false
                aBit.x = boardX
                aBit.y = boardY
                drag.target = undefined
            } else {
                aBit.width = dockW
                aBit.height = dockH
                aBit.x = dockX
                aBit.y = dockY
            }
        }
    }
}