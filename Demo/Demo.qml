/**
 * Author: Qt君
 * WebSite: qthub.com
 * Email: 2088201923@qq.com
 * QQ交流群: 732271126
 * 关于更多: 扫码关注微信公众号: [Qt君] 第一时间获取最新推送.
 */
import QtQuick 2.0
import "../"

Rectangle {
    property int roundRectangleWidth: 100
    property int roundRectangleHeight: 60
    property int roundRectangleRadius: 15

    width: 640; height: 480

    Grid {
        anchors.centerIn: parent
        columns: 3
        rows: 5
        columnSpacing: 60
        rowSpacing: 30

        /**
         * 方法1
         */

        /* 效果等价于Rectangle */
        RoundRectangle {
            width: roundRectangleWidth; height: roundRectangleHeight
            color: "#0984e3"
            radius: roundRectangleRadius
            radiusCorners: 0
        }

        /* 四角 圆角 */
        RoundRectangle {
            width: roundRectangleWidth; height: roundRectangleHeight
            color: "#0984e3"
            radius: roundRectangleRadius
            radiusCorners: Qt.AlignLeft | Qt.AlignRight | Qt.AlignTop | Qt.AlignBottom
        }

        /* 左上,右上 圆角 */
        RoundRectangle {
            width: roundRectangleWidth; height: roundRectangleHeight
            color: "#e17055"
            radius: roundRectangleRadius
            radiusCorners: Qt.AlignLeft | Qt.AlignRight | Qt.AlignTop
        }

        /* 左上,左下 圆角 */
        RoundRectangle {
            width: roundRectangleWidth; height: roundRectangleHeight
            color: "#00cec9"
            radius: roundRectangleRadius
            radiusCorners:  Qt.AlignLeft | Qt.AlignTop | Qt.AlignBottom
        }

        /* 右上,右下 圆角 */
        RoundRectangle {
            width: roundRectangleWidth; height: roundRectangleHeight
            color: "#00cec9"
            radius: roundRectangleRadius
            radiusCorners:  Qt.AlignRight | Qt.AlignTop | Qt.AlignBottom
        }

        /* 左下,右下 圆角 */
        RoundRectangle {
            width: roundRectangleWidth; height: roundRectangleHeight
            color: "#e17055"
            radius: roundRectangleRadius
            radiusCorners: Qt.AlignLeft | Qt.AlignRight | Qt.AlignBottom
        }

        /**
         * 方法2：
         * 使用数组方法指定某个圆角
         */

        /* 左上 圆角 */
        RoundRectangle {
            width: roundRectangleWidth; height: roundRectangleHeight
            color: "#27ae60"
            radius: roundRectangleRadius
            radiusCorners: [
                Qt.AlignLeft | Qt.AlignTop
            ]
        }

        /* 左下 圆角 */
        RoundRectangle {
            width: roundRectangleWidth; height: roundRectangleHeight
            color: "#9b59b6"
            radius: roundRectangleRadius
            radiusCorners: [
                Qt.AlignLeft | Qt.AlignBottom
            ]
        }
        /* 右上 圆角 */
        RoundRectangle {
            width: roundRectangleWidth; height: roundRectangleHeight
            color: "#f1c40f"
            radius: roundRectangleRadius
            radiusCorners: [
                Qt.AlignRight | Qt.AlignTop
            ]
        }

        /* 右下 圆角 */
        RoundRectangle {
            width: roundRectangleWidth; height: roundRectangleHeight
            color: "#34495e"
            radius: roundRectangleRadius
            radiusCorners: [
                Qt.AlignRight | Qt.AlignBottom
            ]
        }

        /* 左上,右上,左下 圆角 */
        RoundRectangle {
            width: roundRectangleWidth; height: roundRectangleHeight
            color: "#27ae60"
            radius: roundRectangleRadius
            radiusCorners: [
                Qt.AlignLeft | Qt.AlignTop,
                Qt.AlignRight | Qt.AlignTop,
                Qt.AlignLeft | Qt.AlignBottom
            ]
        }

        /* 左上,右上,右下 圆角 */
        RoundRectangle {
            width: roundRectangleWidth; height: roundRectangleHeight
            color: "#9b59b6"
            radius: roundRectangleRadius
            radiusCorners: [
                Qt.AlignLeft | Qt.AlignTop,
                Qt.AlignRight | Qt.AlignTop,
                Qt.AlignRight | Qt.AlignBottom
            ]
        }
        /* 左下,右上,右下 圆角 */
        RoundRectangle {
            width: roundRectangleWidth; height: roundRectangleHeight
            color: "#f1c40f"
            radius: roundRectangleRadius
            radiusCorners: [
                Qt.AlignLeft | Qt.AlignBottom,
                Qt.AlignRight | Qt.AlignTop,
                Qt.AlignRight | Qt.AlignBottom
            ]
        }

        /* 左上,左下,右下 圆角 */
        RoundRectangle {
            width: roundRectangleWidth; height: roundRectangleHeight
            color: "#34495e"
            radius: roundRectangleRadius
            radiusCorners: [
                Qt.AlignLeft | Qt.AlignTop,
                Qt.AlignLeft | Qt.AlignBottom,
                Qt.AlignRight | Qt.AlignBottom
            ]
        }

    }
}
