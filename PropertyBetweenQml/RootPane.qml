import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 1.4

ColumnLayout {
    anchors.fill: parent
    Rectangle {
        id: rootRec
        Layout.fillWidth: true
        Layout.preferredHeight: 50
        color: "green"
        opacity: 0.5
        Text {
            id: rootRecSize
            text: "start"
            font.pixelSize: 22
            anchors.centerIn: parent
        }
        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: {
                rootRec.opacity = 0.2
                // 开始建立信号连接机制
                pane01.click.connect(slotNone)              // 无参数信号
                pane02.sigValue.connect(slotPara)           // 有参数信号
                pane03.heightChanged.connect(slotProperty)  // 属性信号
            }
        }
    }

    SecondPane {
        id: pane01
        Layout.alignment: Qt.AlignHCenter
    }

    SecondPane {
        id: pane02
        Layout.alignment: Qt.AlignHCenter
    }

    SecondPane {
        id: pane03
        Layout.alignment: Qt.AlignHCenter
        Layout.preferredHeight: parent.height / 4
    }


    function slotNone(){
        pane01.text = "slotNone"
    }

    function slotPara(a){
         pane02.text = "slotPara: " + a
    }

    function slotProperty(){
         pane03.text = "slotProperty" + pane03.height
    }
}
