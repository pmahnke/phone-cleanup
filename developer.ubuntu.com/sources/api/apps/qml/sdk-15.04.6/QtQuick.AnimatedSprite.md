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

-   AnimatedSprite

AnimatedSprite
==============

<span class="subtitle"></span>
Draws a sprite animation More...

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

-   ****[currentFrame](index.html#currentFrame-prop)**** : int
-   ****[frameCount](index.html#frameCount-prop)**** : int
-   ****[frameDuration](index.html#frameDuration-prop)**** : int
-   ****[frameHeight](index.html#frameHeight-prop)**** : int
-   ****[frameRate](index.html#frameRate-prop)**** : qreal
-   ****[frameSync](index.html#frameSync-prop)**** : bool
-   ****[frameWidth](index.html#frameWidth-prop)**** : int
-   ****[frameX](index.html#frameX-prop)**** : int
-   ****[frameY](index.html#frameY-prop)**** : int
-   ****[interpolate](index.html#interpolate-prop)**** : bool
-   ****[loops](index.html#loops-prop)**** : int
-   ****[paused](index.html#paused-prop)**** : bool
-   ****[reverse](index.html#reverse-prop)**** : bool
-   ****[running](index.html#running-prop)**** : bool
-   ****[source](index.html#source-prop)**** : url

<span id="methods"></span>
Methods
-------

-   int ****[advance](index.html#advance-method)****()
-   int ****[pause](index.html#pause-method)****()
-   int ****[restart](index.html#restart-method)****()
-   int ****[resume](index.html#resume-method)****()

<span id="details"></span>
Detailed Description
--------------------

[AnimatedSprite](../QtQuick.qtquick-effects-sprites/index.html#animatedsprite) provides rendering and control over animations which are provided as multiple frames in the same image file. You can play it at a fixed speed, at the frame rate of your display, or manually advance and control the progress.

For details of how a sprite animation is defined see the [Sprite Animations](../QtQuick.qtquick-effects-sprites/index.html) overview. Note that the [AnimatedSprite](../QtQuick.qtquick-effects-sprites/index.html#animatedsprite) type does not use Sprite types to define multiple animations, but instead encapsulates a single animation itself.

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

When paused, the current frame can be advanced manually by setting this property or calling [advance()](index.html#advance-method).

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

Number of frames in this [AnimatedSprite](../QtQuick.qtquick-effects-sprites/index.html#animatedsprite).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="frameDuration-prop"></span><span class="name">frameDuration</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Duration of each frame of the animation. Values equal to or below 0 are invalid.

If [frameRate](index.html#frameRate-prop) is valid then it will be used to calculate the duration of the frames. If not, and frameDuration is valid, then frameDuration will be used.

Changing this parameter will restart the animation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="frameHeight-prop"></span><span class="name">frameHeight</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Height of a single frame in this [AnimatedSprite](../QtQuick.qtquick-effects-sprites/index.html#animatedsprite).

May be omitted if it is the only sprite in the file.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="frameRate-prop"></span><span class="name">frameRate</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

Frames per second to show in the animation. Values equal to or below 0 are invalid.

If frameRate is valid then it will be used to calculate the duration of the frames. If not, and [frameDuration](index.html#frameDuration-prop) is valid , then [frameDuration](index.html#frameDuration-prop) will be used.

Changing this parameter will restart the animation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="frameSync-prop"></span><span class="name">frameSync</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If true, then the animation will have no duration. Instead, the animation will advance one frame each time a frame is rendered to the screen. This synchronizes it with the painting rate as opposed to elapsed time.

If frameSync is set to true, it overrides both [frameRate](index.html#frameRate-prop) and [frameDuration](index.html#frameDuration-prop).

Default is false.

Changing this parameter will restart the animation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="frameWidth-prop"></span><span class="name">frameWidth</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Width of a single frame in this [AnimatedSprite](../QtQuick.qtquick-effects-sprites/index.html#animatedsprite).

May be omitted if it is the only sprite in the file.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="frameX-prop"></span><span class="name">frameX</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The X coordinate in the image file of the first frame of the [AnimatedSprite](../QtQuick.qtquick-effects-sprites/index.html#animatedsprite).

May be omitted if the first frame starts in the upper left corner of the file.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="frameY-prop"></span><span class="name">frameY</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The Y coordinate in the image file of the first frame of the [AnimatedSprite](../QtQuick.qtquick-effects-sprites/index.html#animatedsprite).

May be omitted if the first frame starts in the upper left corner of the file.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="interpolate-prop"></span><span class="name">interpolate</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If true, interpolation will occur between sprite frames to make the animation appear smoother.

Default is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="loops-prop"></span><span class="name">loops</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

After playing the animation this many times, the animation will automatically stop. Negative values are invalid.

If this is set to [AnimatedSprite](../QtQuick.qtquick-effects-sprites/index.html#animatedsprite).Infinite the animation will not stop playing on its own.

Default is [AnimatedSprite](../QtQuick.qtquick-effects-sprites/index.html#animatedsprite).Infinite

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

When paused, the current frame can be advanced manually.

Default is false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="reverse-prop"></span><span class="name">reverse</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If true, then the animation will be played in reverse.

Default is false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="running-prop"></span><span class="name">running</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the sprite is animating or not.

Default is true

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

The image source for the animation.

If [frameHeight](index.html#frameHeight-prop) and [frameWidth](index.html#frameWidth-prop) are not specified, it is assumed to be a single long row of square frames. Otherwise, it can be multiple contiguous rows or rectangluar frames, when one row runs out the next will be used.

If [frameX](index.html#frameX-prop) and [frameY](index.html#frameY-prop) are specified, the row of frames will be taken with that x/y coordinate as the upper left corner.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="advance-method"></span><span class="type">int</span> <span class="name">advance</span>()</p></td>
</tr>
</tbody>
</table>

Advances the sprite animation by one frame.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pause-method"></span><span class="type">int</span> <span class="name">pause</span>()</p></td>
</tr>
</tbody>
</table>

Pauses the sprite animation. This does nothing if [paused](index.html#paused-prop) is true.

**See also** [resume()](index.html#resume-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="restart-method"></span><span class="type">int</span> <span class="name">restart</span>()</p></td>
</tr>
</tbody>
</table>

Stops, then starts the sprite animation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="resume-method"></span><span class="type">int</span> <span class="name">resume</span>()</p></td>
</tr>
</tbody>
</table>

Resumes the sprite animation if [paused](index.html#paused-prop) is true; otherwise, this does nothing.

**See also** [pause()](index.html#pause-method).

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
