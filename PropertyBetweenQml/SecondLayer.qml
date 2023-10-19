import QtQuick 2.15
 import QtQuick.Controls 1.4

TextField {
    id: secondText
    // 内部明确size, 便于预览效果，   实际size在调用处再次设置
    width: 200
    text: "second - root:" + rootRecSize.text
    font.pixelSize: 20
    horizontalAlignment: Qt.AlignHCenter
    verticalAlignment: Qt.AlignVCenter
}
