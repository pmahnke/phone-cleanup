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
-   [SDK 15.04.3](../index.html) ›
-   [QtContacts](../QtContacts/index.html) ›

<!-- -->

-   DetailRangeFilter

DetailRangeFilter
=================

<span class="subtitle"></span>
The DetailRangeFilter element provides a filter based around a detail value range criterion. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtContacts 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[detail](index.html#detail-prop)**** : enumeration
-   ****[field](index.html#field-prop)**** : int
-   ****[matchFlags](index.html#matchFlags-prop)**** : enumeration
-   ****[max](index.html#max-prop)**** : variant
-   ****[min](index.html#min-prop)**** : variant
-   ****[rangeFlags](index.html#rangeFlags-prop)**** : enumeration

<span id="details"></span>
Detailed Description
--------------------

This element is part of the **QtContacts** module.

**See also** QContactDetailRangeFilter.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="detail-prop"></span><span class="name">detail</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the detail type of which details will be matched to.

**See also** [ContactDetail::type](../QtContacts.ContactDetail/index.html#type-prop) and [DetailFilter::detail](../QtContacts.DetailFilter/index.html#detail-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="field-prop"></span><span class="name">field</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the detail field type of which detail fields will be matched to. Detail field types are enumeration values defined in each detail elements.

**See also** [DetailFilter::field](../QtContacts.DetailFilter/index.html#field-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="matchFlags-prop"></span><span class="name">matchFlags</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the match flags of the criterion, which define semantics such as case sensitivity, and exact matching.

**See also** [DetailFilter::matchFlags](../QtContacts.DetailFilter/index.html#matchFlags-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="max-prop"></span><span class="name">max</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the upper bound of the value range criterion. By default, there is no upper bound.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="min-prop"></span><span class="name">min</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the lower bound of the value range criterion. By default, there is no lower bound.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="rangeFlags-prop"></span><span class="name">rangeFlags</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds a set of flags which defines the boundary condition semantics of the value range criterion.The valid range flags include:

-   [DetailRangeFilter](index.html).IncludeLower
-   [DetailRangeFilter](index.html).IncludeUpper
-   [DetailRangeFilter](index.html).ExcludeLower
-   [DetailRangeFilter](index.html).ExcludeUpper

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
