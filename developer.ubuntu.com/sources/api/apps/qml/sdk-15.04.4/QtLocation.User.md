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
-   [QtLocation](../QtLocation/index.html) ›

<!-- -->

-   User

User
====

<span class="subtitle"></span>
The User type identifies a user who contributed a particular Place content item. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[name](../../sdk-15.04.1/QtLocation.User/index.html#name-prop)**** : string
-   ****[user](../../sdk-15.04.1/QtLocation.User/index.html#user-prop)**** : QPlaceUser
-   ****[userId](../../sdk-15.04.1/QtLocation.User/index.html#userId-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

Each [Place](../../sdk-15.04.1/QtLocation.location-cpp-qml/index.html#place) content item has an associated user who contributed the content. This type provides information about that user.

<span id="example"></span>
Example
-------

The following example shows how to display information about the user who submitted an editorial:

``` qml
import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
EditorialModel {
    id: editorialModel
    batchSize: 3
    place: place
}
ListView {
    model: editorialModel
    delegate: Item {
        anchors.fill: parent
        Column {
            width: parent.width
            clip: true
            Text {
                text: title
                width: parent.width
                wrapMode: Text.WordWrap
                font.pixelSize: 24
            }
            Text {
                text: text
                width: parent.width
                wrapMode: Text.WordWrap
                font.pixelSize: 20
            }
            Row {
                Image {
                    width: 16
                    height: 16
                    source: supplier.icon.url(Qt.size(width, height), Icon.List)
                }
                Text {
                    text: "Provided by " + supplier.name
                    font.pixelSize: 16
                }
            }
            Text {
                text: "Contributed by " + user.name
                font.pixelSize: 16
            }
            Text {
                text: attribution
                font.pixelSize: 8
            }
        }
    }
}
```

**See also** [ImageModel](../../sdk-15.04.1/QtLocation.ImageModel/index.html), [ReviewModel](../../sdk-15.04.1/QtLocation.ReviewModel/index.html), and [EditorialModel](../../sdk-15.04.1/QtLocation.EditorialModel/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of a user.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="user-prop"></span><span class="name">user</span> : <span class="type">QPlaceUser</span></p></td>
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
<td><p><span id="userId-prop"></span><span class="name">userId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the unique identifier of the user.

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
