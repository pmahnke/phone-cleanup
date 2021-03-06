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
-   [SDK 15.04.6](../index.html) ›
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   Image

Image
=====

<span class="subtitle"></span>
Displays an image More...

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
<tr class="odd">
<td>Inherited By:</td>
<td><p><a href="../QtQuick.AnimatedImage/index.html">AnimatedImage</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[asynchronous](index.html#asynchronous-prop)**** : bool
-   ****[cache](index.html#cache-prop)**** : bool
-   ****[fillMode](index.html#fillMode-prop)**** : enumeration
-   ****[horizontalAlignment](index.html#horizontalAlignment-prop)**** : enumeration
-   ****[mipmap](index.html#mipmap-prop)**** : bool
-   ****[mirror](index.html#mirror-prop)**** : bool
-   ****[paintedHeight](index.html#paintedHeight-prop)**** : real
-   ****[paintedWidth](index.html#paintedWidth-prop)**** : real
-   ****[progress](index.html#progress-prop)**** : real
-   ****[smooth](index.html#smooth-prop)**** : bool
-   ****[source](index.html#source-prop)**** : url
-   ****[sourceSize](index.html#sourceSize-prop)**** : QSize
-   ****[status](index.html#status-prop)**** : enumeration
-   ****[verticalAlignment](index.html#verticalAlignment-prop)**** : enumeration

<span id="details"></span>
Detailed Description
--------------------

The Image type displays an image.

The source of the image is specified as a URL using the [source](index.html#source-prop) property. Images can be supplied in any of the standard image formats supported by Qt, including bitmap formats such as PNG and JPEG, and vector graphics formats such as SVG. If you need to display animated images, use [AnimatedSprite](../QtQuick.qtquick-effects-sprites/index.html#animatedsprite) or [AnimatedImage](../QtQuick.AnimatedImage/index.html).

If the [width](../QtQuick.Item/index.html#width-prop) and [height](../QtQuick.Item/index.html#height-prop) properties are not specified, the Image automatically uses the size of the loaded image. By default, specifying the width and height of the item causes the image to be scaled to that size. This behavior can be changed by setting the [fillMode](index.html#fillMode-prop) property, allowing the image to be stretched and tiled instead.

<span id="example-usage"></span>
Example Usage
-------------

The following example shows the simplest usage of the Image type.

``` qml
import QtQuick 2.0
Image {
    source: "pics/qtlogo.png"
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/ddc37ee6-42ba-4223-9527-01efb0b445f8-api/apps/qml/sdk-15.04.6/QtQuick.Image/images/declarative-qtlogo.png)

<span id="performance"></span>
Performance
-----------

By default, locally available images are loaded immediately, and the user interface is blocked until loading is complete. If a large image is to be loaded, it may be preferable to load the image in a low priority thread, by enabling the [asynchronous](index.html#asynchronous-prop) property.

If the image is obtained from a network rather than a local resource, it is automatically loaded asynchronously, and the [progress](index.html#progress-prop) and [status](index.html#status-prop) properties are updated as appropriate.

Images are cached and shared internally, so if several Image items have the same [source](index.html#source-prop), only one copy of the image will be loaded.

**Note**: Images are often the greatest user of memory in QML user interfaces. It is recommended that images which do not form part of the user interface have their size bounded via the [sourceSize](index.html#sourceSize-prop) property. This is especially important for content that is loaded from external sources or provided by the user.

**See also** Qt Quick Examples - Image Elements and QQuickImageProvider.

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
<td><p><span id="fillMode-prop"></span><span class="name">fillMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Set this property to define what happens when the source image has a different size than the item.

-   Image.Stretch - the image is scaled to fit
-   Image.PreserveAspectFit - the image is scaled uniformly to fit without cropping
-   Image.PreserveAspectCrop - the image is scaled uniformly to fill, cropping if necessary
-   Image.Tile - the image is duplicated horizontally and vertically
-   Image.TileVertically - the image is stretched horizontally and tiled vertically
-   Image.TileHorizontally - the image is stretched vertically and tiled horizontally
-   Image.Pad - the image is not transformed

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/9d2e085d-c78c-46bb-bac2-e8f809664730-api/apps/qml/sdk-15.04.6/QtQuick.Image/images/declarative-qtlogo-stretch.png" /></p></td>
<td>Stretch (default)
<pre class="qml"><code>Image {
    width: 130; height: 100
    source: &quot;qtlogo.png&quot;
}</code></pre></td>
</tr>
<tr class="even">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/d4f940aa-74c6-4c81-80b3-cfbc3f224233-api/apps/qml/sdk-15.04.6/QtQuick.Image/images/declarative-qtlogo-preserveaspectfit.png" /></p></td>
<td>PreserveAspectFit
<pre class="qml"><code>Image {
    width: 130; height: 100
    fillMode: Image.PreserveAspectFit
    source: &quot;qtlogo.png&quot;
}</code></pre></td>
</tr>
<tr class="odd">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/bb4f65f9-ba2b-41e3-970b-e428ebdc3a6c-api/apps/qml/sdk-15.04.6/QtQuick.Image/images/declarative-qtlogo-preserveaspectcrop.png" /></p></td>
<td>PreserveAspectCrop
<pre class="qml"><code>Image {
    width: 130; height: 100
    fillMode: Image.PreserveAspectCrop
    source: &quot;qtlogo.png&quot;
    clip: true
}</code></pre></td>
</tr>
<tr class="even">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/ff77fdee-e8ec-42f9-b44f-11c341713acc-api/apps/qml/sdk-15.04.6/QtQuick.Image/images/declarative-qtlogo-tile.png" /></p></td>
<td>Tile
<pre class="qml"><code>Image {
    width: 120; height: 120
    fillMode: Image.Tile
    horizontalAlignment: Image.AlignLeft
    verticalAlignment: Image.AlignTop
    source: &quot;qtlogo.png&quot;
}</code></pre></td>
</tr>
<tr class="odd">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/f461f5b5-e73c-4583-83dd-480c9b7a9d0b-api/apps/qml/sdk-15.04.6/QtQuick.Image/images/declarative-qtlogo-tilevertically.png" /></p></td>
<td>TileVertically
<pre class="qml"><code>Image {
    width: 120; height: 120
    fillMode: Image.TileVertically
    verticalAlignment: Image.AlignTop
    source: &quot;qtlogo.png&quot;
}</code></pre></td>
</tr>
<tr class="even">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/20e56eb3-3431-4455-8e13-e567a9c0618c-api/apps/qml/sdk-15.04.6/QtQuick.Image/images/declarative-qtlogo-tilehorizontally.png" /></p></td>
<td>TileHorizontally
<pre class="qml"><code>Image {
    width: 120; height: 120
    fillMode: Image.TileHorizontally
    verticalAlignment: Image.AlignLeft
    source: &quot;qtlogo.png&quot;
}</code></pre></td>
</tr>
</tbody>
</table>

Note that `clip` is `false` by default which means that the item might paint outside its bounding rectangle even if the fillMode is set to `PreserveAspectCrop`.

**See also** [Qt Quick Examples - Image Elements](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.6/QtQuick.imageelements/).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="horizontalAlignment-prop"></span><span class="name">horizontalAlignment</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Sets the horizontal and vertical alignment of the image. By default, the image is center aligned.

The valid values for `horizontalAlignment` are `Image.AlignLeft`, `Image.AlignRight` and `Image.AlignHCenter`. The valid values for `verticalAlignment` are `Image.AlignTop`, `Image.AlignBottom` and `Image.AlignVCenter`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mipmap-prop"></span><span class="name">mipmap</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the image uses mipmap filtering when scaled or transformed.

Mipmap filtering gives better visual quality when scaling down compared to smooth, but it may come at a performance cost (both when initializing the image and during rendering).

By default, this property is set to false.

This QML property was introduced in Qt 5.3.

**See also** [smooth](index.html#smooth-prop).

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
<td><p><span id="paintedHeight-prop"></span><span class="name">paintedHeight</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the size of the image that is actually painted. In most cases it is the same as `width` and `height`, but when using a `fillMode` `PreserveAspectFit` or `fillMode` `PreserveAspectCrop` `paintedWidth` or `paintedHeight` can be smaller or larger than `width` and `height` of the Image item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="paintedWidth-prop"></span><span class="name">paintedWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties hold the size of the image that is actually painted. In most cases it is the same as `width` and `height`, but when using a `fillMode` `PreserveAspectFit` or `fillMode` `PreserveAspectCrop` `paintedWidth` or `paintedHeight` can be smaller or larger than `width` and `height` of the Image item.

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

**See also** [mipmap](index.html#mipmap-prop).

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

Image can handle any image format supported by Qt, loaded from any URL scheme supported by Qt.

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

Unlike the [width](../QtQuick.Item/index.html#width-prop) and [height](../QtQuick.Item/index.html#height-prop) properties, which scale the painting of the image, this property sets the actual number of pixels stored for the loaded image so that large images do not use more memory than necessary. For example, this ensures the image in memory is no larger than 1024x1024 pixels, regardless of the Image's [width](../QtQuick.Item/index.html#width-prop) and [height](../QtQuick.Item/index.html#height-prop) values:

``` cpp
Rectangle {
    width: ...
    height: ...
    Image {
       anchors.fill: parent
       source: "reallyBigImage.jpg"
       sourceSize.width: 1024
       sourceSize.height: 1024
    }
}
```

If the image's actual size is larger than the sourceSize, the image is scaled down. If only one dimension of the size is set to greater than 0, the other dimension is set in proportion to preserve the source image's aspect ratio. (The [fillMode](index.html#fillMode-prop) is independent of this.)

If both the sourceSize.width and sourceSize.height are set the image will be scaled down to fit within the specified size, maintaining the image's aspect ratio. The actual size of the image after scaling is available via [Item::implicitWidth](../QtQuick.Item/index.html#implicitWidth-prop) and [Item::implicitHeight](../QtQuick.Item/index.html#implicitHeight-prop).

If the source is an intrinsically scalable image (eg. SVG), this property determines the size of the loaded image regardless of intrinsic size. Avoid changing this property dynamically; rendering an SVG is *slow* compared to an image.

If the source is a non-scalable image (eg. JPEG), the loaded image will be no greater than this property specifies. For some formats (currently only JPEG), the whole image will never actually be loaded into memory.

sourceSize can be cleared to the natural size of the image by setting sourceSize to `undefined`.

**Note:** *Changing this property dynamically causes the image source to be reloaded, potentially even from the network, if it is not in the disk cache.*

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

This property holds the status of image loading. It can be one of:

-   Image.Null - no image has been set
-   Image.Ready - the image has been loaded
-   Image.Loading - the image is currently being loaded
-   Image.Error - an error occurred while loading the image

Use this status to provide an update or respond to the status change in some way. For example, you could:

-   Trigger a state change:

    ``` qml
    State { name: 'loaded'; when: image.status == Image.Ready }
    ```

-   Implement an `onStatusChanged` signal handler:

    ``` qml
    Image {
        id: image
        onStatusChanged: if (image.status == Image.Ready) console.log('Loaded')
    }
    ```

-   Bind to the status value:

    ``` qml
    Text { text: image.status == Image.Ready ? 'Loaded' : 'Not loaded' }
    ```

**See also** [progress](index.html#progress-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="verticalAlignment-prop"></span><span class="name">verticalAlignment</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Sets the horizontal and vertical alignment of the image. By default, the image is center aligned.

The valid values for `horizontalAlignment` are `Image.AlignLeft`, `Image.AlignRight` and `Image.AlignHCenter`. The valid values for `verticalAlignment` are `Image.AlignTop`, `Image.AlignBottom` and `Image.AlignVCenter`.

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
