/****************************************************************************
**
** Copyright (C) 2017 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the Qt multiscreen demo application.
**
** $QT_BEGIN_LICENSE:GPL-EXCEPT$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 3 as published by the Free Software
** Foundation with exceptions as appearing in the file LICENSE.GPL3-EXCEPT
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.7
import controls 1.0
import utils 1.0

Item {
    anchors.fill: parent

    property string welcomeText: "GOOD MORNING"

    Column {
        anchors.centerIn: parent
        spacing: 10

        Image {
            id: driverImage
            anchors.horizontalCenter: parent.horizontalCenter
            source: Style.symbol("john")
            opacity: 0.0
            Behavior on opacity {
                PropertyAnimation { duration: 1000 }
            }
        }

        Text {
            id: driverText
            anchors.horizontalCenter: parent.horizontalCenter
            text: welcomeText
            font.bold: true
            font.pixelSize: 20
            color: "white"
            horizontalAlignment: Text.AlignHCenter
            opacity: 0.0
            Behavior on opacity {
                PropertyAnimation { duration: 1000 }
            }
        }

        Text {
            id: driverSecondRowText
            anchors.horizontalCenter: parent.horizontalCenter
            text: "John"
            font.pixelSize: 30
            color: "#EF2973"
            horizontalAlignment: Text.AlignHCenter
            opacity: 0.0
            Behavior on opacity {
                PropertyAnimation { duration: 1000 }
            }
        }
    }

    Component.onCompleted: {
        var currentDate = new Date()
        var hours = currentDate.getHours()
        if (hours > 0 && hours < 3)
            welcomeText = "GOOD LATE EVENING"
        else if (hours >= 3 && hours < 12)
            welcomeText = "GOOD MORNING"
        else if (hours >= 12 && hours < 18)
            welcomeText = "GOOD AFTERNOON"
        else if (hours >= 18 && hours < 24)
            welcomeText = "GOOD EVENING"

        driverText.opacity = 1.0
        driverRecognition.start()
    }

    Timer {
        id: driverRecognition
        running: false
        interval: 1000
        onTriggered: {
            driverImage.opacity = 1.0
            driverSecondRowText.opacity = 1.0
        }
    }
}
