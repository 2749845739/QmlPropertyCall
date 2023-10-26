import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    property int index: 0
    text: "panel 1:  " + index
    font.pixelSize: 20

    // 这里只是简单的属性传递,其实可以使用属性绑定
    // Connections最适合复杂逻辑场景
    Connections {
        target: toolWorker
        function onSigAddIndex(val) {
            index = val
            console.log("index", index)
        }
    }
}
