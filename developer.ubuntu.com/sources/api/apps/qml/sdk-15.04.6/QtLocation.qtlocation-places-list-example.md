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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.6</a> ›
-   <a href="../QtLocation/index.html" class="sub-nav-item">QtLocation</a> ›

<!-- -->

-   Places List (QML)

Places List (QML)
=================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/f87d87d6-a456-4cf4-a3e7-cbc4a562f964-api/apps/qml/sdk-15.04.1/qtlocation-places-list-example/images/places-list.png)

To write a QML application that will show places in a list, we start by making the following import declarations.

``` qml
import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
```

Instantiate a [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml/index.html#plugin) instance. The [Plugin](../../sdk-15.04.1/QtLocation.location-places-qml/index.html#plugin) is effectively the backend from where places are sourced from. Because the `nokia` plugin has been specified, some mandatory parameters need to be filled in, see the [Nokia Plugin](../../sdk-15.04.1/QtLocation.location-plugin-nokia/index.html#mandatory-parameters) documentation for details:

``` qml
Plugin {
    id: myPlugin
    name: "nokia"
    //specify plugin parameters as necessary
    //PluginParameter {...}
    //PluginParameter {...}
    //...
}
```

Next we instantiate a [PlaceSearchModel](../../sdk-15.04.1/QtLocation.PlaceSearchModel/index.html) which we can use to specify search parameters and perform a places search operation. For illustrative purposes, [update()](../../sdk-15.04.1/QtLocation.PlaceSearchModel/index.html#update-method) is invoked once construction of the model is complete. Typically [update()](../../sdk-15.04.1/QtLocation.PlaceSearchModel/index.html#update-method) would be invoked in response to a user action such as a button click.

``` qml
PlaceSearchModel {
    id: searchModel
    plugin: myPlugin
    searchTerm: "pizza"
    searchArea: QtPositioning.circle(startCoordinate);
    Component.onCompleted: update()
}
```

Finally we instantiate a ListView to show the search results found by the model. An inline delegate has been used and we have assumed that every search result is of [type](../../sdk-15.04.1/QtLocation.PlaceSearchModel/index.html#search-result-types) `PlaceSearchesult`. Consequently it is assumed that we always have access to the *place* [role](../../sdk-15.04.1/QtLocation.PlaceSearchModel/index.html#placesearchmodel-roles), other search result types may not have a *place* [role](../../sdk-15.04.1/QtLocation.PlaceSearchModel/index.html#placesearchmodel-roles).

``` qml
ListView {
    anchors.fill: parent
    model: searchModel
    delegate: Component {
        Column {
            Text { text: title }
            Text { text: place.location.address.text }
        }
    }
    spacing: 10
}
```

Files:

-   places\_list/places\_list.qml
-   places\_list/main.cpp
-   places\_list/places\_list.pro

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
