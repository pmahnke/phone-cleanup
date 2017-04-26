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
-   [SDK 15.04.3](../index.html) ›
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   ParentAnimation

ParentAnimation
===============

<span class="subtitle"></span>
Animates changes in parent values More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import QtQuick 2.4</td>
</tr>
<tr class="even">
<td>Since:</td>
<td>Qt 5.0</td>
</tr>
<tr class="odd">
<td>Inherits:</td>
<td><p><a href="../QtQuick.Animation/index.html">Animation</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[newParent](index.html#newParent-prop)**** : Item
-   ****[target](index.html#target-prop)**** : Item
-   ****[via](index.html#via-prop)**** : Item

<span id="details"></span>
Detailed Description
--------------------

[ParentAnimation](index.html) is used to animate a parent change for an [Item](../QtQuick.Item/index.html).

For example, the following [ParentChange](../QtQuick.ParentChange/index.html) changes `blueRect` to become a child of `redRect` when it is clicked. The inclusion of the [ParentAnimation](index.html), which defines a [NumberAnimation](../QtQuick.NumberAnimation/index.html) to be applied during the transition, ensures the item animates smoothly as it moves to its new parent:

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
        transitions: Transition {
            ParentAnimation {
                NumberAnimation { properties: "x,y"; duration: 1000 }
            }
        }
        MouseArea { anchors.fill: parent; onClicked: blueRect.state = "reparented" }
    }
}
```

A [ParentAnimation](index.html) can contain any number of animations. These animations will be run in parallel; to run them sequentially, define them within a [SequentialAnimation](../QtQuick.SequentialAnimation/index.html).

In some cases, such as when reparenting between items with clipping enabled, it is useful to animate the parent change via another item that does not have clipping enabled. Such an item can be set using the [via](index.html#via-prop) property.

[ParentAnimation](index.html) is typically used within a [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition) in conjunction with a [ParentChange](../QtQuick.ParentChange/index.html). When used in this manner, it animates any [ParentChange](../QtQuick.ParentChange/index.html) that has occurred during the state change. This can be overridden by setting a specific target item using the [target](index.html#target-prop) property.

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations/index.html) and [Qt Quick Examples - Animation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.3/QtQuick.animation/).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="newParent-prop"></span><span class="name">newParent</span> : <span class="type"><a href="../QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

The new parent to animate to.

If the [ParentAnimation](index.html) is defined within a [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition), this value defaults to the value defined in the end state of the [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition).

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

The item to reparent.

When used in a transition, if no target is specified, all [ParentChange](../QtQuick.ParentChange/index.html) occurrences are animated by the [ParentAnimation](index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="via-prop"></span><span class="name">via</span> : <span class="type"><a href="../QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

The item to reparent via. This provides a way to do an unclipped animation when both the old parent and new parent are clipped.

``` qml
ParentAnimation {
    target: myItem
    via: topLevelItem
    // ...
}
```

**Note:** This only works when the [ParentAnimation](index.html) is used in a [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition) in conjunction with a [ParentChange](../QtQuick.ParentChange/index.html).

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
