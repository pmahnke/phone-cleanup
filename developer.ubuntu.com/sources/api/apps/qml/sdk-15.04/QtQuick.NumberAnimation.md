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
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   NumberAnimation

NumberAnimation
===============

<span class="subtitle"></span>
Animates changes in qreal-type values More...

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
<tr class="odd">
<td>Inherited By:</td>
<td><p><a href="../QtQuick.SmoothedAnimation/index.html">SmoothedAnimation</a> and <a href="../QtQuick.SpringAnimation/index.html">SpringAnimation</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[from](index.html#from-prop)**** : real
-   ****[to](index.html#to-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

[NumberAnimation](index.html) is a specialized [PropertyAnimation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.animation/#propertyanimation) that defines an animation to be applied when a numerical value changes.

Here is a [NumberAnimation](index.html) applied to the `x` property of a [Rectangle](../QtQuick.Rectangle/index.html) as a property value source. It animates the `x` value from its current value to a value of 50, over 1000 milliseconds:

``` qml
import QtQuick 2.0
Rectangle {
    width: 100; height: 100
    color: "red"
    NumberAnimation on x { to: 50; duration: 1000 }
}
```

Like any other animation type, a [NumberAnimation](index.html) can be applied in a number of ways, including transitions, behaviors and property value sources. The [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations/index.html) documentation shows a variety of methods for creating animations.

Note that [NumberAnimation](index.html) may not animate smoothly if there are irregular changes in the number value that it is tracking. If this is the case, use [SmoothedAnimation](../QtQuick.SmoothedAnimation/index.html) instead.

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations/index.html) and [Qt Quick Examples - Animation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.animation/).

Property Documentation
----------------------

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

For example, the following animation is not applied until the `x` value has reached 100:

``` qml
Item {
    states: [
        // ...
    ]
    transition: Transition {
        NumberAnimation { properties: "x"; from: 100; duration: 200 }
    }
}
```

If the [NumberAnimation](index.html) is defined within a [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition) or [Behavior](../QtQuick.Behavior/index.html), this value defaults to the value defined in the starting state of the [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition), or the current value of the property at the moment the [Behavior](../QtQuick.Behavior/index.html) is triggered.

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

This property holds the end value for the animation.

If the [NumberAnimation](index.html) is defined within a [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition) or [Behavior](../QtQuick.Behavior/index.html), this value defaults to the value defined in the end state of the [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition), or the value of the property change that triggered the [Behavior](../QtQuick.Behavior/index.html).

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
