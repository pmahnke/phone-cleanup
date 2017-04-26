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

-   ExtendedAttributes

ExtendedAttributes
==================

<span class="subtitle"></span>
The ExtendedAttributes type holds additional data about a Place. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="signals"></span>
Signals
-------

-   void ****[valueChanged](index.html#valueChanged-signal)****(string *key*, variant *value*)

<span id="methods"></span>
Methods
-------

-   variant ****[keys](index.html#keys-method)****()

<span id="details"></span>
Detailed Description
--------------------

The [ExtendedAttributes](index.html) type is a map of [PlaceAttributes](../QtLocation.location-cpp-qml/index.html#placeattribute). To access attributes in the map use the [keys()](index.html#keys-method) method to get the list of keys stored in the map and use the `[]` operator to access the [PlaceAttribute](../QtLocation.location-cpp-qml/index.html#placeattribute) items.

The following are standard keys that are defined by the API. [Plugin](../QtLocation.location-places-qml/index.html#plugin) implementations are free to define additional keys. Custom keys should be qualified by a unique prefix to avoid clashes.

| key                                                | description                                                                                          |
|----------------------------------------------------|------------------------------------------------------------------------------------------------------|
| openingHours                                       | The trading hours of the place                                                                       |
| payment                                            | The types of payment the place accepts, for example visa, mastercard.                                |
| x\_provider                                        | The name of the provider that a place is sourced from                                                |
| x\_id\_&lt;provider&gt; (for example x\_id\_nokia) | An alternative identifier which identifies the place from the perspective of the specified provider. |

Some plugins may not support attributes at all, others may only support a certain set, others still may support a dynamically changing set of attributes over time or even allow attributes to be arbitrarily defined by the client application. The attributes could also vary on a place by place basis, for example one place may have opening hours while another does not. Consult the [plugin references](../QtLocation.qtlocation-index/index.html#plugin-references-and-parameters) for details.

Some attributes may not be intended to be readable by end users, the label field of such attributes is empty to indicate this fact.

**Note:** [ExtendedAttributes](index.html) instances are only ever used in the context of [Place](../QtLocation.location-cpp-qml/index.html#place)s. It is not possible to create an [ExtendedAttributes](index.html) instance directly or re-assign a [Place](../QtLocation.location-cpp-qml/index.html#place)'s [ExtendedAttributes](index.html) property. Modification of [ExtendedAttributes](index.html) can only be accomplished via Javascript.

The following example shows how to access all [PlaceAttributes](../QtLocation.location-cpp-qml/index.html#placeattribute) and print them to the console:

``` qml
import QtPositioning 5.2
import QtLocation 5.3
function printExtendedAttributes(extendedAttributes) {
    var keys = extendedAttributes.keys();
    for (var i = 0; i < keys.length; ++i) {
        var key = keys[i];
        if (extendedAttributes[key].label !== "")
            console.log(extendedAttributes[key].label + ": " + extendedAttributes[key].text);
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

**See also** [PlaceAttribute](../QtLocation.location-cpp-qml/index.html#placeattribute) and QQmlPropertyMap.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="valueChanged-signal"></span><span class="type">void</span> <span class="name">valueChanged</span>(<span class="type">string</span> <em>key</em>, <span class="type">variant</span> <em>value</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the set of attributes changes. *key* is the key corresponding to the *value* that was changed.

The corresponding handler is `onValueChanged`.

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

Returns an array of place attribute keys currently stored in the map.

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
