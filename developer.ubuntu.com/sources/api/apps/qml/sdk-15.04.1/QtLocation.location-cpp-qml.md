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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.1</a> ›
-   <a href="../QtLocation/index.html" class="sub-nav-item">QtLocation</a> ›

<!-- -->

-   Interfaces between C++ and QML Code in Qt Positioning

Interfaces between C++ and QML Code in Qt Positioning
=====================================================

<span class="subtitle"></span>
<span id="details"></span> <span id="category-qplacecategory"></span>
### Category - QPlaceCategory

<span id="category"></span>
The Category.category property is used to provide an interface between C++ and QML code. First a pointer to a Category object must be obtained from C++, then use the property() and setProperty() functions to get and set the `category` property. The following gets the QPlaceCategory representing this object from C++:

``` cpp
QPlaceCategory category = qmlObject->property("category").value<QPlaceCategory>();
```

The following sets the properties of this object based on a QPlaceCategory object from C++:

``` cpp
qmlObject->setProperty("category", QVariant::fromValue(category));
```

<span id="contactdetail-qdeclarativecontactdetail"></span>
### ContactDetail - QDeclarativeContactDetail

<span id="contact-detail"></span>
The ContactDetail.contactDetail property is used to provide an interface between C++ and QML code. First a pointer to a ContactDetail object must be obtained from C++, then use the property() and setProperty() functions to get and set the `contactDetail` property. The following gets the QPlaceContactDetail representing this object from C++:

``` cpp
QPlaceContactDetail contactDetail = qmlObject->property("contactDetail").value<QPlaceContactDetail>();
```

The following sets the properties of this object based on a QPlaceContactDetail object from C++:

``` cpp
qmlObject->setProperty("contactDetail", QVariant::fromValue(contactDetail));
```

<span id="place-qplace"></span>
### Place - QPlace

<span id="place"></span>
The Place.place property is used to provide an interface between C++ and QML code. First a pointer to a Place object must be obtained from C++, then use the property() and setProperty() functions to get and set the `place` property. The following gets the QPlace representing this object from C++:

``` cpp
QPlace place = qmlObject->property("place").value<QPlace>();
```

The following sets the properties of this object based on a QPlace object from C++:

``` cpp
qmlObject->setProperty("place", QVariant::fromValue(place));
```

<span id="placeattribute-qplaceattribute"></span>
### PlaceAttribute - QPlaceAttribute

<span id="placeattribute"></span>
The PlaceAttribute.attribute property is used to provide an interface between C++ and QML code. First a pointer to a PlaceAttribute object must be obtained from C++, then use the property() and setProperty() functions to get and set the `attribute` property. The following gets the QPlaceAttribute representing this object from C++:

``` cpp
QPlaceAttribute placeAttribute = qmlObject->property("attribute").value<QPlaceAttribute>();
```

The following sets the properties of this object based on a QPlaceAttribute object from C++:

``` cpp
qmlObject->setProperty("attribute", QVariant::fromValue(placeAttribute));
```

<span id="icon-qplaceicon"></span>
### Icon - QPlaceIcon

<span id="placeicon"></span>
The Icon.icon property is used to provide an interface between C++ and QML code. First a pointer to a Icon object must be obtained from C++, then use the property() and setProperty() functions to get and set the `icon` property. The following gets the QPlaceIcon representing this object from C++:

``` cpp
QPlaceIcon placeIcon = qmlObject->property("icon").value<QPlaceIcon>();
```

The following sets the properties of this object based on a QPlaceIcon object from C++:

``` cpp
qmlObject->setProperty("icon", QVariant::fromValue(placeIcon));
```

<span id="user-qplaceuser"></span>
### User - QPlaceUser

<span id="placeuser"></span>
The User.user property is used to provide an interface between C++ and QML code. First a pointer to a User object must be obtained from C++, then use the property() and setProperty() functions to get and set the `user` property. The following gets the QPlaceUser representing this object from C++:

``` cpp
QPlaceUser placeUser = qmlObject->property("user").value<QPlaceUser>();
```

The following sets the properties of this object based on a QPlaceUser object from C++:

``` cpp
qmlObject->setProperty("user", QVariant::fromValue(placeUser));
```

<span id="ratings-qplaceratings"></span>
### Ratings - QPlaceRatings

<span id="placeratings"></span>
The Ratings.ratings property is used to provide an interface between C++ and QML code. First a pointer to a Ratings object must be obtained from C++, then use the property() and setProperty() functions to get and set the `ratings` property. The following gets the QPlaceRating representing this object from C++:

``` cpp
QPlaceRatings placeRatings = qmlObject->property("ratings").value<QPlaceRatings>();
```

The following sets the properties of this object based on a QPlaceRatings object from C++:

``` cpp
qmlObject->setProperty("ratings", QVariant::fromValue(placeRatings));
```

<span id="supplier-qplacesupplier"></span>
### Supplier - QPlaceSupplier

<span id="placesupplier"></span>
The Supplier.supplier property is used to provide an interface between C++ and QML code. First a pointer to a Supplier object must be obtained from C++, then use the property() and setProperty() functions to get and set the `supplier` property. The following gets the QPlaceSupplier representing this object from C++:

``` cpp
QPlaceSupplier placeSupplier = qmlObject->property("supplier").value<QPlaceSupplier>();
```

The following sets the properties of this object based on a QPlaceSupplier object from C++:

``` cpp
qmlObject->setProperty("supplier", QVariant::fromValue(placeSupplier));
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
