import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5

Window {
    id: win
    minimumWidth: 360
    width: 360
    height: 640
    visible: true
    title: "Messenger App"
    property int defMargin: 8

    Rectangle {
        id: background
        anchors.fill: parent
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#FFC0CB" } // Pastel Pink
            GradientStop { position: 1.0; color: "#FFDAB9" } // Peach
        }
    }

    ListModel {
        id: my_model
        //ListElement { message: ""; time: "19:10" }
    }

    Page {
        id: page
        anchors.fill: parent
        background: null

        footer: PageFooter {
            onNewMessage: {
                var newMsg = {};
                newMsg.message = msg;
                newMsg.time = Qt.formatTime(new Date(), "hh:mm");
                my_model.append(newMsg);
            }
        }

        Component {
            id: my_delegate
            Delegate {
                time: model.time
                message: model.message
                width: parent.width * 0.9
                height: 60
                anchors.centerIn: win
            }
        }

        ListView {
            id: my_list
            anchors.fill: parent
            model: my_model
            delegate: my_delegate
        }
    }
}
