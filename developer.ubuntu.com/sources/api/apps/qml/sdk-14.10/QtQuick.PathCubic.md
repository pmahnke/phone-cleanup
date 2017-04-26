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

-   PathCubic

PathCubic
=========

<span class="subtitle"></span>
Defines a cubic Bezier curve with two control points More...

|                   |                      |
|-------------------|----------------------|
| Import Statement: | `import QtQuick 2.2` |

<span id="properties"></span>
Properties
----------

-   ****[control1X](index.html#control1X-prop)**** : real
-   ****[control1Y](index.html#control1Y-prop)**** : real
-   ****[control2X](index.html#control2X-prop)**** : real
-   ****[control2Y](index.html#control2Y-prop)**** : real
-   ****[relativeControl1X](index.html#relativeControl1X-prop)**** : real
-   ****[relativeControl1Y](index.html#relativeControl1Y-prop)**** : real
-   ****[relativeControl2X](index.html#relativeControl2X-prop)**** : real
-   ****[relativeControl2Y](index.html#relativeControl2Y-prop)**** : real
-   ****[relativeX](index.html#relativeX-prop)**** : real
-   ****[relativeY](index.html#relativeY-prop)**** : real
-   ****[x](index.html#x-prop)**** : real
-   ****[y](index.html#y-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

The following QML produces the path shown below:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/f567d87c-f3cc-4026-900e-47aa3a11164e-api/apps/qml/sdk-14.10/QtQuick.PathCubic/images/declarative-pathcubic.png" /></p></td>
<td><pre class="qml"><code>Path {
    startX: 20; startY: 0
    PathCubic {
        x: 180; y: 0
        control1X: -10; control1Y: 90
        control2X: 210; control2Y: 90
    }
}</code></pre></td>
</tr>
</tbody>
</table>

**See also** [Path](../QtQuick.Path/index.html), [PathQuad](../QtQuick.PathQuad/index.html), [PathLine](../QtQuick.PathLine/index.html), [PathArc](../QtQuick.PathArc/index.html), [PathCurve](../QtQuick.PathCurve/index.html), and [PathSvg](../QtQuick.PathSvg/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="control1X-prop"></span><span class="name">control1X</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the position of the first control point.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="control1Y-prop"></span><span class="name">control1Y</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the position of the first control point.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="control2X-prop"></span><span class="name">control2X</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the position of the second control point.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="control2Y-prop"></span><span class="name">control2Y</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the position of the second control point.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="relativeControl1X-prop"></span><span class="name">relativeControl1X</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the positions of the control points relative to the curve's start.

If both a relative and absolute control position are specified for a control point's axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to set a relative control1 x and an absolute control1 y.

**See also** [control1X](index.html#control1X-prop), [control1Y](index.html#control1Y-prop), [control2X](index.html#control2X-prop), and [control2Y](index.html#control2Y-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="relativeControl1Y-prop"></span><span class="name">relativeControl1Y</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the positions of the control points relative to the curve's start.

If both a relative and absolute control position are specified for a control point's axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to set a relative control1 x and an absolute control1 y.

**See also** [control1X](index.html#control1X-prop), [control1Y](index.html#control1Y-prop), [control2X](index.html#control2X-prop), and [control2Y](index.html#control2Y-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="relativeControl2X-prop"></span><span class="name">relativeControl2X</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the positions of the control points relative to the curve's start.

If both a relative and absolute control position are specified for a control point's axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to set a relative control1 x and an absolute control1 y.

**See also** [control1X](index.html#control1X-prop), [control1Y](index.html#control1Y-prop), [control2X](index.html#control2X-prop), and [control2Y](index.html#control2Y-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="relativeControl2Y-prop"></span><span class="name">relativeControl2Y</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Defines the positions of the control points relative to the curve's start.

If both a relative and absolute control position are specified for a control point's axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to set a relative control1 x and an absolute control1 y.

**See also** [control1X](index.html#control1X-prop), [control1Y](index.html#control1Y-prop), [control2X](index.html#control2X-prop), and [control2Y](index.html#control2Y-prop).

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

Defines the end point of the curve relative to its start.

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

Defines the end point of the curve relative to its start.

If both a relative and absolute end position are specified for a single axis, the relative position will be used.

Relative and absolute positions can be mixed, for example it is valid to set a relative x and an absolute y.

**See also** [x](index.html#x-prop) and [y](index.html#y-prop).

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

Defines the end point of the curve.

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

Defines the end point of the curve.

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
