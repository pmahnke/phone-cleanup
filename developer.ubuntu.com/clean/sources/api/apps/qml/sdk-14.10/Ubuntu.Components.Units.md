---
Title: Ubuntu.Components.Units
---
        
Units
=====

<span class="subtitle"></span>
Units of measurement for sizes, spacing, margin, etc. More...

|                   |                                |
|-------------------|--------------------------------|
| Import Statement: | `import Ubuntu.Components 1.1` |

<span id="properties"></span>
Properties
----------

-   ****[gridUnit](#gridUnit-prop)**** : real

<span id="methods"></span>
Methods
-------

-   real ****[dp](#dp-method)****(real *value*)
-   real ****[gu](#gu-method)****(real *value*)

<span id="details"></span>
Detailed Description
--------------------

Units provides facilities for measuring UI elements in a variety of units other than just pixels.

A global instance of Units is exposed as the **units** context property. Example usage:

``` qml
import QtQuick 2.0
import Ubuntu.Components 1.1
Item {
    width: units.gu(2)
    height: units.gu(5)
}
```

**See also** [Resolution Independence](../UbuntuUserInterfaceToolkit.resolution-independence.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="gridUnit-prop"></span><span class="name">gridUnit</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span></p></td>
</tr>
</tbody>
</table>

The number of pixels 1 grid unit corresponds to.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dp-method"></span><span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span> <span class="name">dp</span>(<span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span> <em>value</em>)</p></td>
</tr>
</tbody>
</table>

Returns the number of pixels *value* density independent pixels correspond to.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="gu-method"></span><span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span> <span class="name">gu</span>(<span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span> <em>value</em>)</p></td>
</tr>
</tbody>
</table>

Returns the number of pixels *value* grid units correspond to.

