import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    property string txt: "nerver give up"
    property double count: 3.1456
    property var aNumber: 100
    property var aBool: false
    property var aString: "Hello world!"
    property var anotherString: String("#FF008800")
    property var aColor: Qt.rgba(0.2, 0.3, 0.4, 0.5)
    property var aRect: Qt.rect(10, 10, 10, 10)
    property var aPoint: Qt.point(10, 10)
    property var aSize: Qt.size(10, 10)
    property var aVector3d: Qt.vector3d(100, 100, 100)
    property var anArray: [1, 2, 3, "four", "five", (function() { return "six"; })]
    property var anObject: { "foo": 10, "bar": 20 }
    property var aFunction: (function() { return "one"; })

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
