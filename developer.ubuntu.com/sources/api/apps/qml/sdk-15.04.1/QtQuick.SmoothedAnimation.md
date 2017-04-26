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
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   SmoothedAnimation

SmoothedAnimation
=================

<span class="subtitle"></span>
Allows a property to smoothly track a value More...

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
<td><p><a href="../QtQuick.NumberAnimation/index.html">NumberAnimation</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[duration](index.html#duration-prop)**** : int
-   ****[maximumEasingTime](index.html#maximumEasingTime-prop)**** : int
-   ****[reversingMode](index.html#reversingMode-prop)**** : enumeration
-   ****[velocity](index.html#velocity-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

A [SmoothedAnimation](index.html) animates a property's value to a set target value using an ease in/out quad easing curve. When the target value changes, the easing curves used to animate between the old and new target values are smoothly spliced together to create a smooth movement to the new target value that maintains the current velocity.

The follow example shows one [Rectangle](../QtQuick.Rectangle/index.html) tracking the position of another using [SmoothedAnimation](index.html). The green rectangle's `x` and `y` values are bound to those of the red rectangle. Whenever these values change, the green rectangle smoothly animates to its new position:

``` qml
import QtQuick 2.0
Rectangle {
    width: 800; height: 600
    color: "blue"
    Rectangle {
        width: 60; height: 60
        x: rect1.x - 5; y: rect1.y - 5
        color: "green"
        Behavior on x { SmoothedAnimation { velocity: 200 } }
        Behavior on y { SmoothedAnimation { velocity: 200 } }
    }
    Rectangle {
        id: rect1
        width: 50; height: 50
        color: "red"
    }
    focus: true
    Keys.onRightPressed: rect1.x = rect1.x + 100
    Keys.onLeftPressed: rect1.x = rect1.x - 100
    Keys.onUpPressed: rect1.y = rect1.y - 100
    Keys.onDownPressed: rect1.y = rect1.y + 100
}
```

A [SmoothedAnimation](index.html) can be configured by setting the [velocity](index.html#velocity-prop) at which the animation should occur, or the [duration](index.html#duration-prop) that the animation should take. If both the [velocity](index.html#velocity-prop) and [duration](index.html#duration-prop) are specified, the one that results in the quickest animation is chosen for each change in the target value.

For example, animating from 0 to 800 will take 4 seconds if a velocity of 200 is set, will take 8 seconds with a duration of 8000 set, and will take 4 seconds with both a velocity of 200 and a duration of 8000 set. Animating from 0 to 20000 will take 10 seconds if a velocity of 200 is set, will take 8 seconds with a duration of 8000 set, and will take 8 seconds with both a velocity of 200 and a duration of 8000 set.

The default velocity of [SmoothedAnimation](index.html) is 200 units/second. Note that if the range of the value being animated is small, then the velocity will need to be adjusted appropriately. For example, the opacity of an item ranges from 0 - 1.0. To enable a smooth animation in this range the velocity will need to be set to a value such as 0.5 units/second. Animating from 0 to 1.0 with a velocity of 0.5 will take 2000 ms to complete.

Like any other animation type, a [SmoothedAnimation](index.html) can be applied in a number of ways, including transitions, behaviors and property value sources. The [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations/index.html) documentation shows a variety of methods for creating animations.

**See also** [SpringAnimation](../QtQuick.SpringAnimation/index.html), [NumberAnimation](../QtQuick.NumberAnimation/index.html), [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations/index.html), and [Qt Quick Examples - Animation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtQuick.animation/).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="duration-prop"></span><span class="name">duration</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the animation duration, in msecs, used when tracking the source.

Setting this to -1 (the default) disables the duration value.

If the velocity value and the duration value are both enabled, then the animation will use whichever gives the shorter duration.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumEasingTime-prop"></span><span class="name">maximumEasingTime</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property specifies the maximum time, in msecs, any "eases" during the follow should take. Setting this property causes the velocity to "level out" after at a time. Setting a negative value reverts to the normal mode of easing over the entire animation duration.

The default value is -1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="reversingMode-prop"></span><span class="name">reversingMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Sets how the [SmoothedAnimation](index.html) behaves if an animation direction is reversed.

Possible values are:

-   [SmoothedAnimation](index.html).Eased (default) - the animation will smoothly decelerate, and then reverse direction
-   [SmoothedAnimation](index.html).Immediate - the animation will immediately begin accelerating in the reverse direction, beginning with a velocity of 0
-   [SmoothedAnimation](index.html).Sync - the property is immediately set to the target value

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="velocity-prop"></span><span class="name">velocity</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the average velocity allowed when tracking the 'to' value.

The default velocity of [SmoothedAnimation](index.html) is 200 units/second.

Setting this to -1 disables the velocity value.

If the velocity value and the duration value are both enabled, then the animation will use whichever gives the shorter duration.

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
