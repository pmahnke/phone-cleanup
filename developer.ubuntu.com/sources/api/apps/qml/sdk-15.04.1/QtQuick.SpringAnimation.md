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

-   SpringAnimation

SpringAnimation
===============

<span class="subtitle"></span>
Allows a property to track a value in a spring-like motion More...

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

-   ****[damping](index.html#damping-prop)**** : real
-   ****[epsilon](index.html#epsilon-prop)**** : real
-   ****[mass](index.html#mass-prop)**** : real
-   ****[modulus](index.html#modulus-prop)**** : real
-   ****[spring](index.html#spring-prop)**** : real
-   ****[velocity](index.html#velocity-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

[SpringAnimation](index.html) mimics the oscillatory behavior of a spring, with the appropriate [spring](index.html#spring-prop) constant to control the acceleration and the [damping](index.html#damping-prop) to control how quickly the effect dies away.

You can also limit the maximum [velocity](index.html#velocity-prop) of the animation.

The following [Rectangle](../QtQuick.Rectangle/index.html) moves to the position of the mouse using a [SpringAnimation](index.html) when the mouse is clicked. The use of the [Behavior](../QtQuick.Behavior/index.html) on the `x` and `y` values indicates that whenever these values are changed, a [SpringAnimation](index.html) should be applied.

``` qml
import QtQuick 2.0
Item {
    width: 300; height: 300
    Rectangle {
        id: rect
        width: 50; height: 50
        color: "red"
        Behavior on x { SpringAnimation { spring: 2; damping: 0.2 } }
        Behavior on y { SpringAnimation { spring: 2; damping: 0.2 } }
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            rect.x = mouse.x - rect.width/2
            rect.y = mouse.y - rect.height/2
        }
    }
}
```

Like any other animation type, a [SpringAnimation](index.html) can be applied in a number of ways, including transitions, behaviors and property value sources. The [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations/index.html) documentation shows a variety of methods for creating animations.

**See also** [SmoothedAnimation](../QtQuick.SmoothedAnimation/index.html), [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations/index.html), [Qt Quick Examples - Animation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtQuick.animation/), and [Qt Quick Demo - Clocks](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtQuick.demos-clocks/).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="damping-prop"></span><span class="name">damping</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the spring damping value.

This value describes how quickly the spring-like motion comes to rest. The default value is 0.

The useful value range is 0 - 1.0. The lower the value, the faster it comes to rest.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="epsilon-prop"></span><span class="name">epsilon</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the spring epsilon.

The epsilon is the rate and amount of change in the value which is close enough to 0 to be considered equal to zero. This will depend on the usage of the value. For pixel positions, 0.25 would suffice. For scale, 0.005 will suffice.

The default is 0.01. Tuning this value can provide small performance improvements.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mass-prop"></span><span class="name">mass</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the "mass" of the property being moved.

The value is 1.0 by default.

A greater mass causes slower movement and a greater spring-like motion when an item comes to rest.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="modulus-prop"></span><span class="name">modulus</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the modulus value. The default value is 0.

Setting a *modulus* forces the target value to "wrap around" at the modulus. For example, setting the modulus to 360 will cause a value of 370 to wrap around to 10.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="spring-prop"></span><span class="name">spring</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property describes how strongly the target is pulled towards the source. The default value is 0 (that is, the spring-like motion is disabled).

The useful value range is 0 - 5.0.

When this property is set and the [velocity](index.html#velocity-prop) value is greater than 0, the [velocity](index.html#velocity-prop) limits the maximum speed.

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

This property holds the maximum velocity allowed when tracking the source.

The default value is 0 (no maximum velocity).

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
