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
-   [SDK 15.04.6](../index.html) ›
-   [QtQuick.XmlListModel](../QtQuick.XmlListModel/index.html) ›

<!-- -->

-   XmlListModel

XmlListModel
============

<span class="subtitle"></span>
For specifying a read-only model using XPath expressions More...

|                   |                                 |
|-------------------|---------------------------------|
| Import Statement: | import QtQuick.XmlListModel 2.0 |

<span id="properties"></span>
Properties
----------

-   ****[count](index.html#count-prop)**** : int
-   ****[namespaceDeclarations](index.html#namespaceDeclarations-prop)**** : string
-   ****[progress](index.html#progress-prop)**** : real
-   ****[query](index.html#query-prop)**** : string
-   ****[roles](index.html#roles-prop)**** : list&lt;XmlRole&gt;
-   ****[source](index.html#source-prop)**** : url
-   ****[status](index.html#status-prop)**** : enumeration
-   ****[xml](index.html#xml-prop)**** : string

<span id="methods"></span>
Methods
-------

-   void ****[errorString](index.html#errorString-method)****()
-   object ****[get](index.html#get-method)****(int *index*)
-   void ****[reload](index.html#reload-method)****()

<span id="details"></span>
Detailed Description
--------------------

To use this element, you will need to import the module with the following line:

``` cpp
import QtQuick.XmlListModel 2.0
```

[XmlListModel](../QtQuick.qtquick-modelviewsdata-modelview/index.html#xmllistmodel) is used to create a read-only model from XML data. It can be used as a data source for view elements (such as [ListView](../QtQuick.ListView/index.html), [PathView](../QtQuick.PathView/index.html), [GridView](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.6/QtQuick.draganddrop/#gridview)) and other elements that interact with model data (such as [Repeater](../QtQuick.Repeater/index.html)).

For example, if there is a XML document at http://www.mysite.com/feed.xml like this:

``` cpp
<?xml version="1.0" encoding="utf-8"?>
<rss version="2.0">
    ...
    <channel>
        <item>
            <title>A blog post</title>
            <pubDate>Sat, 07 Sep 2010 10:00:01 GMT</pubDate>
        </item>
        <item>
            <title>Another blog post</title>
            <pubDate>Sat, 07 Sep 2010 15:35:01 GMT</pubDate>
        </item>
    </channel>
</rss>
```

A [XmlListModel](../QtQuick.qtquick-modelviewsdata-modelview/index.html#xmllistmodel) could create a model from this data, like this:

``` qml
import QtQuick 2.0
import QtQuick.XmlListModel 2.0
XmlListModel {
    id: xmlModel
    source: "http://www.mysite.com/feed.xml"
    query: "/rss/channel/item"
    XmlRole { name: "title"; query: "title/string()" }
    XmlRole { name: "pubDate"; query: "pubDate/string()" }
}
```

The [query](index.html#query-prop) value of "/rss/channel/item" specifies that the [XmlListModel](../QtQuick.qtquick-modelviewsdata-modelview/index.html#xmllistmodel) should generate a model item for each `<item>` in the XML document.

The [XmlRole](../QtQuick.XmlListModel.XmlRole/index.html) objects define the model item attributes. Here, each model item will have `title` and `pubDate` attributes that match the `title` and `pubDate` values of its corresponding `<item>`. (See [XmlRole::query](../QtQuick.XmlListModel.XmlRole/index.html#query-prop) for more examples of valid XPath expressions for [XmlRole](../QtQuick.XmlListModel.XmlRole/index.html).)

The model could be used in a [ListView](../QtQuick.ListView/index.html), like this:

``` qml
ListView {
    width: 180; height: 300
    model: xmlModel
    delegate: Text { text: title + ": " + pubDate }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/054de995-712b-4834-8430-397360ad4f86-api/apps/qml/sdk-15.04.6/QtQuick.XmlListModel.XmlListModel/images/qml-xmllistmodel-example.png)

The [XmlListModel](../QtQuick.qtquick-modelviewsdata-modelview/index.html#xmllistmodel) data is loaded asynchronously, and [status](index.html#status-prop) is set to `XmlListModel.Ready` when loading is complete. Note this means when [XmlListModel](../QtQuick.qtquick-modelviewsdata-modelview/index.html#xmllistmodel) is used for a view, the view is not populated until the model is loaded.

<span id="using-key-xml-roles"></span>
### Using key XML roles

You can define certain roles as "keys" so that when [reload()](index.html#reload-method) is called, the model will only add and refresh data that contains new values for these keys.

For example, if above role for "pubDate" was defined like this instead:

``` qml
    XmlRole { name: "pubDate"; query: "pubDate/string()"; isKey: true }
```

Then when [reload()](index.html#reload-method) is called, the model will only add and reload items with a "pubDate" value that is not already present in the model.

This is useful when displaying the contents of XML documents that are incrementally updated (such as RSS feeds) to avoid repainting the entire contents of a model in a view.

If multiple key roles are specified, the model only adds and reload items with a combined value of all key roles that is not already present in the model.

**See also** [Qt Quick Demo - RSS News](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.6/QtQuick.demos-rssnews/).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="count-prop"></span><span class="name">count</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The number of data entries in the model.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="namespaceDeclarations-prop"></span><span class="name">namespaceDeclarations</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The namespace declarations to be used in the XPath queries.

The namespaces should be declared as in XQuery. For example, if a requested document at http://mysite.com/feed.xml uses the namespace "http://www.w3.org/2005/Atom", this can be declared as the default namespace:

``` qml
XmlListModel {
    source: "http://mysite.com/feed.xml"
    query: "/feed/entry"
    namespaceDeclarations: "declare default element namespace 'http://www.w3.org/2005/Atom';"
    XmlRole { name: "title"; query: "title/string()" }
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="progress-prop"></span><span class="name">progress</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This indicates the current progress of the downloading of the XML data source. This value ranges from 0.0 (no data downloaded) to 1.0 (all data downloaded). If the XML data is not from a remote source, the progress becomes 1.0 as soon as the data is read.

Note that when the progress is 1.0, the XML data has been downloaded, but it is yet to be loaded into the model at this point. Use the status property to find out when the XML data has been read and loaded into the model.

**See also** [status](index.html#status-prop) and [source](index.html#source-prop).

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

An absolute XPath query representing the base query for creating model items from this model's [XmlRole](../QtQuick.XmlListModel.XmlRole/index.html) objects. The query should start with '/' or '//'.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="roles-prop"></span><span class="name">roles</span> : <span class="type">list</span>&lt;<span class="type"><a href="../QtQuick.XmlListModel.XmlRole/index.html">XmlRole</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

The roles to make available for this model.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="source-prop"></span><span class="name">source</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

The location of the XML data source.

If both `source` and [xml](index.html#xml-prop) are set, [xml](index.html#xml-prop) is used.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="status-prop"></span><span class="name">status</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Specifies the model loading status, which can be one of the following:

-   [XmlListModel](../QtQuick.qtquick-modelviewsdata-modelview/index.html#xmllistmodel).Null - No XML data has been set for this model.
-   [XmlListModel](../QtQuick.qtquick-modelviewsdata-modelview/index.html#xmllistmodel).Ready - The XML data has been loaded into the model.
-   [XmlListModel](../QtQuick.qtquick-modelviewsdata-modelview/index.html#xmllistmodel).Loading - The model is in the process of reading and loading XML data.
-   [XmlListModel](../QtQuick.qtquick-modelviewsdata-modelview/index.html#xmllistmodel).Error - An error occurred while the model was loading. See [errorString()](index.html#errorString-method) for details about the error.

**See also** [progress](index.html#progress-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="xml-prop"></span><span class="name">xml</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the XML data for this model, if set.

The text is assumed to be UTF-8 encoded.

If both [source](index.html#source-prop) and `xml` are set, `xml` is used.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="errorString-method"></span><span class="type">void</span> <span class="name">errorString</span>()</p></td>
</tr>
</tbody>
</table>

Returns a string description of the last error that occurred if [status](index.html#status-prop) is XmlListModel::Error.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="get-method"></span><span class="type">object</span> <span class="name">get</span>(<span class="type">int</span> <em>index</em>)</p></td>
</tr>
</tbody>
</table>

Returns the item at *index* in the model.

For example, for a model like this:

``` qml
XmlListModel {
    id: model
    source: "http://mysite.com/feed.xml"
    query: "/feed/entry"
    XmlRole { name: "title"; query: "title/string()" }
}
```

This will access the `title` value for the first item in the model:

``` js
var title = model.get(0).title;
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="reload-method"></span><span class="type">void</span> <span class="name">reload</span>()</p></td>
</tr>
</tbody>
</table>

Reloads the model.

If no key roles have been specified, all existing model data is removed, and the model is rebuilt from scratch.

Otherwise, items are only added if the model does not already contain items with matching key role values.

**See also** [Using key XML roles](index.html#using-key-xml-roles) and [XmlRole::isKey](../QtQuick.XmlListModel.XmlRole/index.html#isKey-prop).

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
