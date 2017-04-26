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

-   Flipable

Flipable
========

<span class="subtitle"></span>
Provides a surface that can be flipped More...

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
<td>Inherits:</td>
<td><p><a href="../QtQuick.Item/index.html">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[back](index.html#back-prop)**** : Item
-   ****[front](index.html#front-prop)**** : Item
-   ****[side](index.html#side-prop)**** : enumeration

<span id="details"></span>
Detailed Description
--------------------

Flipable is an item that can be visibly "flipped" between its front and back sides, like a card. It may used together with [Rotation](../QtQuick.Rotation/index.html), [State](../QtQuick.State/index.html) and [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition) types to produce a flipping effect.

The [front](index.html#front-prop) and [back](index.html#back-prop) properties are used to hold the items that are shown respectively on the front and back sides of the flipable item.

<span id="example-usage"></span>
Example Usage
-------------

The following example shows a Flipable item that flips whenever it is clicked, rotating about the y-axis.

This flipable item has a `flipped` boolean property that is toggled whenever the [MouseArea](../QtQuick.MouseArea/index.html) within the flipable is clicked. When `flipped` is true, the item changes to the "back" state; in this state, the `angle` of the [Rotation](../QtQuick.Rotation/index.html) item is changed to 180 degrees to produce the flipping effect. When `flipped` is false, the item reverts to the default state, in which the `angle` value is 0.

``` qml
import QtQuick 2.0
Flipable {
    id: flipable
    width: 240
    height: 240
    property bool flipped: false
    front: Image { source: "front.png"; anchors.centerIn: parent }
    back: Image { source: "back.png"; anchors.centerIn: parent }
    transform: Rotation {
        id: rotation
        origin.x: flipable.width/2
        origin.y: flipable.height/2
        axis.x: 0; axis.y: 1; axis.z: 0     // set axis.y to 1 to rotate around y-axis
        angle: 0    // the default angle
    }
    states: State {
        name: "back"
        PropertyChanges { target: rotation; angle: 180 }
        when: flipable.flipped
    }
    transitions: Transition {
        NumberAnimation { target: rotation; property: "angle"; duration: 4000 }
    }
    MouseArea {
        anchors.fill: parent
        onClicked: flipable.flipped = !flipable.flipped
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/923b38a7-a8ae-48b5-ad7c-2f34d521cb7e-api/apps/qml/sdk-15.04.3/QtQuick.Flipable/images/flipable.gif)

The [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition) creates the animation that changes the angle over four seconds. When the item changes between its "back" and default states, the [NumberAnimation](../QtQuick.NumberAnimation/index.html) animates the angle between its old and new values.

See [Qt Quick States](../QtQuick.qtquick-statesanimations-states/index.html) for details on state changes and the default state, and [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations/index.html) for more information on how animations work within transitions.

**See also** [UI Components: Flipable Example](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.3/QtQuick.customitems-flipable/).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="back-prop"></span><span class="name">back</span> : <span class="type"><a href="../QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

The front and back sides of the flipable.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="front-prop"></span><span class="name">front</span> : <span class="type"><a href="../QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

The front and back sides of the flipable.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="side-prop"></span><span class="name">side</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

The side of the Flipable currently visible. Possible values are `Flipable.Front` and `Flipable.Back`.

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
