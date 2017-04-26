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

-   Rectangle

Rectangle
=========

<span class="subtitle"></span>
Paints a filled rectangle with an optional border More...

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
<td>Inherits:</td>
<td><p><a href="../QtQuick.Item/index.html">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[antialiasing](index.html#antialiasing-prop)**** : bool
-   ****[border](index.html#border-prop)****
    -   ****[border.width](index.html#border.width-prop)**** : int
    -   ****[border.color](index.html#border.color-prop)**** : color
-   ****[color](index.html#color-prop)**** : color
-   ****[gradient](index.html#gradient-prop)**** : Gradient
-   ****[radius](index.html#radius-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

Rectangle items are used to fill areas with solid color or gradients, and/or to provide a rectangular border.

<span id="appearance"></span>
Appearance
----------

Each Rectangle item is painted using either a solid fill color, specified using the [color](index.html#color-prop) property, or a gradient, defined using a Gradient type and set using the [gradient](index.html#gradient-prop) property. If both a color and a gradient are specified, the gradient is used.

You can add an optional border to a rectangle with its own color and thickness by setting the [border.color](index.html#border.color-prop) and [border.width](index.html#border.width-prop) properties. Set the color to "transparent" to paint a border without a fill color.

You can also create rounded rectangles using the [radius](index.html#radius-prop) property. Since this introduces curved edges to the corners of a rectangle, it may be appropriate to set the [Item::antialiasing](../QtQuick.Item/index.html#antialiasing-prop) property to improve its appearance.

<span id="example-usage"></span>
Example Usage
-------------

![](https://developer.ubuntu.com/static/devportal_uploaded/572d5efb-1f6e-4189-ad8d-bb3c0cf75f08-api/apps/qml/sdk-14.10/QtQuick.Rectangle/images/declarative-rect.png)

The following example shows the effects of some of the common properties on a Rectangle item, which in this case is used to create a square:

``` qml
import QtQuick 2.0
Rectangle {
    width: 100
    height: 100
    color: "red"
    border.color: "black"
    border.width: 5
    radius: 10
}
```

<span id="performance"></span>
Performance
-----------

Using the [Item::antialiasing](../QtQuick.Item/index.html#antialiasing-prop) property improves the appearance of a rounded rectangle at the cost of rendering performance. You should consider unsetting this property for rectangles in motion, and only set it when they are stationary.

**See also** [Image](../QtQuick.Image/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="antialiasing-prop"></span><span class="name">antialiasing</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Used to decide if the Rectangle should use antialiasing or not. [Antialiasing](../QtQuick.qtquick-visualcanvas-scenegraph-renderer/index.html#antialiasing) provides information on the performance implications of this property.

The default is true for Rectangles with a radius, and false otherwise.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="border-prop"></span><strong>border group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="border.width-prop"></span><span class="name">border.width</span> : <span class="type">int</span></p></td>
</tr>
<tr class="even">
<td><p><span id="border.color-prop"></span><span class="name">border.color</span> : <span class="type"><a href="index.html#color-prop">color</a></span></p></td>
</tr>
</tbody>
</table>

The width and color used to draw the border of the rectangle.

A width of 1 creates a thin line. For no line, use a width of 0 or a transparent color.

**Note:** The width of the rectangle's border does not affect the geometry of the rectangle itself or its position relative to other items if anchors are used.

The border is rendered within the rectangle's boundaries.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="color-prop"></span><span class="name">color</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

This property holds the color used to fill the rectangle.

The default color is white.

![](https://developer.ubuntu.com/static/devportal_uploaded/bfafaa22-4776-4269-a4a7-47152316d8b8-api/apps/qml/sdk-14.10/QtQuick.Rectangle/images/rect-color.png)

The following example shows rectangles with colors specified using hexadecimal and named color notation:

``` qml
Rectangle {
    color: "#00B000"
    width: 80; height: 80
}
Rectangle {
    color: "steelblue"
    y: 100; width: 80; height: 80
}
```

If both a gradient and a color are specified, the gradient will be used.

**See also** [gradient](index.html#gradient-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="gradient-prop"></span><span class="name">gradient</span> : <span class="type"><a href="../QtQuick.Gradient/index.html">Gradient</a></span></p></td>
</tr>
</tbody>
</table>

The gradient to use to fill the rectangle.

This property allows for the construction of simple vertical gradients. Other gradients may by formed by adding rotation to the rectangle.

![](https://developer.ubuntu.com/static/devportal_uploaded/c5e9d0d9-2da1-4090-8a2c-eff9aec0b362-api/apps/qml/sdk-14.10/QtQuick.Rectangle/images/declarative-rect_gradient.png)

``` qml
Rectangle {
    y: 0; width: 80; height: 80
    color: "lightsteelblue"
}
Rectangle {
    y: 100; width: 80; height: 80
    gradient: Gradient {
        GradientStop { position: 0.0; color: "lightsteelblue" }
        GradientStop { position: 1.0; color: "blue" }
    }
}
Rectangle {
    y: 200; width: 80; height: 80
    rotation: 90
    gradient: Gradient {
        GradientStop { position: 0.0; color: "lightsteelblue" }
        GradientStop { position: 1.0; color: "blue" }
    }
}
```

If both a gradient and a color are specified, the gradient will be used.

**See also** [Gradient](../QtQuick.Gradient/index.html) and [color](index.html#color-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="radius-prop"></span><span class="name">radius</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the corner radius used to draw a rounded rectangle.

If radius is non-zero, the rectangle will be painted as a rounded rectangle, otherwise it will be painted as a normal rectangle. The same radius is used by all 4 corners; there is currently no way to specify different radii for different corners.

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
