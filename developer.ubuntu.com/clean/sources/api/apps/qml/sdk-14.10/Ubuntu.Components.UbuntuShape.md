---
Title: Ubuntu.Components.UbuntuShape
---
        
UbuntuShape
===========

<span class="subtitle"></span>
The UbuntuShape item provides a standard Ubuntu shaped rounded rectangle. More...

|                   |                                |
|-------------------|--------------------------------|
| Import Statement: | `import Ubuntu.Components 1.1` |

<span id="properties"></span>
Properties
----------

-   ****[color](#color-prop)**** : color
-   ****[gradientColor](#gradientColor-prop)**** : color
-   ****[image](#image-prop)**** : Image
-   ****[radius](#radius-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

The UbuntuShape is used where a rounded rectangle is needed either filled with a color or an image that it crops.

When given with a [color](#color-prop) it is applied with an overlay blending as a vertical gradient going from [color](#color-prop) to [gradientColor](#gradientColor-prop). Two corner [radius](#radius-prop) are available, "small" (default) and "medium", that determine the size of the corners. Optionally, an Image can be passed that will be displayed inside the UbuntuShape and cropped to fit it.

Examples:

``` qml
import Ubuntu.Components 1.1
UbuntuShape {
    color: "lightblue"
    radius: "medium"
}
```

``` qml
import Ubuntu.Components 1.1
UbuntuShape {
    image: Image {
        source: "icon.png"
    }
}
```

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="color-prop"></span><span class="name">color</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-color.html">color</a></span></p></td>
</tr>
</tbody>
</table>

The top color of the gradient used to fill the shape. Setting only this one is enough to set the overall color the shape.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="gradientColor-prop"></span><span class="name">gradientColor</span> : <span class="type"><a href="#color-prop">color</a></span></p></td>
</tr>
</tbody>
</table>

The bottom color of the gradient used for the overlay blending of the color that fills the shape. It is optional to set this one as setting [color](#color-prop) is enough to set the overall color of the shape.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="image-prop"></span><span class="name">image</span> : <span class="type"><a href="QtQuick.Image.md">Image</a></span></p></td>
</tr>
</tbody>
</table>

The image used to fill the shape.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="radius-prop"></span><span class="name">radius</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td>
</tr>
</tbody>
</table>

The size of the corners among: "small" (default) and "medium".

