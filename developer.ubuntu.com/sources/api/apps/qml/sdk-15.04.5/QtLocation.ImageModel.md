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
-   [QtLocation](../QtLocation/index.html) ›

<!-- -->

-   ImageModel

ImageModel
==========

<span class="subtitle"></span>
The ImageModel type provides a model of place images. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[batchSize](../../sdk-15.04.1/QtLocation.ImageModel/index.html#batchSize-prop)**** : int
-   ****[place](../../sdk-15.04.1/QtLocation.ImageModel/index.html#place-prop)**** : Place
-   ****[totalCount](../../sdk-15.04.1/QtLocation.ImageModel/index.html#totalCount-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

The [ImageModel](../../sdk-15.04.1/QtLocation.ImageModel/index.html) is a read-only model used to fetch images related to a [Place](../../sdk-15.04.1/QtLocation.location-cpp-qml/index.html#place). Binding a [Place](../../sdk-15.04.1/QtLocation.location-cpp-qml/index.html#place) via [ImageModel::place](../../sdk-15.04.1/QtLocation.ImageModel/index.html#place-prop) initiates an initial fetch of images. The model performs fetches incrementally and is intended to be used in conjunction with a View such as a ListView. When the View reaches the last of the images currently in the model, a fetch is performed to retrieve more if they are available. The View is automatically updated as the images are received. The number of images which are fetched at a time is specified by the [batchSize](../../sdk-15.04.1/QtLocation.ImageModel/index.html#batchSize-prop) property. The total number of images available can be accessed via the [totalCount](../../sdk-15.04.1/QtLocation.ImageModel/index.html#totalCount-prop) property.

The model returns data for the following roles:

| Role        | Type                                                         | Description                                                         |
|-------------|--------------------------------------------------------------|---------------------------------------------------------------------|
| url         | url                                                          | The URL of the image.                                               |
| imageId     | string                                                       | The identifier of the image.                                        |
| mimeType    | string                                                       | The MIME type of the image.                                         |
| supplier    | [Supplier](../../sdk-15.04.1/QtLocation.Supplier/index.html) | The supplier of the image.                                          |
| user        | [User](../../sdk-15.04.1/QtLocation.User/index.html)         | The user who contributed the image.                                 |
| attribution | string                                                       | Attribution text which must be displayed when displaying the image. |

<span id="example"></span>
Example
-------

The following example shows how to display images for a place:

``` qml
import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
ImageModel {
    id: imageModel
    batchSize: 3
    place: place
}
ListView {
    anchors.top: parent.top
    width: parent.width
    spacing: 10
    model: imageModel
    orientation: ListView.Horizontal
    snapMode: ListView.SnapOneItem
    delegate: Item {
        width: listView.width
        height: listView.height
        Image {
            anchors.fill: parent
            source: url
            fillMode: Image.PreserveAspectFit
        }
        Text {
            text: supplier.name + "\n" + supplier.url
            width: parent.width
            anchors.bottom: parent.bottom
        }
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
<td><p><span id="batchSize-prop"></span><span class="name">batchSize</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the batch size to use when fetching more image items.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="place-prop"></span><span class="name">place</span> : <span class="type"><a href="../../sdk-15.04.1/QtLocation.Place/index.html">Place</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the Place that the images are for.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="totalCount-prop"></span><span class="name">totalCount</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the total number of image items for the place.

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
