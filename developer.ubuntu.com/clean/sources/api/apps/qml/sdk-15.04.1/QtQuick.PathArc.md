---
Title: QtQuick.PathArc
---
        
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

-   ****[direction](#direction-prop)**** : enumeration
-   ****[radiusX](#radiusX-prop)**** : real
-   ****[radiusY](#radiusY-prop)**** : real
-   ****[relativeX](#relativeX-prop)**** : real
-   ****[relativeY](#relativeY-prop)**** : real
-   ****[useLargeArc](#useLargeArc-prop)**** : bool
-   ****[x](#x-prop)**** : real
-   ****[y](#y-prop)**** : real

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
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/8dfacaab-3e0d-41c8-90c8-59515c4692fe-api/apps/qml/sdk-15.04.1/QtQuick.PathArc/images/declarative-patharc.png" /></p></td>
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

**See also** [Path](../QtQuick.Path.md), [PathLine](../QtQuick.PathLine.md), [PathQuad](../QtQuick.PathQuad.md), [PathCubic](../QtQuick.PathCubic.md), [PathCurve](../QtQuick.PathCurve.md), and [PathSvg](../QtQuick.PathSvg.md).

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
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/3e8e59b5-ed3c-43c2-8d16-f7de94e45b33-api/apps/qml/sdk-15.04.1/QtQuick.PathArc/images/declarative-arcdirection.png" /></p></td>
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

**See also** [useLargeArc](#useLargeArc-prop).

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
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/1d68b85e-c73f-4c96-a8bf-787657f21ed7-api/apps/qml/sdk-15.04.1/QtQuick.PathArc/images/declarative-arcradius.png" /></p></td>
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
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/a3d21628-4b24-466b-9df3-765b343f2cc8-api/apps/qml/sdk-15.04.1/QtQuick.PathArc/images/declarative-arcradius.png" /></p></td>
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

**See also** [x](#x-prop) and [y](#y-prop).

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

**See also** [x](#x-prop) and [y](#y-prop).

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
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/17af1d10-e380-463c-85a0-0f5b83163cec-api/apps/qml/sdk-15.04.1/QtQuick.PathArc/images/declarative-largearc.png" /></p></td>
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

**See also** [relativeX](#relativeX-prop) and [relativeY](#relativeY-prop).

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

**See also** [relativeX](#relativeX-prop) and [relativeY](#relativeY-prop).

