import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    property string txt: "nerver give up"
    property double count: 3.1456

    Row{
        id: row1
        anchors.centerIn: parent
        spacing: 20
        Rectangle{
            id: rec1
            color: "red"
            width: 140
            height: 140
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("Click to red regtangle")
                    txt ="NGU"
                }
            }
        }
        Rectangle{
            id: rec2
            color: "blue"
            width: 140
            height: 140
            radius: 70
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    txt= destroy()
                }
            }

            Text {
                anchors.centerIn: parent
                id: name
                text: txt
            }
        }

    }
    Component.onCompleted: {
        console.log("IN ra so: ", count? false:true)
    }
}
