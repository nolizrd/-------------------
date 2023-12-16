import QtQuick 2.15

Item {
    id:deleg
    property string time: ""
    property string message: ""
    Rectangle{
        id:rect
        border.color:"darkgrey"
        radius:5
        anchors.fill:parent
        anchors.leftMargin: 35
        anchors.topMargin: 10
        gradient:Gradient{
            GradientStop{position:0;color:"white"}
            GradientStop{position:1;color:"#CCFFFF"}
        }

        Text {
            text: '(' + time + ')';
            anchors.bottomMargin: 10
            anchors.rightMargin: 10
            anchors.bottom: rect.bottom
            anchors.right: rect.right
            color: "#330066"
        }

        Text {
            text: message;
            anchors.verticalCenter: row.verticalCenter
            anchors.top: rect.top
            anchors.topMargin: 12
            anchors.left: rect.left
            anchors.leftMargin: 12
            color: "#330066"

        }
    }
}
