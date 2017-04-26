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
-   [SDK 15.04.1](../index.html) ›
-   [Ubuntu.Components.Popups](../Ubuntu.Components.Popups/index.html) ›

<!-- -->

-   Popover

Popover
=======

<span class="subtitle"></span>
A popover allows an application to present additional content without changing the view. A popover has a fixed width and automatic height, depending on is contents. It can be closed by clicking anywhere outside of the popover area. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components.Popups 1.0</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="../Ubuntu.Components.Popups.PopupBase/index.html">PopupBase</a></p></td>
</tr>
<tr class="odd">
<td>Inherited By:</td>
<td><p><a href="../Ubuntu.Components.Popups.ActionSelectionPopover/index.html">ActionSelectionPopover</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[autoClose](index.html#autoClose-prop)**** : bool
-   ****[caller](index.html#caller-prop)**** : Item
-   ****[callerMargin](index.html#callerMargin-prop)**** : real
-   ****[container](index.html#container-prop)**** : list&lt;Object&gt;
-   ****[contentHeight](index.html#contentHeight-prop)**** : real
-   ****[contentWidth](index.html#contentWidth-prop)**** : real
-   ****[edgeMargins](index.html#edgeMargins-prop)**** : real
-   ****[foregroundStyle](index.html#foregroundStyle-prop)**** : Component
-   ****[pointerTarget](index.html#pointerTarget-prop)**** : Item

<span id="methods"></span>
Methods
-------

-   ****[hide](index.html#hide-method)****()
-   ****[show](index.html#show-method)****()

<span id="details"></span>
Detailed Description
--------------------

[See also the Design Guidelines on Popovers](https://design.ubuntu.com/apps/building-blocks/dialog#popover).

Example:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3 as ListItem
import Ubuntu.Components.Popups 1.3
Rectangle {
    color: theme.palette.normal.background
    width: units.gu(80)
    height: units.gu(80)
    Component {
        id: popoverComponent
        Popover {
            id: popover
            Column {
                id: containerLayout
                anchors {
                    left: parent.left
                    top: parent.top
                    right: parent.right
                }
                ListItem.Header { text: "Standard list items" }
                ListItem.Standard { text: "Do something" }
                ListItem.Standard { text: "Do something else" }
                ListItem.Header { text: "Buttons" }
                ListItem.SingleControl {
                    highlightWhenPressed: false
                    control: Button {
                        text: "Do nothing"
                        anchors {
                            fill: parent
                            margins: units.gu(1)
                        }
                    }
                }
                ListItem.SingleControl {
                    highlightWhenPressed: false
                    control: Button {
                        text: "Close"
                        anchors {
                            fill: parent
                            margins: units.gu(1)
                        }
                        onClicked: PopupUtils.close(popover)
                    }
                }
            }
        }
    }
    Button {
        id: popoverButton
        anchors.centerIn: parent
        text: "open"
        onClicked: PopupUtils.open(popoverComponent, popoverButton)
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
<td><p><span id="autoClose-prop"></span><span class="name">autoClose</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property drives the automatic closing of the Popover when user taps on the dismissArea. The default behavior is to close the Popover, therefore set to true.

When set to false, closing the Popover is the responsibility of the caller. Also, the mouse and touch events are not blocked from the dismissArea.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="caller-prop"></span><span class="name">caller</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

The Item such as a [Button](../Ubuntu.Components.Button/index.html) that the user interacted with to open the Dialog. This property will be used for the automatic positioning of the Dialog next to the caller, if possible.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="callerMargin-prop"></span><span class="name">callerMargin</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The property holds the margin from the popover's caller. The property is themed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="container-prop"></span><span class="qmldefault">default</span><span class="name">container</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td>
</tr>
</tbody>
</table>

Content will be put inside the foreround of the Popover.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentHeight-prop"></span><span class="name">contentHeight</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Use this property to override the default content height.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentWidth-prop"></span><span class="name">contentWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Use this property to override the default content width.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="edgeMargins-prop"></span><span class="name">edgeMargins</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The property holds the margins from the popover's dismissArea. The property is themed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="foregroundStyle-prop"></span><span class="name">foregroundStyle</span> : <span class="type"><a href="../../sdk-14.10/QtQml.Component/index.html">Component</a></span></p></td>
</tr>
</tbody>
</table>

Exposes the style property of the [StyledItem](../Ubuntu.Components.StyledItem/index.html) contained in the Popover. Refer to [StyledItem](../Ubuntu.Components.StyledItem/index.html) how to use it.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pointerTarget-prop"></span><span class="name">pointerTarget</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the item to which the pointer should be anchored to. This can be same as the caller or any child of the caller. By default the property is set to caller.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hide-method"></span><span class="name">hide</span>()</p></td>
</tr>
</tbody>
</table>

Hide the popover. Only use this function if you handle memory management. Otherwise use PopupUtils.close() to do it automatically.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="show-method"></span><span class="name">show</span>()</p></td>
</tr>
</tbody>
</table>

Make the popover visible. Reparent to the background area object first if needed. Only use this function if you handle memory management. Otherwise use PopupUtils.open() to do it automatically.

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
