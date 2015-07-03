import QtQuick 2.2

Rectangle{
    id: root
    width: 800
    height: 480
    gradient: Gradient{
        GradientStop {position: 0.0; color: "black"}
        GradientStop {position: 1.0; color: "#0B3B0B"}
    }

    Rectangle{
        id:statusRectanlge
        color: "#00FF00"
        height: parent.height
        width: parent.width / 10
        anchors.left: parent.left
    }

    Text{
        id: roomName
        style: Text.Sunken
        font.pixelSize: 40
        color: "white"
        text: qsTr('Zelda')

        anchors.left: statusRectanlge.right
        anchors.leftMargin: 40
        anchors.top: parent.top
        anchors.topMargin: 60
    }

    Text {
        id: availability
        text: qsTr("Available")
        style: Text.Sunken
        font.pixelSize: 80
        color: "white"

        anchors.left:roomName.left
        anchors.top: nextMeetingStr.top
    }

    Text {
        id:remainingTime
        text: qsTr("Untill 13:00")
        style: Text.Sunken
        font.pixelSize: 40
        color: "white"

        anchors.horizontalCenter: availability.horizontalCenter
        anchors.top: availability.bottom

    }

    Text {
        id: timeInfo
        style: Text.Sunken
        text: qsTr("12:45")
        font.pixelSize: 80
        color: "white"

        anchors.right: parent.right
        anchors.rightMargin: 60
        anchors.top: parent.top
        anchors.topMargin: 60

    }
    Text{
        id: dateInfo
        style: Text.Sunken
        text: qsTr("12/05/2014")
        color: "white"
        font.pixelSize: 30

        anchors.top: timeInfo.bottom
        anchors.topMargin: 10
        anchors.horizontalCenter: timeInfo.horizontalCenter
    }


    Text {
        id: nextMeetingStr
        style: Text.Sunken
        text: qsTr("Upcomming meeting")
        color: "white"
        font.pixelSize: 20
        font.bold: true

        anchors.top: dateInfo.bottom
        anchors.topMargin: 40
        anchors.horizontalCenter: timeInfo.horizontalCenter
    }

    Text{
        id: nextMeetingTime
        style: Text.Sunken
        text: qsTr("13:00 to 13:30")
        color: "white"
        font.pixelSize: 20

        anchors.top: nextMeetingStr.bottom
        anchors.topMargin: 10
        anchors.horizontalCenter: timeInfo.horizontalCenter
    }



}

