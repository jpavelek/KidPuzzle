import QtQuick 1.0
import "UI.js" as UI

Board {
    source: "butterfly_board.png"

    Bit {
        source: "butterfly_right_bottom.png"
        dockX: UI.leftMargin + 10; dockY:15; boardX: UI.leftMargin + 444; boardY: UI.screenHeight - 279; dockW: 110; dockH: 103
    }
    Bit {
        source: "butterfly_left_top.png"
        dockX: UI.leftMargin + 10; dockY:130; boardX: UI.leftMargin + 134; boardY: UI.screenHeight - 254; dockW: 110; dockH: 87
        z: 5
    }
    Bit {
        source: "butterfly_left_bottom.png"
        dockX: UI.leftMargin + 10; dockY:240; boardX: UI.leftMargin + 340; boardY: UI.screenHeight - 239; dockW: 110; dockH: 102
        z: 3
    }
    Bit {
        source: "butterfly_right_top.png"
        dockX: UI.leftMargin + 10; dockY:360; boardX: UI.leftMargin + 433; boardY: UI.screenHeight - 457; dockW: 110; dockH: 76
        z: 3
    }

}
