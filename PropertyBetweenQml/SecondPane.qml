import QtQuick 2.15
import QtQuick.Controls 1.4

TextField {
    id: secondText
    property int area: width * height
    signal click()
    signal sigValue(int loX/*, int loY*/)
    // 内部明确size, 便于预览效果，   实际size在调用处再次设置
    width: 200
    height: 60
    // 子界面可以直接调用父界面的属性
//    text: rootRecSize.text
    font.pixelSize: 20
    horizontalAlignment: Qt.AlignHCenter
    verticalAlignment: Qt.AlignVCenter
    MouseArea {
        anchors.fill: parent
        onClicked:  {
            secondText.click()
            secondText.sigValue(mouseX/*, mouseY*/)
        }
    }
}
