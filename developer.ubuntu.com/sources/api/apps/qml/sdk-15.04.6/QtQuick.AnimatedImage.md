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

-   AnimatedImage

AnimatedImage
=============

<span class="subtitle"></span>
Plays animations stored as a series of images More...

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
<td><p><a href="../QtQuick.Image/index.html">Image</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[currentFrame](index.html#currentFrame-prop)**** : int
-   ****[frameCount](index.html#frameCount-prop)**** : int
-   ****[paused](index.html#paused-prop)**** : bool
-   ****[playing](index.html#playing-prop)**** : bool
-   ****[source](index.html#source-prop)**** : url

<span id="details"></span>
Detailed Description
--------------------

The [AnimatedImage](index.html) type extends the features of the [Image](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.6/QtQuick.imageelements/#image) type, providing a way to play animations stored as images containing a series of frames, such as those stored in GIF files.

Information about the current frame and total length of the animation can be obtained using the [currentFrame](index.html#currentFrame-prop) and [frameCount](index.html#frameCount-prop) properties. You can start, pause and stop the animation by changing the values of the [playing](index.html#playing-prop) and [paused](index.html#paused-prop) properties.

The full list of supported formats can be determined with QMovie::supportedFormats().

<span id="example-usage"></span>
Example Usage
-------------

![](https://developer.ubuntu.com/static/devportal_uploaded/ac4e5417-3c23-4932-bcc0-6002d5f65351-api/apps/qml/sdk-15.04.6/QtQuick.AnimatedImage/images/animatedimageitem.gif)

The following QML shows how to display an animated image and obtain information about its state, such as the current frame and total number of frames. The result is an animated image with a simple progress indicator underneath it.

**Note**: Unlike images, animated images are not cached or shared internally.

``` qml
import QtQuick 2.0
Rectangle {
    width: animation.width; height: animation.height + 8
    AnimatedImage { id: animation; source: "animation.gif" }
    Rectangle {
        property int frames: animation.frameCount
        width: 4; height: 8
        x: (animation.width - width) * animation.currentFrame / frames
        y: animation.height
        color: "red"
    }
}
```

**See also** [BorderImage](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.6/QtQuick.imageelements/#borderimage) and [Image](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.6/QtQuick.imageelements/#image).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="currentFrame-prop"></span><span class="name">currentFrame</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

currentFrame is the frame that is currently visible. By monitoring this property for changes, you can animate other items at the same time as the image.

[frameCount](index.html#frameCount-prop) is the number of frames in the animation. For some animation formats, [frameCount](index.html#frameCount-prop) is unknown and has a value of zero.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="frameCount-prop"></span><span class="name">frameCount</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

[currentFrame](index.html#currentFrame-prop) is the frame that is currently visible. By monitoring this property for changes, you can animate other items at the same time as the image.

frameCount is the number of frames in the animation. For some animation formats, frameCount is unknown and has a value of zero.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="paused-prop"></span><span class="name">paused</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the animated image is paused.

By default, this property is false. Set it to true when you want to pause the animation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="playing-prop"></span><span class="name">playing</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the animated image is playing.

By default, this property is true, meaning that the animation will start playing immediately.

**Note**: this property is affected by changes to the actual playing state of [AnimatedImage](index.html). If non-animated images are used, *playing* will need to be manually set to *true* in order to animate following images.

``` qml
AnimatedImage {
    onStatusChanged: playing = (status == AnimatedImage.Ready)
}
```

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

[AnimatedImage](index.html) can handle any image format supported by Qt, loaded from any URL scheme supported by Qt.

**See also** QQuickImageProvider.

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
