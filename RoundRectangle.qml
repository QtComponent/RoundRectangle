import QtQuick 2.0

Rectangle {
    width: 640; height: 480

    /*
         ***********
        *          *
       *           *
       *           *
       *           *
       *           *
        *          *
         ***********
    */

    Rectangle {
        id: root
        property int radiusCorners: Qt.AlignLeft | Qt.AlignTop | Qt.AlignBottom  // Qt.AlignLeft | Qt.AlignRight | Qt.AlignTop | Qt.AlignBottom

        anchors.centerIn: parent
        width: 100; height: 100
        radius: 10
        color: "lightblue"

        Repeater {
            model: [
                internal.aligns(Qt.AlignLeft | Qt.AlignTop),
                internal.aligns(Qt.AlignRight | Qt.AlignTop),
                internal.aligns(Qt.AlignLeft | Qt.AlignBottom),
                internal.aligns(Qt.AlignRight | Qt.AlignBottom)
            ]

            Rectangle {
                x: internal.xPosion(index); y: internal.yPosion(index)
                width: parent.radius
                height: width
                visible: !modelData
                color: parent.color
            }
        }

        QtObject {
            id: internal

            function aligns(direction) {
                return (root.radiusCorners & direction) === direction
            }

            function xPosion(index) {
                switch (index) {
                case 0: {
                    return 0
                }
                case 1: {
                    return root.width - root.radius
                }
                case 2: {
                    return 0
                }
                case 3: {
                    return root.width - root.radius
                }
                }
            }

            function yPosion(index) {
                switch (index) {
                case 0: {
                    return 0
                }
                case 1: {
                    return 0
                }
                case 2: {
                    return root.height - root.radius
                }
                case 3: {
                    return root.width - root.radius
                }
                }
            }
        }
    }

}
