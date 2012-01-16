// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.0
import "UI_page.js" as UI

Image {
    id: baloon
    property int timeout
    MouseArea {
        anchors.fill: parent
        onPressed: {
            baloon.visible = false
            timer.running = false
            console.log("POP a ball")
        }
    }
    Timer {
        id: triggerTimer
        interval: timeout
        running: true
        repeat: false
        onTriggered: timer.running = true
    }

    Timer {
        id: timer
        interval: UI.bubbleUpdateInterval
        running: false
        repeat: true
        onTriggered: {
            baloon.y = baloon.y - 1
        }
    }
}
