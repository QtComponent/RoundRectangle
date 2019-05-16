import QtQuick 2.0
import "../"

Rectangle {
    property int roundRectangleWidth: 150
    property int roundRectangleHeight: 80

    width: 640; height: 480

    Column {
        anchors.centerIn: parent
        spacing: roundRectangleHeight

        Row {
            spacing: roundRectangleHeight
            RoundRectangle {
                width: roundRectangleWidth; height: roundRectangleHeight
                color: "lightblue"
                radius: 5
                radiusCorners: 0
            }

            RoundRectangle {
                width: roundRectangleWidth; height: roundRectangleHeight
                color: "lightblue"
                radius: 5
                radiusCorners: Qt.AlignLeft | Qt.AlignRight | Qt.AlignTop | Qt.AlignBottom
            }
        }

        Row {
            spacing: roundRectangleHeight
            RoundRectangle {
                width: roundRectangleWidth; height: roundRectangleHeight
                color: "lightblue"
                radius: 5
                radiusCorners:  Qt.AlignLeft | Qt.AlignTop | Qt.AlignBottom
            }

            RoundRectangle {
                width: roundRectangleWidth; height: roundRectangleHeight
                color: "lightblue"
                radius: 5
                radiusCorners:  Qt.AlignRight | Qt.AlignTop | Qt.AlignBottom
            }
        }

        Row {
            spacing: roundRectangleHeight
            RoundRectangle {
                width: roundRectangleWidth; height: roundRectangleHeight
                color: "lightblue"
                radius: 5
                radiusCorners: Qt.AlignLeft | Qt.AlignRight | Qt.AlignTop
            }

            RoundRectangle {
                width: roundRectangleWidth; height: roundRectangleHeight
                color: "lightblue"
                radius: 5
                radiusCorners: Qt.AlignLeft | Qt.AlignRight | Qt.AlignBottom
            }
        }
    }
}
