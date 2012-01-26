import QtQuick 1.0
import "UI.js" as UI

Board {
    source: "kitten_board.png"

    Bit {
        source: "puppy_ball.png"
        dockX: UI.leftMargin + 40; dockY:10; boardX: UI.leftMargin + 166; boardY: UI.screenHeight - 200; dockW: 60; dockH: 60
    }
}
