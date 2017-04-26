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
-   [QtQuick.XmlListModel](../QtQuick.XmlListModel/index.html) ›

<!-- -->

-   XmlRole

XmlRole
=======

<span class="subtitle"></span>
For specifying a role to an XmlListModel More...

|                   |                                 |
|-------------------|---------------------------------|
| Import Statement: | import QtQuick.XmlListModel 2.0 |

<span id="properties"></span>
Properties
----------

-   ****[isKey](index.html#isKey-prop)**** : bool
-   ****[name](index.html#name-prop)**** : string
-   ****[query](index.html#query-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

**See also** Qt QML.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isKey-prop"></span><span class="name">isKey</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Defines whether this is a key role. Key roles are used to determine whether a set of values should be updated or added to the XML list model when [XmlListModel::reload()](../QtQuick.XmlListModel.XmlListModel/index.html#reload-method) is called.

**See also** [XmlListModel](../QtQuick.qtquick-modelviewsdata-modelview/index.html#xmllistmodel).

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

The name for the role. This name is used to access the model data for this role.

For example, the following model has a role named "title", which can be accessed from the view's delegate:

``` qml
XmlListModel {
    id: xmlModel
    // ...
    XmlRole {
        name: "title"
        query: "title/string()"
    }
}
```

``` qml
ListView {
    model: xmlModel
    delegate: Text { text: title }
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="query-prop"></span><span class="name">query</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The relative XPath expression query for this role. The query must be relative; it cannot start with a '/'.

For example, if there is an XML document like this:

``` cpp
<?xml version="1.0" encoding="iso-8859-1" ?>
<catalog>
    <book type="Online" wanted="true">
        <title>Qt 5 Cadaques</title>
        <year>2014</year>
        <author>Juergen Bocklage-Ryannel</author>
        <author>Johan Thelin</author>
    </book>
    <book type="Hardcover">
        <title>C++ GUI Programming with Qt 4</title>
        <year>2006</year>
        <author>Jasmin Blanchette</author>
        <author>Mark Summerfield</author>
    </book>
    <book type="Paperback">
        <title>Programming with Qt</title>
        <year>2002</year>
        <author>Matthias Kalle Dalheimer</author>
    </book>
 </catalog>
```

Here are some valid XPath expressions for [XmlRole](index.html) queries on this document:

``` qml
XmlListModel {
    id: model
    ...
    // XmlRole queries will be made on <book> elements
    query: "/catalog/book"
    // query the book title
    XmlRole { name: "title"; query: "title/string()" }
    // query the book's year
    XmlRole { name: "year"; query: "year/number()" }
    // query the book's type (the '@' indicates 'type' is an attribute, not an element)
    XmlRole { name: "type"; query: "@type/string()" }
    // query the book's first listed author (note in XPath the first index is 1, not 0)
    XmlRole { name: "first_author"; query: "author[1]/string()" }
    // query the wanted attribute as a boolean
    XmlRole { name: "wanted"; query: "boolean(@wanted)" }
}
```

Accessing the model data for the above roles from a delegate:

``` qml
ListView {
    width: 300; height: 200
    model: model
    delegate: Column {
        Text { text: title + " (" + type + ")"; font.bold: wanted }
        Text { text: first_author }
        Text { text: year }
    }
```

See the [W3C XPath 2.0 specification](http://www.w3.org/TR/xpath20/) for more information.

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
