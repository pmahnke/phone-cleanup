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
-   [QtLocation](../QtLocation/index.html) ›

<!-- -->

-   PlaceAttribute

PlaceAttribute
==============

<span class="subtitle"></span>
The PlaceAttribute type holds generic place attribute information. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[attribute](../../sdk-15.04.1/QtLocation.PlaceAttribute/index.html#attribute-prop)**** : QPlaceAttribute
-   ****[label](../../sdk-15.04.1/QtLocation.PlaceAttribute/index.html#label-prop)**** : string
-   ****[text](../../sdk-15.04.1/QtLocation.PlaceAttribute/index.html#text-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

A place attribute stores an additional piece of information about a [Place](../../sdk-15.04.1/QtLocation.location-cpp-qml/index.html#place) that is not otherwise exposed through the [Place](../../sdk-15.04.1/QtLocation.location-cpp-qml/index.html#place) type. A [PlaceAttribute](../../sdk-15.04.1/QtLocation.location-cpp-qml/index.html#placeattribute) is a textual piece of data, accessible through the [text](../../sdk-15.04.1/QtLocation.PlaceAttribute/index.html#text-prop) property, and a [label](../../sdk-15.04.1/QtLocation.PlaceAttribute/index.html#label-prop). Both the [text](../../sdk-15.04.1/QtLocation.PlaceAttribute/index.html#text-prop) and [label](../../sdk-15.04.1/QtLocation.PlaceAttribute/index.html#label-prop) properties are intended to be displayed to the user. PlaceAttributes are stored in an [ExtendedAttributes](../../sdk-15.04.1/QtLocation.ExtendedAttributes/index.html) map with a unique key.

The following example shows how to display all attributes in a list:

``` qml
import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
ListView {
    model: place.extendedAttributes.keys()
    delegate: Text {
        text: "<b>" + place.extendedAttributes[modelData].label + ": </b>" +
              place.extendedAttributes[modelData].text
    }
}
```

The following example shows how to assign and modify an attribute:

``` qml
    //assign a new attribute to a place
    var smokingAttrib = Qt.createQmlObject('import QtLocation 5.3; PlaceAttribute {}', place);
    smokingAttrib.label = "Smoking Allowed"
    smokingAttrib.text = "No"
    place.extendedAttributes.smoking = smokingAttrib;
    //modify an existing attribute
    place.extendedAttributes.smoking.text = "Yes"
```

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="attribute-prop"></span><span class="name">attribute</span> : <span class="type">QPlaceAttribute</span></p></td>
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

This property holds the attribute label which is a user visible string describing the attribute.

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

This property holds the attribute text which can be used to show additional information about the place.

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
