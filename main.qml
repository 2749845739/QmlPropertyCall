import QtQuick 2.15
import QtQuick.Window 2.15
import "./PropertyBetweenQml"

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    RootInterface {
        //        anchors.fill: parent
        anchors.centerIn: parent
    }
}
