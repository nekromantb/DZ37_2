import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 800
    height: 600
    visible: true
    title: qsTr("VideoPlayer")

    Rectangle {
        id: video
        width: 640
        height: 480
        color: "#000000"
        radius: 10
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    Button {
        id: play
        text: "▶"
        font.pixelSize: 25
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: -250
        anchors.top: video.bottom
        anchors.topMargin: 15
        width: 50
        height: 35
        onClicked: { video.color = "#dddddd";}
    }

    Button {
        id: pause
        text: "║"
        font.pixelSize: 25
        anchors.left: play.right
        anchors.leftMargin: 5
        anchors.verticalCenter: play.verticalCenter
        width: 50
        height: 35
        onClicked: { video.color = "#888888";}
    }

    Button {
        id: stop
        text: "■"
        font.pixelSize: 25
        anchors.left: pause.right
        anchors.leftMargin: 5
        anchors.verticalCenter: play.verticalCenter
        width: 50
        height: 35
        onClicked: { video.color = "#000000";}
    }

    Button {
        id: rewind
        text: "«"
        font.pixelSize: 25
        anchors.left: stop.right
        anchors.leftMargin: 5
        anchors.verticalCenter: play.verticalCenter
        width: 50
        height: 35
        onClicked: { video.color = "#123456";}
    }

    Button {
        id: forward
        text: "»"
        font.pixelSize: 25
        anchors.left: rewind.right
        anchors.leftMargin: 5
        anchors.verticalCenter: play.verticalCenter
        width: 50
        height: 35
        onClicked: { video.color = "#654321";}
    }

    ProgressBar {
        id: progress_bar
        anchors.left: forward.right
        anchors.leftMargin: 5
        anchors.verticalCenter: play.verticalCenter
        width: 250
        height: 35
    }
}
