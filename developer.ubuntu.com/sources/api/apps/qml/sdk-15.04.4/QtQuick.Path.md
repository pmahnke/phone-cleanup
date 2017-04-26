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
-   [SDK 15.04.4](../index.html) ›
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   Path

Path
====

<span class="subtitle"></span>
Defines a path for use by PathView More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[closed](index.html#closed-prop)**** : bool
-   ****[pathElements](index.html#pathElements-prop)**** : list&lt;PathElement&gt;
-   ****[startX](index.html#startX-prop)**** : real
-   ****[startY](index.html#startY-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

A Path is composed of one or more path segments - [PathLine](../QtQuick.PathLine/index.html), [PathQuad](../QtQuick.PathQuad/index.html), [PathCubic](../QtQuick.PathCubic/index.html), [PathArc](../QtQuick.PathArc/index.html), [PathCurve](../QtQuick.PathCurve/index.html), [PathSvg](../QtQuick.PathSvg/index.html).

The spacing of the items along the Path can be adjusted via a [PathPercent](../QtQuick.PathPercent/index.html) object.

[PathAttribute](../QtQuick.PathAttribute/index.html) allows named attributes with values to be defined along the path.

**See also** [PathView](../QtQuick.PathView/index.html), [PathAttribute](../QtQuick.PathAttribute/index.html), [PathPercent](../QtQuick.PathPercent/index.html), [PathLine](../QtQuick.PathLine/index.html), [PathQuad](../QtQuick.PathQuad/index.html), [PathCubic](../QtQuick.PathCubic/index.html), [PathArc](../QtQuick.PathArc/index.html), [PathCurve](../QtQuick.PathCurve/index.html), and [PathSvg](../QtQuick.PathSvg/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="closed-prop"></span><span class="name">closed</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the start and end of the path are identical.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pathElements-prop"></span><span class="qmldefault">default</span><span class="name">pathElements</span> : <span class="type">list</span>&lt;<span class="type"><a href="../QtQuick.PathElement/index.html">PathElement</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the objects composing the path.

A path can contain the following path objects:

-   [PathLine](../QtQuick.PathLine/index.html) - a straight line to a given position.
-   [PathQuad](../QtQuick.PathQuad/index.html) - a quadratic Bezier curve to a given position with a control point.
-   [PathCubic](../QtQuick.PathCubic/index.html) - a cubic Bezier curve to a given position with two control points.
-   [PathArc](../QtQuick.PathArc/index.html) - an arc to a given position with a radius.
-   [PathSvg](../QtQuick.PathSvg/index.html) - a path specified as an SVG path data string.
-   [PathCurve](../QtQuick.PathCurve/index.html) - a point on a Catmull-Rom curve.
-   [PathAttribute](../QtQuick.PathAttribute/index.html) - an attribute at a given position in the path.
-   [PathPercent](../QtQuick.PathPercent/index.html) - a way to spread out items along various segments of the path.

``` qml
    PathView {
        anchors.fill: parent
        model: ContactModel {}
        delegate: delegate
        path: Path {
            startX: 120; startY: 100
            PathAttribute { name: "iconScale"; value: 1.0 }
            PathAttribute { name: "iconOpacity"; value: 1.0 }
            PathQuad { x: 120; y: 25; controlX: 260; controlY: 75 }
            PathAttribute { name: "iconScale"; value: 0.3 }
            PathAttribute { name: "iconOpacity"; value: 0.5 }
            PathQuad { x: 120; y: 100; controlX: -20; controlY: 75 }
        }
    }
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="startX-prop"></span><span class="name">startX</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the starting position of the path.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="startY-prop"></span><span class="name">startY</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the starting position of the path.

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
