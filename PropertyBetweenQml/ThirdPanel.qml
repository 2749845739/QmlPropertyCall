import QtQuick 2.15

Rectangle {
    width: 100
    height: 80

    color: "lightGreen"
    Text {
        id: title
        text: qsTr("03")
        font.pixelSize: 20
        anchors.centerIn: parent
    }

    Component.onCompleted: {
        // 直接调用同级界面的属性
//        console.log("placeholderText", placeholderText)


        //直接调用父界面的属性/组件
        console.log(pane02.placeholderText)

    }
}
