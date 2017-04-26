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

-   PathArc

PathArc
=======

<span class="subtitle"></span>
Defines an arc with the given radius More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[direction](index.html#direction-prop)**** : enumeration
-   ****[radiusX](index.html#radiusX-prop)**** : real
-   ****[radiusY](index.html#radiusY-prop)**** : real
-   ****[relativeX](index.html#relativeX-prop)**** : real
-   ****[relativeY](index.html#relativeY-prop)**** : real
-   ****[useLargeArc](index.html#useLargeArc-prop)**** : bool
-   ****[x](index.html#x-prop)**** : real
-   ****[y](index.html#y-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

[PathArc](index.html) provides a simple way of specifying an arc that ends at a given position and uses the specified radius. It is modeled after the SVG elliptical arc command.

The following QML produces the path shown below:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/357b1e11-01fb-4ecc-a979-faeadc469fba-api/apps/qml/sdk-15.04.5/QtQuick.PathArc/images/declarative-patharc.png" /></p></td>
<td><pre class="qml"><code>Path {
    startX: 100; startY: 0
    PathArc {
        x: 0; y: 100
        radiusX: 100; radiusY: 100
        useLargeArc: true
    }
}</code></pre></td>
</tr>
</tbody>
</table>

Note that a single [PathArc](index.html) cannot be used to specify a circle. Instead, you can use two [PathArc](index.html) elements, each specifying half of the circle.

**See also** [Path](../QtQuick.Path/index.html), [PathLine](../QtQuick.PathLine/index.html), [PathQuad](../QtQuick.PathQuad/index.html), [PathCubic](../QtQuick.PathCubic/index.html), [PathCurve](../QtQuick.PathCurve/index.html), and [PathSvg](../QtQuick.PathSvg/index.html).

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

Defines the direction of the arc. Possible values are [PathArc](index.html).Clockwise (default) and [PathArc](index.html).Counterclockwise.

The following QML can produce either of the two illustrated arcs below by changing the value of direction.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/6a525e6b-d3f1-4030-bac6-995c24fa8a7c-api/apps/qml/sdk-15.04.5/QtQuick.PathArc/images/declarative-arcdirection.png" /></p></td>
<td><pre class="qml"><code>Path {
    startX: 50; startY: 50
    PathArc {
        x: 150; y: 50
        radiusX: 75; radiusY: 50
    }
}</code></pre></td>
</tr>
</tbody>
</table>

**See also** [useLargeArc](index.html#useLargeArc-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="radiusX-prop"></span><span class="name">radiusX</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the radius of the arc.

The following QML demonstrates how different radius values can be used to change the shape of the arc:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/cfb4d3d4-88d2-4178-a053-8aa1af61af6a-api/apps/qml/sdk-15.04.5/QtQuick.PathArc/images/declarative-arcradius.png" /></p></td>
<td><pre class="qml"><code>Path {
    startX: 0; startY: 100
    PathArc {
        relativeX: 50; y: 100
        radiusX: 25; radiusY: 15
    }
    PathArc {
        relativeX: 50; y: 100
        radiusX: 25; radiusY: 25
    }
    PathArc {
        relativeX: 50; y: 100
        radiusX: 25; radiusY: 50
    }
    PathArc {
        relativeX: 50; y: 100
        radiusX: 50; radiusY: 100
    }
}</code></pre></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="radiusY-prop"></span><span class="name">radiusY</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the radius of the arc.

The following QML demonstrates how different radius values can be used to change the shape of the arc:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/419ab223-a5a5-4e03-98c1-ee6b770f74fd-api/apps/qml/sdk-15.04.5/QtQuick.PathArc/images/declarative-arcradius.png" /></p></td>
<td><pre class="qml"><code>Path {
    startX: 0; startY: 100
    PathArc {
        relativeX: 50; y: 100
        radiusX: 25; radiusY: 15
    }
    PathArc {
        relativeX: 50; y: 100
        radiusX: 25; radiusY: 25
    }
    PathArc {
        relativeX: 50; y: 100
        radiusX: 25; radiusY: 50
    }
    PathArc {
        relativeX: 50; y: 100
        radiusX: 50; radiusY: 100
    }
}</code></pre></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="relativeX-prop"></span><span class="name">relativeX</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the end point of the arc relative to its start.

If both a relative and absolute end position are specified for a single axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to set a relative x and an absolute y.

**See also** [x](index.html#x-prop) and [y](index.html#y-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="relativeY-prop"></span><span class="name">relativeY</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the end point of the arc relative to its start.

If both a relative and absolute end position are specified for a single axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to set a relative x and an absolute y.

**See also** [x](index.html#x-prop) and [y](index.html#y-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="useLargeArc-prop"></span><span class="name">useLargeArc</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether to use a large arc as defined by the arc points.

Given fixed start and end positions, radius, and direction, there are two possible arcs that can fit the data. useLargeArc is used to distinguish between these. For example, the following QML can produce either of the two illustrated arcs below by changing the value of useLargeArc.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/e46afb61-47fc-4f45-bde1-071b7c831c27-api/apps/qml/sdk-15.04.5/QtQuick.PathArc/images/declarative-largearc.png" /></p></td>
<td><pre class="qml"><code>Path {
    startX: 0; startY: 100
    PathArc {
        x: 100; y: 200
        radiusX: 100; radiusY: 100
        direction: PathArc.Clockwise
    }
}</code></pre></td>
</tr>
</tbody>
</table>

The default value is false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="x-prop"></span><span class="name">x</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the end point of the arc.

**See also** [relativeX](index.html#relativeX-prop) and [relativeY](index.html#relativeY-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="y-prop"></span><span class="name">y</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the end point of the arc.

**See also** [relativeX](index.html#relativeX-prop) and [relativeY](index.html#relativeY-prop).

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
