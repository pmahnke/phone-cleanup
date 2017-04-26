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
-   [Ubuntu.Components](../Ubuntu.Components/index.html) ›

<!-- -->

-   i18n

i18n
====

<span class="subtitle"></span>
i18n is a context property that provides internationalization support. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

<span id="properties"></span>
Properties
----------

-   ****[domain](index.html#domain-prop)**** : string
-   ****[language](index.html#language-prop)**** : string

<span id="methods"></span>
Methods
-------

-   string ****[ctr](index.html#ctr-method)****(string *context*, string *text*)
-   string ****[dctr](index.html#dctr-method)****(string *domain*, string *context*, string *text*)
-   string ****[dtr](index.html#dtr-method-2)****(string *domain*, string *singular*, string *plural*, int *n*)
-   string ****[dtr](index.html#dtr-method)****(string *domain*, string *text*)
-   string ****[relativeDateTime](index.html#relativeDateTime-method)****(datetime *dateTime*)
-   string ****[tag](index.html#tag-method-2)****(string *context*, string *text*)
-   string ****[tag](index.html#tag-method)****(string *text*)
-   string ****[tr](index.html#tr-method-2)****(string *singular*, string *plural*, int *n*)
-   string ****[tr](index.html#tr-method)****(string *text*)

<span id="details"></span>
Detailed Description
--------------------

i18n cannot be instantiated, and is already available as a context property. It is based on [gettext](https://www.gnu.org/software/gettext/), and thus the standard gettext tools can be used for translating a project. Example:

``` qml
import QtQuick 2.4
import Ubuntu.Components 0.1
Item {
     width: units.gu(40)
     height: units.gu(50)
     Button {
         anchors.centerIn: parent
         text: i18n.tr("Press me")
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
<td><p><span id="domain-prop"></span><span class="name">domain</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The gettext domain to be used for the translation. The default domain is the applicationName specified in the application's [MainView](../Ubuntu.Components.MainView/index.html), or the empty string "" if no applicationName was given or no [MainView](../Ubuntu.Components.MainView/index.html) is used. Use [dtr()](index.html#dtr-method) functions instead of [tr()](index.html#tr-method) to use a different domain for a single translation that ignores i18n.domain.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="language-prop"></span><span class="name">language</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The language that is used for the translation. The default value is the user's locale dending on $LC\_ALL, $LC\_MESSAGES and $LANG at the time of running the application. See the gettext manual for details.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="ctr-method"></span><span class="type">string</span> <span class="name">ctr</span>(<span class="type">string</span> <em>context</em>, <span class="type">string</span> <em>text</em>)</p></td>
</tr>
</tbody>
</table>

Translate *text* using gettext and return the translation. *context* is only visible to the translator and helps disambiguating for very short texts

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dctr-method"></span><span class="type">string</span> <span class="name">dctr</span>(<span class="type">string</span> <em>domain</em>, <span class="type">string</span> <em>context</em>, <span class="type">string</span> <em>text</em>)</p></td>
</tr>
</tbody>
</table>

Translate *text* using gettext. Uses the specified domain *domain* instead of i18n.domain. *context* is only visible to the translator and helps disambiguating for very short texts

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dtr-method-2"></span><span class="type">string</span> <span class="name">dtr</span>(<span class="type">string</span> <em>domain</em>, <span class="type">string</span> <em>singular</em>, <span class="type">string</span> <em>plural</em>, <span class="type">int</span> <em>n</em>)</p></td>
</tr>
</tbody>
</table>

Translate the given text using gettext. Should be called like this: tr(domain, "%n file", "%n files", count) Uses *domain* for the domain instead of i18n.domain, and *singular* or *plural* as input for the translation depending on the number of items *n*.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dtr-method"></span><span class="type">string</span> <span class="name">dtr</span>(<span class="type">string</span> <em>domain</em>, <span class="type">string</span> <em>text</em>)</p></td>
</tr>
</tbody>
</table>

Translate *text* using gettext. Uses the specified domain *domain* instead of i18n.domain.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="relativeDateTime-method"></span><span class="type">string</span> <span class="name">relativeDateTime</span>(<span class="type">datetime</span> <em>dateTime</em>)</p></td>
</tr>
</tbody>
</table>

Translate a datetime based on proximity to current time.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="tag-method-2"></span><span class="type">string</span> <span class="name">tag</span>(<span class="type">string</span> <em>context</em>, <span class="type">string</span> <em>text</em>)</p></td>
</tr>
</tbody>
</table>

Mark *text* for translation at a later point. Typically this allows an API to take the original string and pass it to dctr (or g\_dpgettext2). *context* is only visible to the translator and helps disambiguating for very short texts

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="tag-method"></span><span class="type">string</span> <span class="name">tag</span>(<span class="type">string</span> <em>text</em>)</p></td>
</tr>
</tbody>
</table>

Mark *text* for translation at a later point. Typically this allows an API to take the original string and pass it to dtr (or dgettext).

``` qml
import QtQuick 2.4
import UserMetrics 0.1
Metric {
    name: "distance"
    format: i18n.tag("Distance covered today: %1 km")
    emptyFormat: i18n.tag("No running today")
    domain: "runner.forest"
}
```

The strings tagged for localzation above are passed to the implementation of UserMetrics verbatim, as well as the domain of the app. Display and translation of the strings will happen in the lockscreen, where the same strings will be passed to i18n.tr.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="tr-method-2"></span><span class="type">string</span> <span class="name">tr</span>(<span class="type">string</span> <em>singular</em>, <span class="type">string</span> <em>plural</em>, <span class="type">int</span> <em>n</em>)</p></td>
</tr>
</tbody>
</table>

Translate the given input string *singular* or *plural* (depending on the number of items *n*) using gettext. Should be called like this: tr("%n file", "%n files", count)

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="tr-method"></span><span class="type">string</span> <span class="name">tr</span>(<span class="type">string</span> <em>text</em>)</p></td>
</tr>
</tbody>
</table>

Translate *text* using gettext and return the translation.

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
