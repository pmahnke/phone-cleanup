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
-   [SDK 15.04.5](../index.html) ›
-   [QtQml](../QtQml/index.html) ›

<!-- -->

-   Number

Number
======

<span class="subtitle"></span>
The Number object provides represents a number value More...

|                   |                  |
|-------------------|------------------|
| Import Statement: | import QtQml 2.2 |

<span id="methods"></span>
Methods
-------

-   string ****[fromLocaleString](index.html#fromLocaleString-method)****(locale, number)
-   string ****[toLocaleCurrencyString](index.html#toLocaleCurrencyString-method)****(locale, symbol)
-   string ****[toLocaleString](index.html#toLocaleString-method)****(locale, format, precision)

<span id="details"></span>
Detailed Description
--------------------

The QML Number object extends the JS Number object with locale aware functions.

**See also** [Locale](../QtQml.Locale/index.html).

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fromLocaleString-method"></span><span class="type">string</span> <span class="name">fromLocaleString</span>(<span class="type">locale</span>, <span class="type">number</span>)</p></td>
</tr>
</tbody>
</table>

Returns a Number by parsing *number* using the conventions of the supplied *locale*.

If *locale* is not supplied the default locale will be used.

For example, using the German locale:

``` cpp
var german = Qt.locale("de_DE");
var d;
d = Number.fromLocaleString(german, "1234,56)   // d == 1234.56
d = Number.fromLocaleString(german, "1.234,56") // d == 1234.56
d = Number.fromLocaleString(german, "1234.56")  // throws exception
d = Number.fromLocaleString(german, "1.234")    // d == 1234.0
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="toLocaleCurrencyString-method"></span><span class="type">string</span> <span class="name">toLocaleCurrencyString</span>(<span class="type">locale</span>, <span class="type">symbol</span>)</p></td>
</tr>
</tbody>
</table>

Converts the Number to a currency using the currency and conventions of the specified *locale*. If *symbol* is specified it will be used as the currency symbol.

**See also** [Locale::currencySymbol()](../QtQml.Locale/index.html#currencySymbol-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="toLocaleString-method"></span><span class="type">string</span> <span class="name">toLocaleString</span>(<span class="type">locale</span>, <span class="type">format</span>, <span class="type">precision</span>)</p></td>
</tr>
</tbody>
</table>

Converts the Number to a string suitable for the specified *locale* in the specified *format*, with the specified *precision*.

Valid formats are:

-   'f' Decimal floating point, e.g. 248.65
-   'e' Scientific notation using e character, e.g. 2.4865e+2
-   'E' Scientific notation using E character, e.g. 2.4865E+2
-   'g' Use the shorter of e or f
-   'G' Use the shorter of E or f

If precision is not specified, the precision will be 2.

If the format is not specified 'f' will be used.

If *locale* is not specified, the default locale will be used.

The following example shows a number formatted for the German locale:

``` cpp
import QtQuick 2.0
Text {
    text: "The value is: " +  Number(4742378.423).toLocaleString(Qt.locale("de_DE"))
}
```

You can apply toLocaleString() directly to constants, provided the decimal is included in the constant, e.g.

``` cpp
123.0.toLocaleString(Qt.locale("de_DE")) // OK
123..toLocaleString(Qt.locale("de_DE"))  // OK
123.toLocaleString(Qt.locale("de_DE"))   // fails
```

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
