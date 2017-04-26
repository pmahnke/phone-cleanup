---
Title: Ubuntu.Components.MainView
---
        
MainView
========

<span class="subtitle"></span>
MainView is the root Item that should be used for all applications. It automatically adds a header and toolbar for its contents and can rotate its content based on the device orientation. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.2 |

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[actionManager](#actionManager-prop)**** : ActionManager
-   ****[actions](#actions-prop)**** : list&lt;Action&gt;
-   ****[active](#active-prop)**** : bool
-   ****[anchorToKeyboard](#anchorToKeyboard-prop)**** : bool
-   ****[applicationName](#applicationName-prop)**** : string
-   ****[automaticOrientation](#automaticOrientation-prop)**** : bool
-   ****[backgroundColor](#backgroundColor-prop)**** : color
-   ****[footerColor](#footerColor-prop)**** : color
-   ****[headerColor](#headerColor-prop)**** : color

<span id="details"></span>
Detailed Description
--------------------

The simplest way to use a [MainView](index.html) is to include a single [Page](../Ubuntu.Components.Page.md) object inside the [MainView](index.html):

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
MainView {
    width: units.gu(48)
    height: units.gu(60)
    Page {
        title: "Simple page"
        Button {
            anchors.centerIn: parent
            text: "Push me"
            width: units.gu(15)
            onClicked: print("Click!")
        }
    }
}
```

It is not required to set the anchors of the [Page](../Ubuntu.Components.Page.md) as it will automatically fill its parent. The [MainView](index.html) has a header that automatically shows the title of the [Page](../Ubuntu.Components.Page.md).

Do not include multiple Pages directly inside the [MainView](index.html), but use [Tabs](../Ubuntu.Components.Tabs.md) or [PageStack](../Ubuntu.Components.PageStack.md) inside [MainView](index.html) to navigate between several Pages.

For the [MainView](index.html) to automatically rotate its content following the orientation of the device, set the [automaticOrientation](#automaticOrientation-prop) property to true.

If the [Page](../Ubuntu.Components.Page.md) inside the [MainView](index.html) includes a Flickable with enough contents for scrolling, the header will automatically hide and show when the user scrolls up or down:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
MainView {
    width: units.gu(48)
    height: units.gu(60)
    Page {
        title: "Page with Flickable"
        Flickable {
            anchors.fill: parent
            contentHeight: column.height
            Column {
                id: column
                Repeater {
                    model: 100
                    Label {
                        text: "line "+index
                    }
                }
            }
        }
    }
}
```

The same header behavior is automatic when using a [ListView](../../sdk-14.10/QtQuick.ListView.md) instead of a Flickable in the above example.

The examples above show how to include a single [Page](../Ubuntu.Components.Page.md) inside a [MainView](index.html), but more advanced application structures are possible using [PageStack](../Ubuntu.Components.PageStack.md) and [Tabs](../Ubuntu.Components.Tabs.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="actionManager-prop"></span><span class="qmlreadonly">read-only</span><span class="name">actionManager</span> : <span class="type"><a href="Ubuntu.Components.ActionManager.md">ActionManager</a></span></p></td>
</tr>
</tbody>
</table>

The [ActionManager](../Ubuntu.Components.ActionManager.md) that supervises the global and local ActionContexts. The [actions](#actions-prop) property should be used preferably since it covers most use cases. The [ActionManager](../Ubuntu.Components.ActionManager.md) is accessible to have a more refined control over the actions, e.g. if one wants to add/remove actions dynamically, create specific action contexts, etc.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="actions-prop"></span><span class="name">actions</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

A global list of actions that will be available to the system (including HUD) as long as the application is running. For actions that are not always available to the system, but only when a certain [Page](../Ubuntu.Components.Page.md) is active, see the actions property of [Page](../Ubuntu.Components.Page.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="active-prop"></span><span class="name">active</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

[MainView](index.html) is active by default.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="anchorToKeyboard-prop"></span><span class="name">anchorToKeyboard</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property holds if the application should automatically resize the contents when the input method appears

The default value is false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="applicationName-prop"></span><span class="name">applicationName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The property holds the application's name, which must be the same as the desktop file's name. The name also sets the name of the QCoreApplication and defaults for data and cache folders that work on the desktop and under confinement, as well as the default gettext domain. C++ code that writes files may use QStandardPaths::writableLocation with QStandardPaths::DataLocation or QStandardPaths::CacheLocation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="automaticOrientation-prop"></span><span class="name">automaticOrientation</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Sets whether the application will be automatically rotating when the device is.

The default value is false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="backgroundColor-prop"></span><span class="name">backgroundColor</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Color of the background.

The background is usually a single color. However if [headerColor](#headerColor-prop) or [footerColor](#footerColor-prop) are set then a gradient of colors will be drawn.

For example, in order for the [MainView](index.html) to draw a color gradient beneath the content:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
MainView {
    width: units.gu(40)
    height: units.gu(60)
    headerColor: "#343C60"
    backgroundColor: "#6A69A2"
    footerColor: "#8896D5"
}
```

**See also** [footerColor](#footerColor-prop) and [headerColor](#headerColor-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="footerColor-prop"></span><span class="name">footerColor</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Color of the footer's background.

**See also** [backgroundColor](#backgroundColor-prop) and [headerColor](#headerColor-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="headerColor-prop"></span><span class="name">headerColor</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

Color of the header's background.

**See also** [backgroundColor](#backgroundColor-prop) and [footerColor](#footerColor-prop).

