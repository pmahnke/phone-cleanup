---
Title: Ubuntu.Connectivity.NetworkingStatus
---
        
NetworkingStatus
================

<span class="subtitle"></span>
Overall system networking status. More...

|                   |          |
|-------------------|----------|
| Import Statement: | import . |

<span id="properties"></span>
Properties
----------

-   ****[limitations](#limitations-prop)**** : Limitations
-   ****[limitedBandwith](#limitedBandwith-prop)**** : bool
-   ****[online](#online-prop)**** : bool
-   ****[status](#status-prop)**** : Status

<span id="details"></span>
Detailed Description
--------------------

This is the top-level class for accessing networking information.

This class inherits the Qt C++ ubuntu::connectivity::NetworkingStatus and provides two utility properties online and [limitedBandwith](#limitedBandwith-prop) for easier QML usage.

This object is exposed as a singleton.

**note:** Using this component in confined application requires *connectivity* policy group.

``` cpp
/*
 * Copyright (C) 2014 Canonical Ltd.
 *
 * This program is free software: you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License version 3,
 * as published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
import QtQuick 2.0
import Ubuntu.Components 0.1
import Ubuntu.Connectivity 1.0
MainView {
    id: root
    objectName: "mainView"
    applicationName: "Connectivity"
    width: units.gu(100)
    height: units.gu(75)
    property real margins: units.gu(2)
    property real buttonWidth: units.gu(9)
    property var statusMap: ["Offline", "Connecting", "Online"]
    Connections {
        target: Connectivity
        // full status can be retrieved from the base C++ class
        // status property
        onStatusChanged: console.log("Status: " + statusMap[Connectivity.status])
        onOnlineChanged: console.log("Online: " + Connectivity.online)
    }
    Page {
        title: i18n.tr("Networking Status")
        Column {
            anchors.centerIn: parent
            Label {
                // use the online property
                text: Connectivity.online ? "Online" : "Not online"
                fontSize: "large"
            }
            Label {
                // use the status property
                text: "Status: " + statusMap[Connectivity.status]
                fontSize: "large"
            }
            Label {
                // use the limitedBandwith property
                text: Connectivity.limitedBandwith ? "Bandwith limited" : "Bandwith not limited"
                fontSize: "large"
            }
        }
    }
}
```

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="limitations-prop"></span><span class="name">limitations</span> : <span class="type">Limitations</span></p></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="limitedBandwith-prop"></span><span class="name">limitedBandwith</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

**true** if Internet connection is bandwith limited.

shorthand for C++:

``` cpp
networkingStatus->limitations().contains(NetworkingStatus::Limitations::Bandwith)
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="online-prop"></span><span class="name">online</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

**true** if system has Internet connection.

shorthand for C++:

``` cpp
networkingStatus->status() == NetworkingStatus::Online
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="status-prop"></span><span class="name">status</span> : <span class="type">Status</span></p></td>
</tr>
</tbody>
</table>

status property of the base C++ class.

``` cpp
onStatusChanged: {
    if (status === NetworkingStatus::Offline)
        ;
    else if (status === NetworkingStatus::Connecting)
        ;
    else if (status === NetworkingStatus::Online)
        ;
}
```

