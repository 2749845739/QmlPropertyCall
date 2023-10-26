import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    property int index: 0
    anchors.fill: parent
    text: "panel 4:  " + index
    font.pixelSize: 20
    onClicked: {
        index ++
        // 触发C++中的信号
        toolWorker.sigAddIndex(index)
    }
    background: Rectangle{
        color: "lightGreen"
    }
}
