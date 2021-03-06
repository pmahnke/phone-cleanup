---
Title: QtQuick.PathSvg
---
        
PathSvg
=======

<span class="subtitle"></span>
Defines a path using an SVG path data string More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[path](#path-prop)**** : string

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
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/1f9cc795-dd0f-4f89-abd0-2265a33782db-api/apps/qml/sdk-15.04.4/QtQuick.PathSvg/images/declarative-pathsvg.png" /></p></td>
<td><pre class="qml"><code>Path {
    startX: 50; startY: 50
    PathSvg { path: &quot;L 150 50 L 100 150 z&quot; }
}</code></pre></td>
</tr>
</tbody>
</table>

**See also** [Path](../QtQuick.Path.md), [PathLine](../QtQuick.PathLine.md), [PathQuad](../QtQuick.PathQuad.md), [PathCubic](../QtQuick.PathCubic.md), [PathArc](../QtQuick.PathArc.md), and [PathCurve](../QtQuick.PathCurve.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="path-prop"></span><span class="name">path</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The SVG path data string specifying the path.

See [W3C SVG Path Data](http://www.w3.org/TR/SVG/paths.html#PathData) for more details on this format.

