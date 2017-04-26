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
-   [SDK 15.04.4](../index.html) ›
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   LayoutMirroring

LayoutMirroring
===============

<span class="subtitle"></span>
Property used to mirror layout behavior More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[childrenInherit](index.html#childrenInherit-prop)**** : bool
-   ****[enabled](index.html#enabled-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

The [LayoutMirroring](index.html) attached property is used to horizontally mirror [Item anchors](../QtQuick.qtquick-positioning-anchors/index.html#anchor-layout), [positioner](../QtQuick.qtquick-positioning-layouts/index.html) types (such as [Row](../QtQuick.qtquick-positioning-layouts/index.html#row) and [Grid](../QtQuick.qtquick-positioning-layouts/index.html#grid)) and views (such as [GridView](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/QtQuick.draganddrop/#gridview) and horizontal [ListView](../QtQuick.ListView/index.html)). Mirroring is a visual change: left anchors become right anchors, and positioner types like [Grid](../QtQuick.qtquick-positioning-layouts/index.html#grid) and [Row](../QtQuick.qtquick-positioning-layouts/index.html#row) reverse the horizontal layout of child items.

Mirroring is enabled for an item by setting the [enabled](index.html#enabled-prop) property to true. By default, this only affects the item itself; setting the [childrenInherit](index.html#childrenInherit-prop) property to true propagates the mirroring behavior to all child items as well. If the `LayoutMirroring` attached property has not been defined for an item, mirroring is not enabled.

The following example shows mirroring in action. The [Row](../QtQuick.qtquick-positioning-layouts/index.html#row) below is specified as being anchored to the left of its parent. However, since mirroring has been enabled, the anchor is horizontally reversed and it is now anchored to the right. Also, since items in a [Row](../QtQuick.qtquick-positioning-layouts/index.html#row) are positioned from left to right by default, they are now positioned from right to left instead, as demonstrated by the numbering and opacity of the items:

``` qml
import QtQuick 2.0
Rectangle {
    LayoutMirroring.enabled: true
    LayoutMirroring.childrenInherit: true
    width: 300; height: 50
    color: "yellow"
    border.width: 1
    Row {
        anchors { left: parent.left; margins: 5 }
        y: 5; spacing: 5
        Repeater {
            model: 5
            Rectangle {
                color: "red"
                opacity: (5 - index) / 5
                width: 40; height: 40
                Text {
                    text: index + 1
                    anchors.centerIn: parent
                }
            }
        }
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/701c39e8-83fe-4175-8a64-d46543787487-api/apps/qml/sdk-15.04.4/QtQuick.LayoutMirroring/images/layoutmirroring.png)

Layout mirroring is useful when it is necessary to support both left-to-right and right-to-left layout versions of an application to target different language areas. The [childrenInherit](index.html#childrenInherit-prop) property allows layout mirroring to be applied without manually setting layout configurations for every item in an application. Keep in mind, however, that mirroring does not affect any positioning that is defined by the [Item](../QtQuick.Item/index.html) [x](../QtQuick.Item/index.html#x-prop) coordinate value, so even with mirroring enabled, it will often be necessary to apply some layout fixes to support the desired layout direction. Also, it may be necessary to disable the mirroring of individual child items (by setting [LayoutMirroring.enabled](index.html#enabled-prop) to false for such items) if mirroring is not the desired behavior, or if the child item already implements mirroring in some custom way.

See [Right-to-left User Interfaces](../QtQuick.qtquick-positioning-righttoleft/index.html) for further details on using `LayoutMirroring` and other related features to implement right-to-left support for an application.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="childrenInherit-prop"></span><span class="name">childrenInherit</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the [LayoutMirroring.enabled](index.html#enabled-prop) value for this item is inherited by its children.

The default value is false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="enabled-prop"></span><span class="name">enabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the item's layout is mirrored horizontally. Setting this to true horizontally reverses [anchor](../QtQuick.qtquick-positioning-anchors/index.html#anchor-layout) settings such that left anchors become right, and right anchors become left. For [positioner](../QtQuick.qtquick-positioning-layouts/index.html) types (such as [Row](../QtQuick.qtquick-positioning-layouts/index.html#row) and [Grid](../QtQuick.qtquick-positioning-layouts/index.html#grid)) and view types (such as [GridView](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/QtQuick.draganddrop/#gridview) and [ListView](../QtQuick.ListView/index.html)) this also mirrors the horizontal layout direction of the item.

The default value is false.

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
