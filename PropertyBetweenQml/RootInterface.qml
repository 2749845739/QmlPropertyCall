import QtQuick 2.15
import QtQuick.Layouts 1.15
 import QtQuick.Controls 1.4

ColumnLayout {
    anchors.fill: parent
    Rectangle {
        id: rootRec
        Layout.fillWidth: true
        Layout.preferredHeight: 100
        color: "gray"
        opacity: 0.5
        Text {
            id: rootRecSize
            text: rootRec.width + " * " + rootRec.height
            font.pixelSize: 22
            anchors.centerIn: parent
        }
    }

    Loader {
        id: rootLoader
        Layout.alignment: Qt.AlignHCenter
        source: "qrc:/CusCalendar.qml"
    }

    TextField {
        id: rootText
        Layout.alignment: Qt.AlignHCenter
        text: qsTr("ASDFG")
        font.pixelSize: 22
        horizontalAlignment: Qt.AlignHCenter
        verticalAlignment: Qt.AlignHCenter
    }

    SecondLayer {
        Layout.alignment: Qt.AlignHCenter
        Layout.topMargin: 100
        Layout.fillWidth: true
    }

    Item{
        height: 50
    }
}
