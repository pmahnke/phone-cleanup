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

-   RotationAnimation

RotationAnimation
=================

<span class="subtitle"></span>
Animates changes in rotation values More...

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
<td><p><a href="../QtQuick.PropertyAnimation/index.html">PropertyAnimation</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[direction](index.html#direction-prop)**** : enumeration
-   ****[from](index.html#from-prop)**** : real
-   ****[to](index.html#to-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

[RotationAnimation](index.html) is a specialized [PropertyAnimation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.3/QtQuick.animation/#propertyanimation) that gives control over the direction of rotation during an animation.

By default, it rotates in the direction of the numerical change; a rotation from 0 to 240 will rotate 240 degrees clockwise, while a rotation from 240 to 0 will rotate 240 degrees counterclockwise. The [direction](index.html#direction-prop) property can be set to specify the direction in which the rotation should occur.

In the following example we use [RotationAnimation](index.html) to animate the rotation between states via the shortest path:

``` qml
import QtQuick 2.0
Item {
    width: 300; height: 300
    Rectangle {
        id: rect
        width: 150; height: 100; anchors.centerIn: parent
        color: "red"
        antialiasing: true
        states: State {
            name: "rotated"
            PropertyChanges { target: rect; rotation: 180 }
        }
        transitions: Transition {
            RotationAnimation { duration: 1000; direction: RotationAnimation.Counterclockwise }
        }
    }
    MouseArea { anchors.fill: parent; onClicked: rect.state = "rotated" }
}
```

Notice the [RotationAnimation](index.html) did not need to set a `target` value. As a convenience, when used in a transition, [RotationAnimation](index.html) will rotate all properties named "rotation" or "angle". You can override this by providing your own properties via [properties](../QtQuick.PropertyAnimation/index.html#properties-prop) or [property](../QtQuick.PropertyAnimation/index.html#property-prop).

Also, note the [Rectangle](../QtQuick.Rectangle/index.html) will be rotated around its default [transformOrigin](../QtQuick.Item/index.html#transformOrigin-prop) (which is `Item.Center`). To use a different transform origin, set the origin in the [PropertyChanges](../QtQuick.PropertyChanges/index.html) object and apply the change at the start of the animation using [PropertyAction](../QtQuick.PropertyAction/index.html). See the [PropertyAction](../QtQuick.PropertyAction/index.html) documentation for more details.

Like any other animation type, a [RotationAnimation](index.html) can be applied in a number of ways, including transitions, behaviors and property value sources. The [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations/index.html) documentation shows a variety of methods for creating animations.

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations/index.html) and [Qt Quick Examples - Animation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.3/QtQuick.animation/).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="direction-prop"></span><span class="name">direction</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the direction of the rotation.

Possible values are:

-   [RotationAnimation](index.html).Numerical (default) - Rotate by linearly interpolating between the two numbers. A rotation from 10 to 350 will rotate 340 degrees clockwise.
-   [RotationAnimation](index.html).Clockwise - Rotate clockwise between the two values
-   [RotationAnimation](index.html).Counterclockwise - Rotate counterclockwise between the two values
-   [RotationAnimation](index.html).Shortest - Rotate in the direction that produces the shortest animation path. A rotation from 10 to 350 will rotate 20 degrees counterclockwise.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="from-prop"></span><span class="name">from</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the starting value for the animation.

For example, the following animation is not applied until the `angle` value has reached 100:

``` qml
Item {
    states: [
        // ...
    ]
    transition: Transition {
        RotationAnimation { properties: "angle"; from: 100; duration: 2000 }
    }
}
```

If the [RotationAnimation](index.html) is defined within a [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition) or [Behavior](../QtQuick.Behavior/index.html), this value defaults to the value defined in the starting state of the [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition), or the current value of the property at the moment the [Behavior](../QtQuick.Behavior/index.html) is triggered.

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="to-prop"></span><span class="name">to</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the end value for the animation..

If the [RotationAnimation](index.html) is defined within a [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition) or [Behavior](../QtQuick.Behavior/index.html), this value defaults to the value defined in the end state of the [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition), or the value of the property change that triggered the [Behavior](../QtQuick.Behavior/index.html).

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations/index.html).

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
