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

-   TextMetrics

TextMetrics
===========

<span class="subtitle"></span>
Provides metrics for a given font and text More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |
| Since:            | Qt 5.4             |

<span id="properties"></span>
Properties
----------

-   ****[advanceWidth](index.html#advanceWidth-prop)**** : real
-   ****[boundingRect](index.html#boundingRect-prop)**** : rect
-   ****[elide](index.html#elide-prop)**** : enumeration
-   ****[elideWidth](index.html#elideWidth-prop)**** : real
-   ****[font](index.html#font-prop)**** : font
-   ****[height](index.html#height-prop)**** : real
-   ****[text](index.html#text-prop)**** : string
-   ****[tightBoundingRect](index.html#tightBoundingRect-prop)**** : rect
-   ****[width](index.html#width-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

[TextMetrics](index.html) calculates various properties of a given string of text for a particular font.

It provides a declarative API for the functions in QFontMetricsF which take arguments.

``` cpp
TextMetrics {
    id: textMetrics
    font.family: "Arial"
    elide: Text.ElideMiddle
    elideWidth: 100
    text: "Hello World"
}
MyItem {
    text: textMetrics.elidedText
}
```

**See also** QFontMetricsF and [FontMetrics](../QtQuick.FontMetrics/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="advanceWidth-prop"></span><span class="name">advanceWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the advance in pixels of the characters in [text](../QtQuick.qtquick-releasenotes/index.html#text). This is the distance from the position of the string to where the next string should be drawn.

**See also** QFontMetricsF::width().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="boundingRect-prop"></span><span class="name">boundingRect</span> : <span class="type">rect</span></p></td>
</tr>
</tbody>
</table>

This property holds the bounding rectangle of the characters in the string specified by [text](../QtQuick.qtquick-releasenotes/index.html#text).

**See also** QFontMetricsF::boundingRect() and [tightBoundingRect](index.html#tightBoundingRect-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="elide-prop"></span><span class="name">elide</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the elide mode of the text. This determines the position in which the string is elided. The possible values are:

-   `Qt::ElideNone` - No eliding; this is the default value.
-   `Qt::ElideLeft` - For example: "...World"
-   `Qt::ElideMiddle` - For example: "He...ld"
-   `Qt::ElideRight` - For example: "Hello..."

**See also** [elideWidth](index.html#elideWidth-prop) and elidedText.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="elideWidth-prop"></span><span class="name">elideWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the largest width the text can have (in pixels) before eliding will occur.

**See also** [elide](index.html#elide-prop) and elidedText.

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

This property holds the height of the bounding rectangle of the characters in the string specified by [text](../QtQuick.qtquick-releasenotes/index.html#text). It is equivalent to:

``` cpp
textMetrics.boundingRect.height
```

**See also** [boundingRect](index.html#boundingRect-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="text-prop"></span><span class="name">text</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the text used for the metrics calculations.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="tightBoundingRect-prop"></span><span class="name">tightBoundingRect</span> : <span class="type">rect</span></p></td>
</tr>
</tbody>
</table>

This property holds a tight bounding rectangle around the characters in the string specified by [text](../QtQuick.qtquick-releasenotes/index.html#text).

**See also** QFontMetricsF::tightBoundingRect() and [boundingRect](index.html#boundingRect-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="width-prop"></span><span class="name">width</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the width of the bounding rectangle of the characters in the string specified by [text](../QtQuick.qtquick-releasenotes/index.html#text). It is equivalent to:

``` cpp
textMetrics.boundingRect.width
```

**See also** [boundingRect](index.html#boundingRect-prop).

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
