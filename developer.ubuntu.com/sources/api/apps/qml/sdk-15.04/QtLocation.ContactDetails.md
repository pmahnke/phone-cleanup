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
-   [SDK 15.04](../index.html) ›
-   [QtLocation](../QtLocation/index.html) ›

<!-- -->

-   ContactDetails

ContactDetails
==============

<span class="subtitle"></span>
The ContactDetails type holds contact details for a Place. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="methods"></span>
Methods
-------

-   variant ****[keys](index.html#keys-method)****()

<span id="details"></span>
Detailed Description
--------------------

The [ContactDetails](index.html) type is a map of [ContactDetail](../QtLocation.ContactDetail/index.html) objects. To access contact details in the map use the [keys()](index.html#keys-method) method to get the list of keys stored in the map and then use the `[]` operator to access the [ContactDetail](../QtLocation.ContactDetail/index.html) items.

The following keys are defined in the API. [Plugin](../QtLocation.location-places-qml/index.html#plugin) implementations are free to define additional keys.

-   phone
-   fax
-   email
-   website

[ContactDetails](index.html) instances are only ever used in the context of [Places](../QtLocation.location-cpp-qml/index.html#place). It is not possible to create a [ContactDetails](index.html) instance directly or re-assign [ContactDetails](index.html) instances to [Places](../QtLocation.location-cpp-qml/index.html#place). Modification of [ContactDetails](index.html) can only be accomplished via Javascript.

<span id="examples"></span>
Examples
--------

The following example shows how to access all [ContactDetails](../QtLocation.ContactDetail/index.html) and print them to the console:

``` qml
import QtPositioning 5.2
import QtLocation 5.3
function printContactDetails(contactDetails) {
    var keys = contactDetails.keys();
    for (var i = 0; i < keys.length; ++i) {
        var contactList = contactDetails[keys[i]];
        for (var j = 0; j < contactList.length; ++j) {
            console.log(contactList[j].label + ": " + contactList[j].value);
        }
    }
}
```

The returned list of contact details is an object list and so can be used directly as a data model. For example, the following demonstrates how to display a list of contact phone numbers in a list view:

``` qml
import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
ListView {
    model: place.contactDetails.phone;
    delegate: Text { text: modelData.label + ": " + modelData.value }
}
```

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

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="keys-method"></span><span class="type">variant</span> <span class="name">keys</span>()</p></td>
</tr>
</tbody>
</table>

Returns an array of contact detail keys currently stored in the map.

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
