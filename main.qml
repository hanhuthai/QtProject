import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    property int withRect: 50
    property int heighRefct: 50
    Rectangle{
       id: rec1
       width: withRect
       height: heighRefct
       color: "red"
    }

    Rectangle{
        id: rect2
        width: 50
        height: 50
        color: "blue"
        anchors.bottom: parent.bottom
        MouseArea{
            anchors.fill: parent
            onClicked: {
                withRect*= 2;
                heighRefct *=2;
            }
        }


    }
    Rectangle{
        id: rect3
        width: 50
        height: 50
        color: "green"
        anchors.left: rect2.right
        anchors.bottom: parent.bottom
        MouseArea{
            anchors.fill: parent
            onClicked: {
            withRect/= 2;
            heighRefct /=2;
        }
        }
    }

}
