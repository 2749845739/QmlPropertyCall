import QtQuick 2.15
import QtQuick.Window 2.15
import "./PropertyBetweenQml"

Window {
    width: 400
    height: 200
    visible: true
    title: qsTr("Hello World")

    RootPane {
        anchors.centerIn: parent
    }
}
