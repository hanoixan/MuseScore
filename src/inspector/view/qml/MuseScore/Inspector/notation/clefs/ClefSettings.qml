/*
 * SPDX-License-Identifier: GPL-3.0-only
 * MuseScore-CLA-applies
 *
 * MuseScore
 * Music Composition & Notation
 *
 * Copyright (C) 2021 MuseScore BVBA and others
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 3 as
 * published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */
import QtQuick 2.15

import MuseScore.Ui 1.0
import MuseScore.UiComponents 1.0
import MuseScore.Inspector 1.0

import "../../common"

Column {
    id: root

    property QtObject model: null

    property NavigationPanel navigationPanel: null
    property int navigationRowStart: 1

    objectName: "ClefSettings"

    spacing: 12

    function focusOnFirst() {
        showCourtesyClef.navigation.requestActive()
    }

    CheckBoxPropertyView {
        id: showCourtesyClef

        navigation.name: "ShowCourtesyClefCheckBox"
        navigation.panel: root.navigationPanel
        navigation.row: root.navigationRowStart
        navigation.enabled: root.enabled

        text: qsTrc("inspector", "Show courtesy clef on previous system")
        propertyItem: root.model ? root.model.shouldShowCourtesy : null
    }
}
