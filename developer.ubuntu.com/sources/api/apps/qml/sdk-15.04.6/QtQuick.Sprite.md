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

-   Sprite

Sprite
======

<span class="subtitle"></span>
Specifies sprite animations More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[duration](index.html#duration-prop)**** : int
-   ****[durationVariation](index.html#durationVariation-prop)**** : int
-   ****[frameCount](index.html#frameCount-prop)**** : int
-   ****[frameDuration](index.html#frameDuration-prop)**** : int
-   ****[frameDurationVariation](index.html#frameDurationVariation-prop)**** : int
-   ****[frameHeight](index.html#frameHeight-prop)**** : int
-   ****[frameRate](index.html#frameRate-prop)**** : qreal
-   ****[frameRateVariation](index.html#frameRateVariation-prop)**** : qreal
-   ****[frameSync](index.html#frameSync-prop)**** : bool
-   ****[frameWidth](index.html#frameWidth-prop)**** : int
-   ****[frameX](index.html#frameX-prop)**** : int
-   ****[frameY](index.html#frameY-prop)**** : int
-   ****[name](index.html#name-prop)**** : string
-   ****[randomStart](index.html#randomStart-prop)**** : bool
-   ****[reverse](index.html#reverse-prop)**** : bool
-   ****[source](index.html#source-prop)**** : url
-   ****[to](index.html#to-prop)**** : QVariantMap

<span id="details"></span>
Detailed Description
--------------------

QQuickSprite renders sprites of one or more frames and animates them. The sprites can be in the middle of an image file, or split along multiple rows, as long as they form a contiguous line wrapping to the next row of the file from the left edge of the file.

For full details, see the [Sprite Animations](../QtQuick.qtquick-effects-sprites/index.html) overview.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="duration-prop"></span><span class="name">duration</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Duration of the animation. Values below 0 are invalid.

If [frameRate](index.html#frameRate-prop) is valid then it will be used to calculate the duration of the frames. If not, and [frameDuration](index.html#frameDuration-prop) is valid, then [frameDuration](index.html#frameDuration-prop) will be used. Otherwise duration is used.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="durationVariation-prop"></span><span class="name">durationVariation</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The duration of the animation can vary by up to this amount. Variation will never decrease the length of the animation to less than 0.

durationVariation will only take effect if duration is used to calculate the duration of frames.

Default is 0.

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

Number of frames in this sprite.

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

Duration of each frame of the animation. Values below 0 are invalid.

If [frameRate](index.html#frameRate-prop) is valid then it will be used to calculate the duration of the frames. If not, and frameDuration is valid, then frameDuration will be used. Otherwise duration is used.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="frameDurationVariation-prop"></span><span class="name">frameDurationVariation</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The duration of a frame in the animation can vary by up to this amount. Variation will never decrease the length of the animation to less than 0.

frameDurationVariation will only take effect if [frameDuration](index.html#frameDuration-prop) is used to calculate the duration of frames.

Default is 0.

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

Height of a single frame in this sprite.

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

Frames per second to show in the animation. Values below 0 are invalid.

If frameRate is valid then it will be used to calculate the duration of the frames. If not, and [frameDuration](index.html#frameDuration-prop) is valid , then [frameDuration](index.html#frameDuration-prop) will be used. Otherwise duration is used.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="frameRateVariation-prop"></span><span class="name">frameRateVariation</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

The frame rate between animations can vary by up to this amount. Variation will never decrease the length of the animation to less than 0.

frameRateVariation will only take effect if [frameRate](index.html#frameRate-prop) is used to calculate the duration of frames.

Default is 0.

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

If frameSync is set to true, it overrides all of duration, [frameRate](index.html#frameRate-prop) and [frameDuration](index.html#frameDuration-prop).

Default is false.

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

Width of a single frame in this sprite.

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

The X coordinate in the image file of the first frame of the sprite.

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

The Y coordinate in the image file of the first frame of the sprite.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The name of this sprite, for use in the to property of other sprites.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="randomStart-prop"></span><span class="name">randomStart</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If true, then the animation will start its first animation with a random amount of its duration skipped. This allows them to not look like they all just started when the animation begins.

This only affects the very first animation played. Transitioning to another animation, or the same animation again, will not trigger this.

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
<td><p><span id="source-prop"></span><span class="name">source</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

The image source for the animation.

If [frameHeight](index.html#frameHeight-prop) and [frameWidth](index.html#frameWidth-prop) are not specified, it is assumed to be a single long row of square frames. Otherwise, it can be multiple contiguous rows or rectangluar frames, when one row runs out the next will be used.

If [frameX](index.html#frameX-prop) and [frameY](index.html#frameY-prop) are specified, the row of frames will be taken with that x/y coordinate as the upper left corner.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="to-prop"></span><span class="name">to</span> : <span class="type">QVariantMap</span></p></td>
</tr>
</tbody>
</table>

A list of other sprites and weighted transitions to them, for example {"a":1, "b":2, "c":0} would specify that one-third should transition to sprite "a" when this sprite is done, and two-thirds should transition to sprite "b" when this sprite is done. As the transitions are chosen randomly, these proportions will not be exact. With "c":0 in the list, no sprites will randomly transition to "c", but it wll be a valid path if a sprite goal is set.

If no list is specified, or the sum of weights in the list is zero, then the sprite will repeat itself after completing.

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
