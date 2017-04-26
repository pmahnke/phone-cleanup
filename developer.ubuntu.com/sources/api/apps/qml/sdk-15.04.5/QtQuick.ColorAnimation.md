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
-   [SDK 15.04.5](../index.html) ›
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   ColorAnimation

ColorAnimation
==============

<span class="subtitle"></span>
Animates changes in color values More...

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

-   ****[from](index.html#from-prop)**** : color
-   ****[to](index.html#to-prop)**** : color

<span id="details"></span>
Detailed Description
--------------------

[ColorAnimation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.5/QtQuick.animation/#coloranimation) is a specialized [PropertyAnimation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.5/QtQuick.animation/#propertyanimation) that defines an animation to be applied when a color value changes.

Here is a [ColorAnimation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.5/QtQuick.animation/#coloranimation) applied to the `color` property of a [Rectangle](../QtQuick.Rectangle/index.html) as a property value source. It animates the `color` property's value from its current value to a value of "red", over 1000 milliseconds:

``` qml
import QtQuick 2.0
Rectangle {
    width: 100; height: 100
    color: "red"
    ColorAnimation on color { to: "yellow"; duration: 1000 }
}
```

Like any other animation type, a [ColorAnimation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.5/QtQuick.animation/#coloranimation) can be applied in a number of ways, including transitions, behaviors and property value sources. The [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations/index.html) documentation shows a variety of methods for creating animations.

For convenience, when a [ColorAnimation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.5/QtQuick.animation/#coloranimation) is used in a [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition), it will animate any `color` properties that have been modified during the state change. If a [property](../QtQuick.PropertyAnimation/index.html#property-prop) or [properties](../QtQuick.PropertyAnimation/index.html#properties-prop) are explicitly set for the animation, then those are used instead.

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations/index.html) and [Qt Quick Examples - Animation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.5/QtQuick.animation/).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="from-prop"></span><span class="name">from</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

This property holds the color value at which the animation should begin.

For example, the following animation is not applied until a color value has reached "\#c0c0c0":

``` qml
Item {
    states: [
        // States are defined here...
    ]
    transition: Transition {
        ColorAnimation { from: "#c0c0c0"; duration: 2000 }
    }
}
```

If the [ColorAnimation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.5/QtQuick.animation/#coloranimation) is defined within a [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition) or [Behavior](../QtQuick.Behavior/index.html), this value defaults to the value defined in the starting state of the [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition), or the current value of the property at the moment the [Behavior](../QtQuick.Behavior/index.html) is triggered.

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="to-prop"></span><span class="name">to</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

This property holds the color value at which the animation should end.

If the [ColorAnimation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.5/QtQuick.animation/#coloranimation) is defined within a [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition) or [Behavior](../QtQuick.Behavior/index.html), this value defaults to the value defined in the end state of the [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition), or the value of the property change that triggered the [Behavior](../QtQuick.Behavior/index.html).

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
