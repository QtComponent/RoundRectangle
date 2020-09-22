/**
 * Author: Qt君
 * WebSite: qthub.com
 * Email: 2088201923@qq.com
 * QQ交流群: 732271126
 * 关于更多: 扫码关注微信公众号: [Qt君] 第一时间获取最新推送.
 * ██████████████    ██      ██████████████    ██████████████
 * ██          ██  ████  ████    ██  ██        ██          ██
 * ██  ██████  ██    ██████              ██    ██  ██████  ██
 * ██  ██████  ██  ████  ██    ████████    ██  ██  ██████  ██
 * ██  ██████  ██      ██  ██      ██    ████  ██  ██████  ██
 * ██          ██  ██  ██      ████    ██  ██  ██          ██
 * ██████████████  ██  ██  ██  ██  ██  ██  ██  ██████████████
 *                         ██  ██████  ██████
 * ██████████  ██████████  ██  ████████████  ██  ██  ██  ██
 *       ██        ████        ██  ██    ██  ████████      ██
 *   ██  ██  ████  ████  ████████████  ██  ██  ██████
 *     ██████        ██████        ██  ██  ██████        ██
 *       ██████████  ██  ██  ██  ██  ██  ██  ██      ████
 *                 ██  ██  ██████  ████  ████████████  ██  ██
 * ████  ██████████    ██        ████  ██  ██  ██  ██  ██
 * ████    ████      ████  ██  ██████  ██████████        ██
 *   ██  ████  ██    ████  ██████    ██  ██      ██    ██
 * ████████      ██  ██      ████  ██    ████  ██████████  ██
 * ██    ████  ████  ██  ████    ████      ████  ████████
 * ██  ████  ██  ██      ██      ████    ██              ██
 * ██  ██████  ████    ████  ██████████    ██████████  ██████
 *                 ████    ████  ████  ██  ██      ██████████
 * ██████████████  ████        ██████    ████  ██  ██████
 * ██          ██    ████  ██  ██████  ██████      ████    ██
 * ██  ██████  ██  ████    ████  ██  ██    ██████████████████
 * ██  ██████  ██  ████        ██████████  ██        ██  ████
 * ██  ██████  ██  ██  ██████    ██  ████████  ████████████
 * ██          ██  ██    ██    ████    ██  ████  ██████  ██
 * ██████████████  ██████████      ██            ████  ██
 */
import QtQuick 2.0

Rectangle {
    id: root
    implicitWidth: 50
    implicitHeight: 50

    radius: 5 // note: you need to set it up.

    //property int corners: Qt.AlignLeft | Qt.AlignRight | Qt.AlignTop | Qt.AlignBottom /* Default: */
    property variant corners: [
        Qt.AlignLeft | Qt.AlignTop,
        Qt.AlignLeft | Qt.AlignBottom,
        Qt.AlignRight | Qt.AlignTop,
        Qt.AlignRight | Qt.AlignBottom,
    ]
    /*
                            Qt.AlignLeft |      Qt.AlignLeft |      Qt.AlignRight |     Qt.AlignLeft |      Qt.AlignLeft |
                            Qt.AlignRight |     Qt.AlignTop |       Qt.AlignTop |       Qt.AlignRight |     Qt.AlignRight |
              None:0        Qt.AlignTop |       Qt.AlignBottom      Qt.AlignBottom      Qt.AlignTop         Qt.AlignBottom
                            Qt.AlignBottom
        *****************     *************       ***************   ***************       *************     *****************
        *               *    *             *     *              *   *              *     *             *    *               *
        *               *   *               *   *               *   *               *   *               *   *               *
        *               *   *               *   *               *   *               *   *               *   *               *
        *               *   *               *   *               *   *               *   *               *   *               *
        *               *   *               *   *               *   *               *   *               *   *               *
        *               *   *               *   *               *   *               *   *               *   *               *
        *               *    *             *     *              *   *              *    *               *    *             *
        *****************     *************       ***************   ***************     *****************     *************
    */

    Repeater {
        model: [
            {
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
            }
        ]

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
            if (Array.isArray(root.corners)) {
                for (var i = 0; i < root.corners.length; i++) {
                    if ((root.corners[i] & direction) === direction)
                        return true
                }

                return false;
            }
            else {
                return (root.corners & direction) === direction
            }
        }
    }
}
