.pragma library

var bits = 0

function init() {
    bits = 0
}

function addBit() {
    bits++
}

function bitDone() {
    bits--
}

function finished() {
    if (bits === 0) {
        return true
    } else {
        return false
    }
}

//Common
var screenWidth = 854;
var screenHeight = 480;

//main grid
var gridCellWidth = 200;
var gridCellHeight = 200;
var delegateWidth = 180;
var delegateHeigh = 180;

//Game page
var pickerBarWidth = 128;
var threshold = 100;
