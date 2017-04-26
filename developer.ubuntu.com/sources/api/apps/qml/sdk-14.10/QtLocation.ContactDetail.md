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
-   [SDK 14.10](../index.html) ›
-   [QtLocation](../QtLocation/index.html) ›

<!-- -->

-   ContactDetail

ContactDetail
=============

<span class="subtitle"></span>
The ContactDetail type holds a contact detail such as a phone number or a website address. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | `import QtLocation 5.3` |
| Since:            | Qt Location 5.0         |

<span id="properties"></span>
Properties
----------

-   ****[contactDetail](index.html#contactDetail-prop)**** : QPlaceContactDetail
-   ****[label](index.html#label-prop)**** : string
-   ****[value](index.html#value-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

The ContactDetail provides a single detail on how one could contact a [Place](../QtLocation.Place/index.html). The ContactDetail consists of a [label](index.html#label-prop), which is a localized string describing the contact method, and a [value](index.html#value-prop) representing the actual contact detail.

<span id="examples"></span>
Examples
--------

The following example demonstrates how to assign a single phone number to a place in JavaScript:

``` qml
function writeSingle() {
    var phoneNumber = Qt.createQmlObject('import QtLocation 5.3; ContactDetail {}', place);
    phoneNumber.label = "Phone";
    phoneNumber.value = "555-5555"
    place.contactDetails.phone = phoneNumber;
}
```

The following demonstrates how to assign multiple phone numbers to a place in JavaScript:

``` qml
function writeMultiple() {
    var bob = Qt.createQmlObject('import QtLocation 5.3; ContactDetail {}', place);
    bob.label = "Bob";
    bob.value = "555-5555"
    var alice = Qt.createQmlObject('import QtLocation 5.3; ContactDetail {}', place);
    alice.label = "Alice";
    alice.value = "555-8745"
    var numbers = new Array();
    numbers.push(bob);
    numbers.push(alice);
    place.contactDetails.phone = numbers;
}
```

Note, due to limitations of the QQmlPropertyMap, it is not possible to declaratively specify the contact details in QML, it can only be accomplished via JavaScript.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contactDetail-prop"></span><span class="name">contactDetail</span> : <span class="type">QPlaceContactDetail</span></p></td>
</tr>
</tbody>
</table>

For details on how to use this property to interface between C++ and QML see "Interfaces between C++ and QML Code".

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="label-prop"></span><span class="name">label</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds a label describing the contact detail.

The label can potentially be localized. The language is dependent on the entity that sets it, typically this is the [Plugin](../QtLocation.Plugin/index.html). The [Plugin::locales](../QtLocation.Plugin/index.html#locales-prop) property defines what language is used.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="value-prop"></span><span class="name">value</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the value of the contact detail which may be a phone number, an email address, a website url and so on.

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
