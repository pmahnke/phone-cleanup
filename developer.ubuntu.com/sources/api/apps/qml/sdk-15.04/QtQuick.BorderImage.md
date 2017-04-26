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
-   [SDK 15.04](../index.html) ›
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   BorderImage

BorderImage
===========

<span class="subtitle"></span>
Paints a border based on an image More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import QtQuick 2.4</td>
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

-   ****[asynchronous](index.html#asynchronous-prop)**** : bool
-   ****[border](index.html#border-prop)****
    -   ****[border.left](index.html#border.left-prop)**** : int
    -   ****[border.right](index.html#border.right-prop)**** : int
    -   ****[border.top](index.html#border.top-prop)**** : int
    -   ****[border.bottom](index.html#border.bottom-prop)**** : int
-   ****[cache](index.html#cache-prop)**** : bool
-   ****[horizontalTileMode](index.html#horizontalTileMode-prop)**** : enumeration
-   ****[mirror](index.html#mirror-prop)**** : bool
-   ****[progress](index.html#progress-prop)**** : real
-   ****[smooth](index.html#smooth-prop)**** : bool
-   ****[source](index.html#source-prop)**** : url
-   ****[sourceSize](index.html#sourceSize-prop)**** : QSize
-   ****[status](index.html#status-prop)**** : enumeration
-   ****[verticalTileMode](index.html#verticalTileMode-prop)**** : enumeration

<span id="details"></span>
Detailed Description
--------------------

The [BorderImage](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.imageelements/#borderimage) type is used to create borders out of images by scaling or tiling parts of each image.

A [BorderImage](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.imageelements/#borderimage) breaks a source image, specified using the [source](index.html#source-prop) property, into 9 regions, as shown below:

![](https://developer.ubuntu.com/static/devportal_uploaded/82814e2e-9894-48a4-95e9-7e39eb60ec16-api/apps/qml/sdk-15.04/QtQuick.BorderImage/images/declarative-scalegrid.png)

When the image is scaled, regions of the source image are scaled or tiled to create the displayed border image in the following way:

-   The corners (regions 1, 3, 7, and 9) are not scaled at all.
-   Regions 2 and 8 are scaled according to [horizontalTileMode](index.html#horizontalTileMode-prop).
-   Regions 4 and 6 are scaled according to [verticalTileMode](index.html#verticalTileMode-prop).
-   The middle (region 5) is scaled according to both [horizontalTileMode](index.html#horizontalTileMode-prop) and [verticalTileMode](index.html#verticalTileMode-prop).

The regions of the image are defined using the [border](index.html#border-prop) property group, which describes the distance from each edge of the source image to use as a border.

<span id="example-usage"></span>
Example Usage
-------------

The following examples show the effects of the different modes on an image. Guide lines are overlaid onto the image to show the different regions of the image as described above.

![](https://developer.ubuntu.com/static/devportal_uploaded/e9cbc934-91d8-4dd9-be8b-d828c5d2fc88-api/apps/qml/sdk-15.04/QtQuick.BorderImage/images/qml-borderimage-normal-image.png)

An unscaled image is displayed using an Image. The [border](index.html#border-prop) property is used to determine the parts of the image that will lie inside the unscaled corner areas and the parts that will be stretched horizontally and vertically.

``` qml
Image {
    source: "pics/borderframe.png"
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/706d0fd7-8c18-4c05-93d5-0a57da9b7d16-api/apps/qml/sdk-15.04/QtQuick.BorderImage/images/qml-borderimage-scaled.png)

A [BorderImage](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.imageelements/#borderimage) is used to display the image, and it is given a size that is larger than the original image. Since the [horizontalTileMode](index.html#horizontalTileMode-prop) property is set to [BorderImage.Stretch](index.html#horizontalTileMode-prop), the parts of image in regions 2 and 8 are stretched horizontally. Since the [verticalTileMode](index.html#verticalTileMode-prop) property is set to [BorderImage.Stretch](index.html#verticalTileMode-prop), the parts of image in regions 4 and 6 are stretched vertically.

``` qml
BorderImage {
    width: 180; height: 180
    border { left: 30; top: 30; right: 30; bottom: 30 }
    horizontalTileMode: BorderImage.Stretch
    verticalTileMode: BorderImage.Stretch
    source: "pics/borderframe.png"
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/e16a070d-f0c8-4796-a30b-b4bdd0d044ac-api/apps/qml/sdk-15.04/QtQuick.BorderImage/images/qml-borderimage-tiled.png)

Again, a large [BorderImage](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.imageelements/#borderimage) is used to display the image. With the [horizontalTileMode](index.html#horizontalTileMode-prop) property set to [BorderImage.Repeat](index.html#horizontalTileMode-prop), the parts of image in regions 2 and 8 are tiled so that they fill the space at the top and bottom of the item. Similarly, the [verticalTileMode](index.html#verticalTileMode-prop) property is set to [BorderImage.Repeat](index.html#verticalTileMode-prop), the parts of image in regions 4 and 6 are tiled so that they fill the space at the left and right of the item.

``` qml
BorderImage {
    width: 180; height: 180
    border { left: 30; top: 30; right: 30; bottom: 30 }
    horizontalTileMode: BorderImage.Repeat
    verticalTileMode: BorderImage.Repeat
    source: "pics/borderframe.png"
}
```

In some situations, the width of regions 2 and 8 may not be an exact multiple of the width of the corresponding regions in the source image. Similarly, the height of regions 4 and 6 may not be an exact multiple of the height of the corresponding regions. It can be useful to use [BorderImage.Round](index.html#horizontalTileMode-prop) instead of [BorderImage.Repeat](index.html#horizontalTileMode-prop) in cases like these.

The Border Image example in [Qt Quick Examples - Image Elements](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.imageelements/) shows how a [BorderImage](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.imageelements/#borderimage) can be used to simulate a shadow effect on a rectangular item.

<span id="image-loading"></span>
Image Loading
-------------

The source image may not be loaded instantaneously, depending on its original location. Loading progress can be monitored with the [progress](index.html#progress-prop) property.

**See also** [Image](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.imageelements/#image) and [AnimatedImage](../QtQuick.AnimatedImage/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="asynchronous-prop"></span><span class="name">asynchronous</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Specifies that images on the local filesystem should be loaded asynchronously in a separate thread. The default value is false, causing the user interface thread to block while the image is loaded. Setting *asynchronous* to true is useful where maintaining a responsive user interface is more desirable than having images immediately visible.

Note that this property is only valid for images read from the local filesystem. Images loaded via a network resource (e.g. HTTP) are always loaded asynchronously.

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
<td><p><span id="border.left-prop"></span><span class="name">border.left</span> : <span class="type">int</span></p></td>
</tr>
<tr class="even">
<td><p><span id="border.right-prop"></span><span class="name">border.right</span> : <span class="type">int</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="border.top-prop"></span><span class="name">border.top</span> : <span class="type">int</span></p></td>
</tr>
<tr class="even">
<td><p><span id="border.bottom-prop"></span><span class="name">border.bottom</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The 4 border lines (2 horizontal and 2 vertical) break the image into 9 sections, as shown below:

![](https://developer.ubuntu.com/static/devportal_uploaded/27fd0778-966b-4782-ba26-d744f1210490-api/apps/qml/sdk-15.04/QtQuick.BorderImage/images/declarative-scalegrid.png)

Each border line (left, right, top, and bottom) specifies an offset in pixels from the respective edge of the source image. By default, each border line has a value of 0.

For example, the following definition sets the bottom line 10 pixels up from the bottom of the image:

``` qml
BorderImage {
    border.bottom: 10
    // ...
}
```

The border lines can also be specified using a [.sci file](index.html#source-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cache-prop"></span><span class="name">cache</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Specifies whether the image should be cached. The default value is true. Setting *cache* to false is useful when dealing with large images, to make sure that they aren't cached at the expense of small 'ui element' images.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="horizontalTileMode-prop"></span><span class="name">horizontalTileMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property describes how to repeat or stretch the middle parts of the border image.

-   [BorderImage](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.imageelements/#borderimage).Stretch - Scales the image to fit to the available area.
-   [BorderImage](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.imageelements/#borderimage).Repeat - Tile the image until there is no more space. May crop the last image.
-   [BorderImage](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.imageelements/#borderimage).Round - Like Repeat, but scales the images down to ensure that the last image is not cropped.

The default tile mode for each property is [BorderImage](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.imageelements/#borderimage).Stretch.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mirror-prop"></span><span class="name">mirror</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the image should be horizontally inverted (effectively displaying a mirrored image).

The default value is false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="progress-prop"></span><span class="name">progress</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the progress of image loading, from 0.0 (nothing loaded) to 1.0 (finished).

**See also** [status](index.html#status-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="smooth-prop"></span><span class="name">smooth</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the image is smoothly filtered when scaled or transformed. Smooth filtering gives better visual quality, but it may be slower on some hardware. If the image is displayed at its natural size, this property has no visual or performance effect.

By default, this property is set to true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="source-prop"></span><span class="name">source</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

This property holds the URL that refers to the source image.

[BorderImage](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.imageelements/#borderimage) can handle any image format supported by Qt, loaded from any URL scheme supported by Qt.

This property can also be used to refer to .sci files, which are written in a QML-specific, text-based format that specifies the borders, the image file and the tile rules for a given border image.

The following .sci file sets the borders to 10 on each side for the image `picture.png`:

``` cpp
border.left: 10
border.top: 10
border.bottom: 10
border.right: 10
source: "picture.png"
```

The URL may be absolute, or relative to the URL of the component.

**See also** QQuickImageProvider.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sourceSize-prop"></span><span class="name">sourceSize</span> : <span class="type">QSize</span></p></td>
</tr>
</tbody>
</table>

This property holds the actual width and height of the loaded image.

In [BorderImage](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.imageelements/#borderimage), this property is read-only.

**See also** [Image::sourceSize](../QtQuick.Image/index.html#sourceSize-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="status-prop"></span><span class="name">status</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property describes the status of image loading. It can be one of:

-   [BorderImage](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.imageelements/#borderimage).Null - no image has been set
-   [BorderImage](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.imageelements/#borderimage).Ready - the image has been loaded
-   [BorderImage](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.imageelements/#borderimage).Loading - the image is currently being loaded
-   [BorderImage](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.imageelements/#borderimage).Error - an error occurred while loading the image

**See also** [progress](index.html#progress-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="verticalTileMode-prop"></span><span class="name">verticalTileMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property describes how to repeat or stretch the middle parts of the border image.

-   [BorderImage](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.imageelements/#borderimage).Stretch - Scales the image to fit to the available area.
-   [BorderImage](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.imageelements/#borderimage).Repeat - Tile the image until there is no more space. May crop the last image.
-   [BorderImage](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.imageelements/#borderimage).Round - Like Repeat, but scales the images down to ensure that the last image is not cropped.

The default tile mode for each property is [BorderImage](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.imageelements/#borderimage).Stretch.

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
