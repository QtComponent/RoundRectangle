/**********************************************************
Author: 微信公众号(你才小学生)
WeChat Official Accounts Platform: nicaixiaoxuesheng
Website: qtbig.com
Email:  2088201923@qq.com
QQ交流群: 732271126
**********************************************************/
import QtQuick 2.0

Rectangle {
    width: 640; height: 480



    Rectangle {
        id: root
        property int radiusCorners: Qt.AlignLeft | Qt.AlignRight | Qt.AlignTop | Qt.AlignBottom
        /*
               Qt.AlignLeft |        Qt.AlignLeft |    Qt.AlignRight |       Qt.AlignLeft |    Qt.AlignLeft |
               Qt.AlignRight |       Qt.AlignTop |     Qt.AlignTop |         Qt.AlignRight |   Qt.AlignRight |
               Qt.AlignTop |         Qt.AlignBottom    Qt.AlignBottom        Qt.AlignTop       Qt.AlignBottom
               Qt.AlignBottom
               *****************     ***************   ***************       *************     *****************
               *               *    *              *   *              * 	*             *    *               *
               *               *   *               *   *               *   *               *   *               *
               *               *   *               *   *               *   *               *   *               *
               *               *   *               *   *               *   *               *   *               *
               *               *   *               *   *               *   *               *   *               *
               *               *   *               *   *               *   *               *   *               *
               *               *    *              *   *              *    *               *    *             *
               *****************     ***************   ***************     *****************	 *************
        */

        anchors.centerIn: parent
        width: 100; height: 100
        radius: 10
        color: "lightblue"

        Repeater {
            model: [ {
                        x: 0,
                        y: 0,
                        visible: internal.aligns(Qt.AlignLeft | Qt.AlignTop),
                        radius: root.radius
                     },
                     {
                        x: root.width - root.radius,
                        y: 0,
                        visible: internal.aligns(Qt.AlignRight | Qt.AlignTop),
                        radius: root.radius
                     },
                     {
                        x: 0,
                        y: root.height - root.radius,
                        visible: internal.aligns(Qt.AlignLeft | Qt.AlignBottom),
                        radius: root.radius
                     },
                     {
                        x: root.width - root.radius,
                        y: root.height - root.radius,
                        visible: internal.aligns(Qt.AlignRight | Qt.AlignBottom),
                        radius: root.radius
                     } ]

            Rectangle {
                x: modelData.x; y: modelData.y
                width: modelData.radius; height: width
                visible: !modelData.visible
                color: parent.color
            }
        }

        QtObject {
            id: internal

            function aligns(direction) {
                return (root.radiusCorners & direction) === direction
            }
        }
    }

}
