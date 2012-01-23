import QtQuick 1.0
import "UI.js" as UI

Board {
    source: "bbfish_board.png"

    Bit {
        source: "bbf_tail.png"
        dockX: UI.leftMargin + 40; dockY:10; boardX: UI.leftMargin + 128; boardY: 1; dockW: 37; dockH: 70
    }
    Bit {
        source: "bbf_head.png"
        dockX: UI.leftMargin + 10; dockY: 90; boardX: UI.leftMargin + 480; boardY: UI.screenHeight - 245; dockW: 105; dockH: 70
    }
    Bit {
        source: "bbf_fin.png"
        dockX: UI.leftMargin + 10; dockY: 180; boardX: UI.leftMargin + 128; boardY: 0; dockW: 110; dockH: 34
    }
    Bit {
        source: "bbf_belly.png"
        dockX: UI.leftMargin + 10; dockY: 230; boardX: UI.leftMargin + 230; boardY: UI.screenHeight - 250; dockW: 110; dockH: 45
    }
    Bit {
        source: "bbf_forehead.png"
        dockX: UI.leftMargin + 30; dockY: 290; boardX: UI.leftMargin + 479; boardY: 0; dockW: 62; dockH: 70
    }
}


