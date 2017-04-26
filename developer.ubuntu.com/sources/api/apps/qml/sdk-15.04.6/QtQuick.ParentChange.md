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
-   [SDK 15.04.6](../index.html) ›
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   ParentChange

ParentChange
============

<span class="subtitle"></span>
Specifies how to reparent an Item in a state change More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[height](index.html#height-prop)**** : real
-   ****[parent](index.html#parent-prop)**** : Item
-   ****[rotation](index.html#rotation-prop)**** : real
-   ****[scale](index.html#scale-prop)**** : real
-   ****[target](index.html#target-prop)**** : Item
-   ****[width](index.html#width-prop)**** : real
-   ****[x](index.html#x-prop)**** : real
-   ****[y](index.html#y-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

[ParentChange](index.html) reparents an item while preserving its visual appearance (position, size, rotation, and scale) on screen. You can then specify a transition to move/resize/rotate/scale the item to its final intended appearance.

[ParentChange](index.html) can only preserve visual appearance if no complex transforms are involved. More specifically, it will not work if the transform property has been set for any items involved in the reparenting (i.e. items in the common ancestor tree for the original and new parent).

The example below displays a large red rectangle and a small blue rectangle, side by side. When the `blueRect` is clicked, it changes to the "reparented" state: its parent is changed to `redRect` and it is positioned at (10, 10) within the red rectangle, as specified in the [ParentChange](index.html).

``` qml
import QtQuick 2.0
Item {
    width: 200; height: 100
    Rectangle {
        id: redRect
        width: 100; height: 100
        color: "red"
    }
    Rectangle {
        id: blueRect
        x: redRect.width
        width: 50; height: 50
        color: "blue"
        states: State {
            name: "reparented"
            ParentChange { target: blueRect; parent: redRect; x: 10; y: 10 }
        }
        MouseArea { anchors.fill: parent; onClicked: blueRect.state = "reparented" }
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/30e47a58-17e7-48fa-9954-567805bcd604-api/apps/qml/sdk-15.04.6/QtQuick.ParentChange/images/parentchange.png)

You can specify at which point in a transition you want a [ParentChange](index.html) to occur by using a [ParentAnimation](../QtQuick.ParentAnimation/index.html).

Note that unlike [PropertyChanges](../QtQuick.PropertyChanges/index.html), [ParentChange](index.html) expects an Item-based target; it will not work with arbitrary objects (for example, you couldn't use it to reparent a Timer).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="height-prop"></span><span class="name">height</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the new position, size, scale, and rotation for the item in this state.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="parent-prop"></span><span class="name">parent</span> : <span class="type"><a href="../QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the new parent for the item in this state.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="rotation-prop"></span><span class="name">rotation</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the new position, size, scale, and rotation for the item in this state.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="scale-prop"></span><span class="name">scale</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the new position, size, scale, and rotation for the item in this state.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="target-prop"></span><span class="name">target</span> : <span class="type"><a href="../QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the item to be reparented

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="width-prop"></span><span class="name">width</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the new position, size, scale, and rotation for the item in this state.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="x-prop"></span><span class="name">x</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the new position, size, scale, and rotation for the item in this state.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="y-prop"></span><span class="name">y</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the new position, size, scale, and rotation for the item in this state.

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
