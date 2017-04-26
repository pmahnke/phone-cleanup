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
-   [SDK 15.04.4](../index.html) ›
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   FontMetrics

FontMetrics
===========

<span class="subtitle"></span>
Provides metrics for a given font More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |
| Since:            | Qt 5.4             |

<span id="properties"></span>
Properties
----------

-   ****[ascent](index.html#ascent-prop)**** : real
-   ****[averageCharacterWidth](index.html#averageCharacterWidth-prop)**** : real
-   ****[descent](index.html#descent-prop)**** : real
-   ****[font](index.html#font-prop)**** : font
-   ****[height](index.html#height-prop)**** : real
-   ****[leading](index.html#leading-prop)**** : real
-   ****[lineSpacing](index.html#lineSpacing-prop)**** : real
-   ****[lineWidth](index.html#lineWidth-prop)**** : real
-   ****[maximumCharacterWidth](index.html#maximumCharacterWidth-prop)**** : real
-   ****[minimumLeftBearing](index.html#minimumLeftBearing-prop)**** : real
-   ****[minimumRightBearing](index.html#minimumRightBearing-prop)**** : real
-   ****[overlinePosition](index.html#overlinePosition-prop)**** : real
-   ****[strikeOutPosition](index.html#strikeOutPosition-prop)**** : real
-   ****[underlinePosition](index.html#underlinePosition-prop)**** : real
-   ****[xHeight](index.html#xHeight-prop)**** : real

<span id="methods"></span>
Methods
-------

-   qreal ****[advanceWidth](index.html#advanceWidth-method)****(string *text*)
-   rect ****[boundingRect](index.html#boundingRect-method)****(string *text*)
-   string ****[elidedText](index.html#elidedText-method)****(string *text*)
-   rect ****[tightBoundingRect](index.html#tightBoundingRect-method)****(string *text*)

<span id="details"></span>
Detailed Description
--------------------

[FontMetrics](index.html) calculates the size of characters and strings for a given font.

It provides a subset of the C++ QFontMetricsF API, with the added ability to change the font that is used for calculations via the [font](index.html#font-prop) property.

``` cpp
FontMetrics {
    id: fontMetrics
    font.family: "Arial"
}
Rectangle {
    width: fontMetrics.height * 4
    height: fontMetrics.height * 2
}
```

**See also** QFontMetricsF and [TextMetrics](../QtQuick.TextMetrics/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="ascent-prop"></span><span class="name">ascent</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the ascent of the font.

**See also** QFontMetricsF::ascent(), [descent](index.html#descent-prop), and [height](index.html#height-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="averageCharacterWidth-prop"></span><span class="name">averageCharacterWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the average width of glyphs in the font.

**See also** QFontMetricsF::averageCharWidth().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="descent-prop"></span><span class="name">descent</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the descent of the font.

**See also** QFontMetricsF::descent(), [ascent](index.html#ascent-prop), and [height](index.html#height-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="font-prop"></span><span class="name">font</span> : <span class="type"><a href="index.html#font-prop">font</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the font used for the metrics calculations.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="height-prop"></span><span class="name">height</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the height of the font.

**See also** QFontMetricsF::height().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="leading-prop"></span><span class="name">leading</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the leading of the font.

**See also** QFontMetricsF::leading().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lineSpacing-prop"></span><span class="name">lineSpacing</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the distance from one base line to the next.

**See also** QFontMetricsF::lineSpacing().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lineWidth-prop"></span><span class="name">lineWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the width of the underline and strikeout lines, adjusted for the point size of the font.

**See also** QFontMetricsF::lineWidth().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumCharacterWidth-prop"></span><span class="name">maximumCharacterWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the width of the widest character in the font.

**See also** QFontMetricsF::maxWidth().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="minimumLeftBearing-prop"></span><span class="name">minimumLeftBearing</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the minimum left bearing of the font.

**See also** QFontMetricsF::minLeftBearing().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="minimumRightBearing-prop"></span><span class="name">minimumRightBearing</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the minimum right bearing of the font.

**See also** QFontMetricsF::minRightBearing().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="overlinePosition-prop"></span><span class="name">overlinePosition</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the distance from the base line to where an overline should be drawn.

**See also** QFontMetricsF::overlinePos(), [underlinePosition](index.html#underlinePosition-prop), and [strikeOutPosition](index.html#strikeOutPosition-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="strikeOutPosition-prop"></span><span class="name">strikeOutPosition</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the distance from the base line to where the strikeout line should be drawn.

**See also** QFontMetricsF::strikeOutPos(), [overlinePosition](index.html#overlinePosition-prop), and [underlinePosition](index.html#underlinePosition-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="underlinePosition-prop"></span><span class="name">underlinePosition</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the distance from the base line to where an underscore should be drawn.

**See also** QFontMetricsF::underlinePos(), [overlinePosition](index.html#overlinePosition-prop), and [strikeOutPosition](index.html#strikeOutPosition-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="xHeight-prop"></span><span class="name">xHeight</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the 'x' height of the font.

**See also** QFontMetricsF::xHeight().

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="advanceWidth-method"></span><span class="type">qreal</span> <span class="name">advanceWidth</span>(<span class="type">string</span> <em>text</em>)</p></td>
</tr>
</tbody>
</table>

This method returns the advance in pixels of the characters in *text*. This is the distance from the position of the string to where the next string should be drawn.

This method is offered as an imperative alternative to the advanceWidth property of TextMetrics.

**See also** QFontMetricsF::width() and height().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="boundingRect-method"></span><span class="type">rect</span> <span class="name">boundingRect</span>(<span class="type">string</span> <em>text</em>)</p></td>
</tr>
</tbody>
</table>

This method returns the bounding rectangle of the characters in the string specified by *text*.

This method is offered as an imperative alternative to the boundingRect property of TextMetrics.

**See also** QFontMetricsF::boundingRect() and [tightBoundingRect()](index.html#tightBoundingRect-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="elidedText-method"></span><span class="type">string</span> <span class="name">elidedText</span>(<span class="type">string</span> <em>text</em>)</p></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="tightBoundingRect-method"></span><span class="type">rect</span> <span class="name">tightBoundingRect</span>(<span class="type">string</span> <em>text</em>)</p></td>
</tr>
</tbody>
</table>

This method returns a tight bounding rectangle around the characters in the string specified by *text*.

This method is offered as an imperative alternative to the tightBoundingRect property of TextMetrics.

**See also** QFontMetricsF::tightBoundingRect() and [boundingRect()](index.html#boundingRect-method).

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
