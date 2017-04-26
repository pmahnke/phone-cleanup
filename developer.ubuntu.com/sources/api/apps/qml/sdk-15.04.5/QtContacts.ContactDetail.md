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
-   [QtContacts](../QtContacts/index.html) ›

<!-- -->

-   ContactDetail

ContactDetail
=============

<span class="subtitle"></span>
The ContactDetail element represents a single, complete detail about a contact. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtContacts 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[contexts](index.html#contexts-prop)**** : list&lt;int&gt;
-   ****[detailUri](index.html#detailUri-prop)**** : string
-   ****[fields](index.html#fields-prop)**** : list&lt;int&gt;
-   ****[linkedDetailUris](index.html#linkedDetailUris-prop)**** : list&lt;string&gt;
-   ****[readOnly](index.html#readOnly-prop)**** : bool
-   ****[removable](index.html#removable-prop)**** : bool
-   ****[type](index.html#type-prop)**** : enumeration

<span id="details"></span>
Detailed Description
--------------------

The ContactDetail element is part of the **QtContacts** module.

**See also** QContactDetail.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contexts-prop"></span><span class="name">contexts</span> : <span class="type">list</span>&lt;<span class="type">int</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds one or more contexts that this detail is associated with.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="detailUri-prop"></span><span class="name">detailUri</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the unique URI of the detail if one exists.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fields-prop"></span><span class="name">fields</span> : <span class="type">list</span>&lt;<span class="type">int</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the list of all fields which this detail supports.

This property is read only.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="linkedDetailUris-prop"></span><span class="name">linkedDetailUris</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a list of detail URIs to which this detail is linked.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="readOnly-prop"></span><span class="name">readOnly</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates whether or not this detail is writable. This property is read only.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removable-prop"></span><span class="name">removable</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates whether or not this detail is removale. This property is read only.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="type-prop"></span><span class="name">type</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the type of the detail.

-   [ContactDetail](index.html).Address
-   [ContactDetail](index.html).Anniversary
-   [ContactDetail](index.html).Avatar
-   [ContactDetail](index.html).Birthday
-   [ContactDetail](index.html).[DisplayLabel](../QtContacts.DisplayLabel/index.html)
-   [ContactDetail](index.html).Email
-   [ContactDetail](index.html).[ExtendedDetail](../QtContacts.ExtendedDetail/index.html)
-   [ContactDetail](index.html).Family
-   [ContactDetail](index.html).Favorite
-   [ContactDetail](index.html).Gender
-   [ContactDetail](index.html).Geolocation
-   [ContactDetail](index.html).[GlobalPresence](../QtContacts.GlobalPresence/index.html)
-   [ContactDetail](index.html).Guid
-   [ContactDetail](index.html).Hobby
-   [ContactDetail](index.html).Name
-   [ContactDetail](index.html).NickName
-   [ContactDetail](index.html).Note
-   [ContactDetail](index.html).[OnlineAccount](../QtContacts.OnlineAccount/index.html)
-   [ContactDetail](index.html).Organization
-   [ContactDetail](index.html).[PhoneNumber](../QtContacts.PhoneNumber/index.html)
-   [ContactDetail](index.html).Presence
-   [ContactDetail](index.html).Ringtone
-   [ContactDetail](index.html).[SyncTarget](../QtContacts.SyncTarget/index.html)
-   [ContactDetail](index.html).Tag
-   [ContactDetail](index.html).Timestamp
-   [ContactDetail](index.html).Url
-   [ContactDetail](index.html).Version
-   [ContactDetail](index.html).Unknown

This property is read only.

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
