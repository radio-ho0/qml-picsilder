import QtQuick 2.0
import QtQml.Models 2.1

Rectangle {
    id     : root
    width  : 800
    height : 600
    color : "chocolate"

    // todo all in one width height

    ObjectModel {
        id : itemModel
        Image {
            width : 700 
            height : 394 
            source : "pics/1.jpg"
        }
        Image {
            width : 700 
            height : 394 
            source : "pics/2.jpg"
        }
        Image {
            width : 700 
            height : 394 
            source : "pics/3.jpg"
        }
        Image {
            width : 700 
            height : 394 
            source : "pics/4.jpg"
        }
        Image {
            width : 700 
            height : 394 
            source : "pics/5.jpg"
        }
        Image {
            width : 700 
            height : 394 
            source : "pics/6.jpg"
        }
        Image {
            width : 700 
            height : 394 
            source : "pics/7.jpg"
        }
        Image {
            width : 700 
            height : 394 
            source : "pics/8.jpg"
        }
        Image {
            width : 700 
            height : 394 
            source : "pics/9.jpg"
        }
    }
    Rectangle {
        id : frame
        width : 700
        height : 394
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter


        ListView {
            id :  view
            anchors { 
                fill: parent; 
                bottomMargin: 30 
            }
            clip : true 
            model : itemModel
            preferredHighlightBegin: 0; preferredHighlightEnd: 0
            orientation: ListView.Horizontal
            highlightRangeMode: ListView.StrictlyEnforceRange
            snapMode: ListView.SnapOneItem; flickDeceleration: 2000
            cacheBuffer: 200
        }
        //nav bar
        Rectangle {
            width: 700; height: 30
            anchors { top: view.bottom; bottom: parent.bottom }
            color: "khaki"
            clip : true

            Row {
                anchors.centerIn: parent
                spacing: 20

                Repeater {
                    model: itemModel.count

                    Rectangle {
                        width: 48 
                        height: 48 
                        clip : true
                        radius: 3
                        Image {
                            id :  pic_point
                            width :  48
                            height : 48 
                            source : "point.png"
                            anchors.fill : parent
                        }
                        Text {
                            id : m_text
                            text : index + 1
                            anchors.fill : parent
                            color: view.currentIndex == index ? "lightgreen" : "tomato"
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignHCenter
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.horizontalCenter: parent.horizontalCenter
                            style : Text.Outline; styleColor : "white"
                            font.pointSize : 24
                                    
                        }

                        MouseArea {
                            anchors.fill : parent
                            onClicked: view.currentIndex = index
                        }
                    }
                }
            }
        }

        // a button
        /* Rectangle {
            id : nextPic
            width : 70
            height : 30
            color : "coral"
            MouseArea{
                id : area
                anchors.fill : parent
                onClicked : {
                    view.incrementCurrentIndex();
                }
            }
        } */
    }


}
