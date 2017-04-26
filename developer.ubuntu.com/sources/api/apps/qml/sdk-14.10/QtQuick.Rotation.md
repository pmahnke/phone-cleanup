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

-   Rotation

Rotation
========

<span class="subtitle"></span>
Provides a way to rotate an Item More...

|                   |                      |
|-------------------|----------------------|
| Import Statement: | `import QtQuick 2.2` |

<span id="properties"></span>
Properties
----------

-   ****[angle](index.html#angle-prop)**** : real
-   ****[axis](index.html#axis-prop)****
    -   ****[axis.x](index.html#axis.x-prop)**** : real
    -   ****[axis.y](index.html#axis.y-prop)**** : real
    -   ****[axis.z](index.html#axis.z-prop)**** : real
-   ****[origin](index.html#origin-prop)****
    -   ****[origin.x](index.html#origin.x-prop)**** : real
    -   ****[origin.y](index.html#origin.y-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

The Rotation type provides a way to rotate an [Item](../QtQuick.Item/index.html) through a rotation-type transform.

It allows (z axis) rotation to be relative to an arbitrary point, and also provides a way to specify 3D-like rotations for Items. This gives more control over item rotation than the [rotation](../QtQuick.Item/index.html#rotation-prop) property.

The following example rotates a Rectangle around its interior point (25, 25):

``` qml
Rectangle {
    width: 100; height: 100
    color: "blue"
    transform: Rotation { origin.x: 25; origin.y: 25; angle: 45}
}
```

For 3D-like item rotations, you must specify the axis of rotation in addition to the origin point. The following example shows various 3D-like rotations applied to an [Image](../QtQuick.Image/index.html).

``` qml
import QtQuick 2.0
Row {
    x: 10; y: 10
    spacing: 10
    Image { source: "pics/qt.png" }
    Image {
        source: "pics/qt.png"
        transform: Rotation { origin.x: 30; origin.y: 30; axis { x: 0; y: 1; z: 0 } angle: 18 }
    }
    Image {
        source: "pics/qt.png"
        transform: Rotation { origin.x: 30; origin.y: 30; axis { x: 0; y: 1; z: 0 } angle: 36 }
    }
    Image {
        source: "pics/qt.png"
        transform: Rotation { origin.x: 30; origin.y: 30; axis { x: 0; y: 1; z: 0 } angle: 54 }
    }
    Image {
        source: "pics/qt.png"
        transform: Rotation { origin.x: 30; origin.y: 30; axis { x: 0; y: 1; z: 0 } angle: 72 }
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/05e3beab-d109-4846-ba35-3616873d194e-api/apps/qml/sdk-14.10/QtQuick.Rotation/images/axisrotation.png)

**See also** Dial Control example and [Qt Quick Demo - Clocks](https://developer.ubuntu.com/api/apps/qml/sdk-14.10/QtQuick.demos-clocks/).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="angle-prop"></span><span class="name">angle</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The angle to rotate, in degrees clockwise.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="axis-prop"></span><strong>axis group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="axis.x-prop"></span><span class="name">axis.x</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="axis.y-prop"></span><span class="name">axis.y</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="axis.z-prop"></span><span class="name">axis.z</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The axis to rotate around. For simple (2D) rotation around a point, you do not need to specify an axis, as the default axis is the z axis (`axis { x: 0; y: 0; z: 1 }`).

For a typical 3D-like rotation you will usually specify both the origin and the axis.

![](https://developer.ubuntu.com/static/devportal_uploaded/995a951f-9547-4f89-bdb6-d7b0ed5bee67-api/apps/qml/sdk-14.10/QtQuick.Rotation/images/3d-rotation-axis.png)

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="origin-prop"></span><strong>origin group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="origin.x-prop"></span><span class="name">origin.x</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="origin.y-prop"></span><span class="name">origin.y</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The origin point of the rotation (i.e., the point that stays fixed relative to the parent as the rest of the item rotates). By default the origin is (0, 0).

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
