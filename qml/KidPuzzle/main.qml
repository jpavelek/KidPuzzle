import QtQuick 1.0
import "UI_page.js" as UI

Rectangle {
    width: UI.screenWidth
    height: UI.screenHeight
    color: "black"

    Loader {
        id: tileLoader
        source: "MainSelection.qml"
    }
}
