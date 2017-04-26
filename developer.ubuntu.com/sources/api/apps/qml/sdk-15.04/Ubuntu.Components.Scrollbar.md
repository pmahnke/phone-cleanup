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
-   [SDK 15.04](../index.html) ›
-   [Ubuntu.Components](../Ubuntu.Components/index.html) ›

<!-- -->

-   Scrollbar

Scrollbar
=========

<span class="subtitle"></span>
The ScrollBar component provides scrolling functionality for scrollable views (i.e. Flickable, ListView). More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components 1.2</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="../Ubuntu.Components.StyledItem/index.html">StyledItem</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[activeFocusOnPress](index.html#activeFocusOnPress-prop)**** : bool
-   ****[align](index.html#align-prop)**** : int
-   ****[flickableItem](index.html#flickableItem-prop)**** : Flickable
-   ****[style](index.html#style-prop)**** : Component

<span id="details"></span>
Detailed Description
--------------------

The ScrollBar can be set to any flickable and has built-in anchoring setup to the attached flickable's front, rear, top or bottom. the scrollbar can also be aligned using anchors, however the built-in align functionality makes sure to have the proper alignemt applied based on theme and layout direction (RTL or LTR).

The content position is driven through the attached Flickable. Therefore every style implementation should drive the position through contentX/contentY properties, depending on whether the orientation is vertical or horizontal.

Example:

``` qml
Item {
    ListView {
        id: list
        width: units.gu(37)
        height: units.gu(37)
        model: 30
        delegate: Rectangle {
            width: ListView.view.width
            height: units.gu(5)
            Text {
                anchors.fill: parent
                text: "Item " + modelData
            }
        }
    }
    Scrollbar {
        flickableItem: list
        align: Qt.AlignTrailing
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
<td><p><span id="activeFocusOnPress-prop"></span><span class="name">activeFocusOnPress</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property specifies whether the [StyledItem](../Ubuntu.Components.StyledItem/index.html) can gain focus on a mouse press/touch or not. When the value is true, the focus will be set on the component when the mouse is pressed over it or touched. However if one of the component's ancestor [StyledItem](../Ubuntu.Components.StyledItem/index.html) or derived is having the property value false, the focus will not be gained automatically.

In the following example the [TextField](../Ubuntu.Components.TextField/index.html) will stay focused when clicked on the red rectangle.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
Column {
    width: units.gu(50)
    height: units.gu(100)
    StyledItem {
        objectName: "passiveScope"
        width: parent.width
        height: units.gu(30)
        Rectangle {
            anchors.fill: parent
            color: "red"
            StyledItem {
                objectName: "activeScope"
                activeFocusOnPress: true
                anchors.fill: parent
            }
        }
    }
    TextField {
        id: input
        text: "The input stays focus even if red box is clicked"
    }
    Component.onCompleted: input.forceActiveFocus()
    Connections {
        target: window
        onActiveFocusItemChanged: console.debug("focus on", window.activeFocusItem)
    }
}
```

The default value is `false`.

This QML property was introduced in Ubuntu.Components 1.1.

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

The property defines the alignment of the scrollbar to the [flickableItem](index.html#flickableItem-prop). The implementation handles the alignment as follows:

-   Qt.AlignLeading anchors to the left on LTR and to the right on RTL layouts
-   Qt.AlignTrailing anchors to the right on LTR and to the left on RTL layouts
-   Qt.AlignTop anchors to the top
-   Qt.AlignBottom anchors to the bottom

The default value is **Qt.AlignTrailing**.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flickableItem-prop"></span><span class="name">flickableItem</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Flickable/index.html">Flickable</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the flickable item (Flickable, [ListView](../../sdk-14.10/QtQuick.ListView/index.html) or [GridView](../../sdk-14.10/QtQuick.qtquick-draganddrop-example/index.html#gridview)) the Scrollbar is attached to.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="style-prop"></span><span class="name">style</span> : <span class="type"><a href="../../sdk-14.10/QtQml.Component/index.html">Component</a></span></p></td>
</tr>
</tbody>
</table>

Component instantiated immediately and placed below everything else.

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
