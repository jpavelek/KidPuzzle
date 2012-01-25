import QtQuick 1.0
import "UI.js" as UI

Board {
    source: "puppy_board.png"

    Bit {
        source: "puppy_ball.png"
        dockX: UI.leftMargin + 40; dockY:10; boardX: UI.leftMargin + 128; boardY: 1; dockW: 60; dockH: 60
    }
    Bit {
        source: "puppy_torso.png"
        dockX: UI.leftMargin + 30; dockY: 80; boardX: UI.leftMargin + 480; boardY: UI.screenHeight - 245; dockW: 84; dockH: 60
    }
    Bit {
        source: "puppy_legs.png"
        dockX: UI.leftMargin + 50; dockY: 150; boardX: UI.leftMargin + 128; boardY: 0; dockW: 49; dockH: 60
    }
    Bit {
        source: "puppy_face.png"
        dockX: UI.leftMargin + 50; dockY: 220; boardX: UI.leftMargin + 230; boardY: UI.screenHeight - 250; dockW: 50; dockH: 59
    }
    Bit {
        source: "puppy_leg.png"
        dockX: UI.leftMargin + 60; dockY: 290; boardX: UI.leftMargin + 479; boardY: 0; dockW: 26; dockH: 60
    }
    Bit {
        source: "puppy_ear.png"
        dockX: UI.leftMargin + 60; dockY: 360; boardX: UI.leftMargin + 479; boardY: 0; dockW: 37; dockH: 60
    }
    Bit {
        source: "puppy_back_leg.png"
        dockX: UI.leftMargin + 40; dockY: 440; boardX: UI.leftMargin + 479; boardY: 0; dockW: 59; dockH: 35
    }
}
