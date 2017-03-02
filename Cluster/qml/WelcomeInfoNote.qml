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

Column {
    property alias firstline: tripInfoAmount.text
    property alias firstlineunit: tripInfoUnit.text
    property alias secondline: tripInfoText.text

    spacing: 3

    Row {
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 3

        Text {
            id: tripInfoAmount
            text: "9:40"
            font.pixelSize: 18
            color: "white"
            horizontalAlignment: Text.AlignHCenter
        }

        Text {
            id: tripInfoUnit
            text: "km"
            font.pixelSize: 12
            color: "white"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
        }
    }

    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        id: tripInfoText
        text: "Start time"
        font.pixelSize: 12
        color: "white"
        horizontalAlignment: Text.AlignHCenter
    }
}
