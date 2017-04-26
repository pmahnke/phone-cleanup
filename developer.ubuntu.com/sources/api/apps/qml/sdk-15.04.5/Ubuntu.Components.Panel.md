<a href="https://developer.ubuntu.com/" class="logo-ubuntu"><img src="https://developer.ubuntu.com/assets/sites/ubuntu/latest/u/img/logos/logo-ubuntu-orange.svg" width="106" height="25" /> <span>developer</span></a>

-   [Jump to content](index.html#main-content)
-   [Desktop](https://developer.ubuntu.com/en/desktop/)
-   [Phone](https://developer.ubuntu.com/en/phone/)
-   [Core](https://developer.ubuntu.com/core)
-   [Community](https://developer.ubuntu.com/en/community/)
-   [Publish](https://developer.ubuntu.com/en/publish/)
-   [My Apps](https://myapps.developer.ubuntu.com/)

Search

<img src="https://developer.ubuntu.com/assets/sites/ubuntu/latest/u/img/search-white.svg" alt="Search" height="28" />

-   [APIs](../../../../index.html) ›
-   [Apps](../../../index.html) ›
-   [QML](../../index.html) ›
-   [SDK 15.04.5](../index.html) ›
-   [Ubuntu.Components](../Ubuntu.Components/index.html) ›

<!-- -->

-   Panel

Panel
=====

<span class="subtitle"></span>
A panel that can be swiped in and out from an edge of the window by the user. For most applications, it is highly recommended to use the MainView instead which includes a toolbar at its bottom that can be swiped in or out. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components 1.3</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="../../sdk-14.10/QtQuick.Item/index.html">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[align](index.html#align-prop)**** : int
-   ****[animate](index.html#animate-prop)**** : bool
-   ****[animating](index.html#animating-prop)**** : bool
-   ****[contents](index.html#contents-prop)**** : list&lt;Object&gt;
-   ****[hideTimeout](index.html#hideTimeout-prop)**** : int
-   ****[hintSize](index.html#hintSize-prop)**** : real
-   ****[locked](index.html#locked-prop)**** : bool
-   ****[opened](index.html#opened-prop)**** : bool
-   ****[position](index.html#position-prop)**** : real
-   ****[pressed](index.html#pressed-prop)**** : bool
-   ****[triggerSize](index.html#triggerSize-prop)**** : real

<span id="methods"></span>
Methods
-------

-   ****[close](index.html#close-method)****()
-   ****[open](index.html#open-method)****()

<span id="details"></span>
Detailed Description
--------------------

Unless your application has very specific needs for a Panel, use a [MainView](../Ubuntu.Components.MainView/index.html) with the default toolbar.

When using a Panel, do not theme it directly, but theme its contents, because the Panel itself should not have visible elements, since it is in the view (to detect mouse events) even when its contents should be invisible.

Set the anchors and/or width/height of the Panel to specify the area that the Panel covers when opened.

A black panel that can be swiped in from the lower-right of the window can be created like this:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
Item {
    width: units.gu(80)
    height: units.gu(80)
    Panel {
        id: panel
        anchors {
            right: parent.right
            bottom: parent.bottom
        }
        width: parent.width / 2
        height: units.gu(8)
        Rectangle {
            anchors.fill: parent
            color: theme.palette.normal.overlay
            Button {
                anchors.centerIn: parent
                text: "Click"
            }
        }
    }
}
```

A panel that looks like the standard (bottom-aligned) toolbar, but with custom contents, can be created like this:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
Item {
    width: units.gu(80)
    height: units.gu(80)
    Panel {
        id: panel
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
        height: units.gu(8)
        Item {
            anchors.fill: parent
            // two properties used by the toolbar delegate:
            property bool opened: panel.opened
            property bool animating: panel.animating
            Button {
                anchors.centerIn: parent
                text: "Click"
            }
        }
    }
}
```

Any Items can be placed inside the Panel, but MouseAreas can block mouse events from reaching the panel and thus obstruct the swiping behavior for hiding the panel. As a result, the user cannot start swiping on the buttons in the examples above in order to hide the panel. To remedy this, clicked() signals are forwarded from the panel by calling the child's trigger() function. Example:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
Rectangle {
    color: theme.palette.normal.background
    width: units.gu(40)
    height: units.gu(40)
    Panel {
        id: panel
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
        height: units.gu(8)
        Rectangle {
            color: theme.palette.normal.overlay
            anchors.fill: parent
            Rectangle {
                width: units.gu(8)
                height: units.gu(4)
                anchors.centerIn: parent
                color: "red"
                function trigger() {
                    print("The red rectangle was clicked");
                }
            }
        }
    }
    Component.onCompleted: panel.open();
}
```

Like this, the red rectangle accepts click events, but the user can still swipe down on top of the rectangle in order to hide the panel.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="align-prop"></span><span class="name">align</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The property defines the alignment of the panel. The implementation supports the following values:

-   Qt.AlignBottom to swipe in the panel from the bottom (default)
-   Qt.AlignTop to swipe in the panel from the top
-   Qt.AlignLeft to swipe in the panel from the left
-   Qt.AlignRight to swipe in the panel from the right
-   Qt.AlignLeading left when layout mirrorring is disabled, right otherwise
-   Qt.AlignTrailing right when layout mirroring is disabled, left otherwise

The default value is **Qt.AlignBottom**, and it is not recommended to change the default value because the left, right and top edge are already used for system functions, while the bottom edge is reserved for app-specific functionality such as a default toolbar. The use of Qt.AlignLeading and Qt.AlignTrailing is preferred over Qt.AlignLeft and Qt.AlignRight in order to more easily support right-to-left user interfaces that use [LayoutMirroring](../../sdk-14.10/QtQuick.LayoutMirroring/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="animate-prop"></span><span class="name">animate</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Animate transitions between the different panel states.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="animating-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">animating</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The toolbar is currently not in a stable hidden or visible state.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contents-prop"></span><span class="qmldefault">[default] </span><span class="name">contents</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td>
</tr>
</tbody>
</table>

Default property, holds the content which will be swiped in and out.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hideTimeout-prop"></span><span class="name">hideTimeout</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The time in milliseconds before the panel automatically hides after inactivity when it is not locked. Interacting with the panel resets the timer. Note that adding contents to the panel that accepts mouse events will prevent the panel from detecting interaction and the timer will not be reset. Setting a negative value will disable automatic hiding. Default value: -1 (automatic hiding is disabled).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hintSize-prop"></span><span class="name">hintSize</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

How much of the panel to show when the user touches the panel's edge. This gives the user a hint that there is a panel hiding at that edge and invites him/her to swipe to show the panel completely. Default value: units.gu(2).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="locked-prop"></span><span class="name">locked</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Disable edge swipe to open/close the panel. False by default.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="opened-prop"></span><span class="name">opened</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

When opened, the panel is visible, otherwise it is hidden. Use edge swipes to open/close the panel. The opened property is not updated until the swipe gesture is completed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="position-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">position</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The current position of the edge of the panel. The value is 0 when the panel is opened, and has its maximum value when the panel is closed. The maximum value is the width of the Panel for a left or right-aligned panel, and the height of the panel for top or bottom-aligned panels. When the user drags the Panel from the edge to open it, the position will change from the maximum size (closed) to 0 (fully expanded).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pressed-prop"></span><span class="name">pressed</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The user presses on the opened toolbar, or when the toolbar is closed but not locked, the user presses in the toolbar trigger area.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="triggerSize-prop"></span><span class="name">triggerSize</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The size (height for top or bottom-aligned panels, width for left or right-aligned panels) of the mouse area used to detect edge swipes to open the panel, when the panel is not opened. Default value: units.gu(2).

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="close-method"></span><span class="name">close</span>()</p></td>
</tr>
</tbody>
</table>

Close the panel

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="open-method"></span><span class="name">open</span>()</p></td>
</tr>
</tbody>
</table>

Open the panel

[Back to top](index.html#)

-   [Desktop](https://developer.ubuntu.com/en/desktop/)
    ---------------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/desktop/)
    -   [Get started](http://snapcraft.io/?utm_source=developer.ubuntu.com&utm_medium=devportal&utm_term=snaps%20snapcraft%20desktop&utm_content=menu&utm_campaign=duc_snappers)
    -   [Examples](https://github.com/ubuntu/snappy-playpen)

-   [Phone](https://developer.ubuntu.com/en/phone/)
    -----------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/phone/)
    -   [Scopes](https://developer.ubuntu.com/en/phone/scopes/)
    -   [Apps](https://developer.ubuntu.com/en/phone/apps/)
    -   [Web Apps](https://developer.ubuntu.com/en/phone/web/)
    -   [Platform](https://developer.ubuntu.com/en/phone/platform/)
    -   [Devices](https://developer.ubuntu.com/en/phone/devices/)

-   [Core](https://developer.ubuntu.com/core)
    -----------------------------------------

    -   [Overview](https://developer.ubuntu.com/core)
    -   [Get started](https://developer.ubuntu.com/core/get-started)
    -   [Tutorials](https://developer.ubuntu.com/core/tutorials)
    -   [Examples](https://developer.ubuntu.com/core/examples)
    -   [Publish and distribute](https://developer.ubuntu.com/core/publish-and-distribute)
    -   [Documentation](https://developer.ubuntu.com/core/documentation)
    -   [Troubleshooting](https://developer.ubuntu.com/core/troubleshooting)

-   [Community](https://developer.ubuntu.com/en/community/)
    -------------------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/community/)
    -   [App development training](https://developer.ubuntu.com/en/community/training/)
    -   [Core apps](https://developer.ubuntu.com/en/community/core-apps/)
    -   [Blog](https://developer.ubuntu.com/en/community/blog/)

-   [Publish](https://developer.ubuntu.com/en/publish/)
    ---------------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/publish/)
    -   [Application states](https://developer.ubuntu.com/en/publish/application-states/)
    -   [Packaging click apps](https://developer.ubuntu.com/en/publish/packaging-click-apps/)
    -   [Creating a good icon](https://developer.ubuntu.com/en/publish/creating-a-good-icon/)
    -   [Web](https://developer.ubuntu.com/en/publish/web/)
    -   [Security policy groups](https://developer.ubuntu.com/en/publish/security-policy-groups/)
    -   [Choosing a license](https://developer.ubuntu.com/en/publish/choosing-a-license/)
    -   [Other forms of submitting apps](https://developer.ubuntu.com/en/publish/other-forms-of-submitting-apps/)
    -   [Scopes](https://developer.ubuntu.com/en/publish/scopes/)

-   View in:
    --------

    -   [English](index.html "Change to language: English")
    -   [Simplified Chinese](index.html "Change to language: Simplified Chinese")

-   [Download](http://ubuntu.com/download/)
    ---------------------------------------

    -   [Overview](http://ubuntu.com/download)
    -   [Cloud](http://ubuntu.com/download/cloud)
    -   [Server](http://ubuntu.com/download/server)
    -   [Desktop](http://ubuntu.com/download/desktop)
    -   [Ubuntu Kylin](http://ubuntu.com/download/ubuntu-kylin)
    -   [Alternative downloads](http://ubuntu.com/download/alternative-downloads)

-   [Support](http://ubuntu.com/support/)
    -------------------------------------

    -   [Overview](http://ubuntu.com/support)
    -   [Security notices](http://www.ubuntu.com/usn/)

-   [About](http://ubuntu.com/about/)
    ---------------------------------

    -   [About Ubuntu](http://ubuntu.com/about/about-ubuntu)
    -   [Careers](http://www.canonical.com/careers)
    -   [Canonical and Ubuntu](http://ubuntu.com/about/canonical-and-ubuntu)
    -   [Contact us](http://ubuntu.com/about/contact-us)
    -   [Canonical news feed](http://insights.ubuntu.com/feed/)

© 2015 Canonical Ltd. Ubuntu and Canonical are registered trademarks of Canonical Ltd.

-   [Legal information](http://www.ubuntu.com/legal)
-   [Report a bug on this site](https://bugs.launchpad.net/developer-ubuntu-com/)

<span class="accessibility-aid">[Go to the top of the page](index.html#)</span>
