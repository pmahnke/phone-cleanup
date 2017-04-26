---
Title: Ubuntu.Components.FontUtils
---
        
FontUtils
=========

<span class="subtitle"></span>
FontUtils is a context property, which provides utility functions for font manipulations. More...

|                   |                                |
|-------------------|--------------------------------|
| Import Statement: | `import Ubuntu.Components 1.1` |

<span id="methods"></span>
Methods
-------

-   real ****[modularScale](#modularScale-method)****(string *size*)
-   real ****[sizeToPixels](#sizeToPixels-method)****(string *size*)

<span id="details"></span>
Detailed Description
--------------------

FontUtils cannot be instantiated and it is already available as a context property, i.e. 'FontUtils' is an instance that can be used from anywhere in the code.

Example of a Label implementation which uses the default base scale for the font size:

``` qml
import QtQuick 2.0
import Ubuntu.Components 1.1
Text {
    property string fontSize: "medium"
    font.pixelSize: FontUtils.sizeToPixels(fontSize)
}
```

Another example of a custom text input component exposing a fontSize property and a base font unit size to scale its font:

``` qml
import QtQuick 2.0
import Ubuntu.Components 1.1
TextInput {
    property string fontSize: "small"
    property int baseFontUnits: units.dp(20)
    font.pixelSize: FontUtils.modularScale(fontSize) * units.dp(baseFontUnits)
}
```

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="modularScale-method"></span><span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span> <span class="name">modularScale</span>(<span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span> <em>size</em>)</p></td>
</tr>
</tbody>
</table>

The function returns the number interpretation of a given font scale. The scale can have one of the following values:

-   **xx-small**
-   **x-small**
-   **small**
-   **medium**
-   **large**
-   **x-large**

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sizeToPixels-method"></span><span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span> <span class="name">sizeToPixels</span>(<span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span> <em>size</em>)</p></td>
</tr>
</tbody>
</table>

The function calculates the pixel size of a given scale. The size scale can be one of the strings specified at [modularScale](#modularScale-method) function. On failure returns 0.

