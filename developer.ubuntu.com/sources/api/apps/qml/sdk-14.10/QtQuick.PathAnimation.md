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
-   [SDK 14.10](../index.html) ›
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   PathAnimation

PathAnimation
=============

<span class="subtitle"></span>
Animates an item along a path More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td><code>import QtQuick 2.2</code></td>
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

-   ****[anchorPoint](index.html#anchorPoint-prop)**** : point
-   ****[duration](index.html#duration-prop)**** : int
-   ****[easing](index.html#easing-prop)****
    -   ****[easing.type](index.html#easing.type-prop)**** : enumeration
    -   ****[easing.amplitude](index.html#easing.amplitude-prop)**** : real
    -   ****[easing.bezierCurve](index.html#easing.bezierCurve-prop)**** : list&lt;real&gt;
    -   ****[easing.overshoot](index.html#easing.overshoot-prop)**** : real
    -   ****[easing.period](index.html#easing.period-prop)**** : real
-   ****[endRotation](index.html#endRotation-prop)**** : real
-   ****[orientation](index.html#orientation-prop)**** : enumeration
-   ****[orientationEntryDuration](index.html#orientationEntryDuration-prop)**** : real
-   ****[orientationExitDuration](index.html#orientationExitDuration-prop)**** : real
-   ****[path](index.html#path-prop)**** : Path
-   ****[target](index.html#target-prop)**** : Item

<span id="details"></span>
Detailed Description
--------------------

When used in a transition, the path can be specified without start or end points, for example:

``` qml
PathAnimation {
    path: Path {
        //no startX, startY
        PathCurve { x: 100; y: 100}
        PathCurve {}    //last element is empty with no end point specified
    }
}
```

In the above case, the path start will be the item's current position, and the path end will be the item's target position in the target state.

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations/index.html) and [PathInterpolator](../QtQuick.PathInterpolator/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="anchorPoint-prop"></span><span class="name">anchorPoint</span> : <span class="type">point</span></p></td>
</tr>
</tbody>
</table>

This property holds the anchor point for the item being animated.

By default, the upper-left corner of the target (its 0,0 point) will be anchored to (or follow) the path. The anchorPoint property can be used to specify a different point for anchoring. For example, specifying an anchorPoint of 5,5 for a 10x10 item means the center of the item will follow the path.

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

This property holds the duration of the animation, in milliseconds.

The default value is 250.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="easing-prop"></span><strong>easing group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="easing.type-prop"></span><span class="name">easing.type</span> : <span class="type">enumeration</span></p></td>
</tr>
<tr class="even">
<td><p><span id="easing.amplitude-prop"></span><span class="name">easing.amplitude</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="easing.bezierCurve-prop"></span><span class="name">easing.bezierCurve</span> : <span class="type">list</span>&lt;<span class="type">real</span>&gt;</p></td>
</tr>
<tr class="even">
<td><p><span id="easing.overshoot-prop"></span><span class="name">easing.overshoot</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="easing.period-prop"></span><span class="name">easing.period</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

the easing curve used for the animation.

To specify an easing curve you need to specify at least the type. For some curves you can also specify amplitude, period, overshoot or custom bezierCurve data. The default easing curve is `Easing.Linear`.

See the [PropertyAnimation::easing.type](../QtQuick.PropertyAnimation/index.html#easing.type-prop) documentation for information about the different types of easing curves.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="endRotation-prop"></span><span class="name">endRotation</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the ending rotation for the target.

If an orientation has been specified for the [PathAnimation](index.html), and the path doesn't end with the item at the desired rotation, the endRotation property can be used to manually specify an end rotation.

This property is typically used with [orientationExitDuration](index.html#orientationExitDuration-prop), as specifying an endRotation without an [orientationExitDuration](index.html#orientationExitDuration-prop) may cause a jump to the final rotation, rather than a smooth transition.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="orientation-prop"></span><span class="name">orientation</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property controls the rotation of the item as it animates along the path.

If a value other than `Fixed` is specified, the [PathAnimation](index.html) will rotate the item to achieve the specified orientation as it travels along the path.

-   [PathAnimation](index.html).Fixed (default) - the [PathAnimation](index.html) will not control the rotation of the item.
-   [PathAnimation](index.html).RightFirst - The right side of the item will lead along the path.
-   [PathAnimation](index.html).LeftFirst - The left side of the item will lead along the path.
-   [PathAnimation](index.html).BottomFirst - The bottom of the item will lead along the path.
-   [PathAnimation](index.html).TopFirst - The top of the item will lead along the path.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="orientationEntryDuration-prop"></span><span class="name">orientationEntryDuration</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the duration (in milliseconds) of the transition in to the orientation.

If an orientation has been specified for the [PathAnimation](index.html), and the starting rotation of the item does not match that given by the orientation, orientationEntryDuration can be used to smoothly transition from the item's starting rotation to the rotation given by the path orientation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="orientationExitDuration-prop"></span><span class="name">orientationExitDuration</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the duration (in milliseconds) of the transition out of the orientation.

If an orientation and [endRotation](index.html#endRotation-prop) have been specified for the [PathAnimation](index.html), orientationExitDuration can be used to smoothly transition from the rotation given by the path orientation to the specified [endRotation](index.html#endRotation-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="path-prop"></span><span class="name">path</span> : <span class="type"><a href="../QtQuick.Path/index.html">Path</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the path to animate along.

For more information on defining a path see the [Path](../QtQuick.Path/index.html) documentation.

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

This property holds the item to animate.

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
