/*
 * Copyright (C) 2023 LongOS Team.
 *
 * Author:     chang2005 <389574063@qq.com>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.4
import QtQuick.Controls 2.4
import QtGraphicalEffects 1.0
import LongUI 1.0 as LongUI

Item {
    id: control

    property alias source: image.source
    signal clicked()

    width: 22
    height: width

    Image {
        id: image
        anchors.fill: parent
        sourceSize: Qt.size(control.width, control.height)
        smooth: false
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        acceptedButtons: Qt.LeftButton
        onClicked: control.clicked()
    }

    ColorOverlay {
        anchors.fill: image
        source: image
        color: "white"
        opacity: 0.5
        visible: mouseArea.containsPress
    }
}
