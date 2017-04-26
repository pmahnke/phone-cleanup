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
-   [SDK 15.04.1](../index.html) ›
-   [Ubuntu.Components](../Ubuntu.Components/index.html) ›

<!-- -->

-   PullToRefresh

PullToRefresh
=============

<span class="subtitle"></span>
Pull-to-refresh component for Flickables to reload a model upon pull. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components 1.3</td>
</tr>
<tr class="even">
<td>Since:</td>
<td>Ubuntu.Components 1.1</td>
</tr>
<tr class="odd">
<td>Inherits:</td>
<td><p><a href="../Ubuntu.Components.StyledItem/index.html">StyledItem</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[content](index.html#content-prop)**** : Component
-   ****[offset](index.html#offset-prop)**** : real
-   ****[refreshing](index.html#refreshing-prop)**** : bool
-   ****[releaseToRefresh](index.html#releaseToRefresh-prop)**** : bool
-   ****[target](index.html#target-prop)**** : Flickable

<span id="signals"></span>
Signals
-------

-   ****[refresh](index.html#refresh-signal)****()

<span id="details"></span>
Detailed Description
--------------------

The component provides ability to initiate data model refresh by pulling the attached Flickable's content. The refresh can be initiated when the flickable content is at its top boundary. By dragging the content further, reaching the threshold value defined by the style will initiate the manual refresh by emitting the [refresh](index.html#refresh-signal) signal. The progress of the refresh must be notified to the component by defining the completion clause to the [refreshing](index.html#refreshing-prop) property.

``` qml
import QtQuick 2.4
import QtQuick.XmlListModel 2.0
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3
MainView {
    width: units.gu(40)
    height: units.gu(71)
    XmlListModel {
        id: listModel
        source: "http://feeds.reuters.com/reuters/topNews"
        query: "/rss/channel/item"
        XmlRole { name: "title"; query: "title/string()" }
    }
    Page {
        title: "Reuters"
        ListView {
            id: view
            anchors.fill: parent
            model: listModel
            delegate: Standard {
                width: ListView.view.width
                height: units.gu(5)
                text: title
            }
            PullToRefresh {
                refreshing: view.model.status === XmlListModel.Loading
                onRefresh: view.model.reload()
            }
        }
    }
}
```

**Note:** [UbuntuListView](../Ubuntu.Components.UbuntuListView/index.html) has a built-in [PullToRefresh](index.html), therefore it is recommended to use [UbuntuListView](../Ubuntu.Components.UbuntuListView/index.html) instead of [ListView](../../sdk-14.10/QtQuick.ListView/index.html).

The component will also show the progress of the model's update when the refresh gets initiated by the model or from other party. Style implementations can decide whether to visualize that or not.

As default, the component displays a Label visualizing the two states of the component, which is pull to refresh and release to refresh. As mentioned, this is driven by the threshold value specified by the style, and the state is reported by the [releaseToRefresh](index.html#releaseToRefresh-prop) property. The [content](index.html#content-prop) specifies the visuals to be shown by the component. Custom implementations can hold any component, which will be anchor filled to the component itself.

``` qml
import QtQuick 2.4
import QtQuick.XmlListModel 2.0
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3
MainView {
    width: units.gu(40)
    height: units.gu(71)
    XmlListModel {
        id: listModel
        source: "http://feeds.reuters.com/reuters/topNews"
        query: "/rss/channel/item"
        XmlRole { name: "title"; query: "title/string()" }
    }
    Page {
        title: "Reuters"
        ListView {
            id: view
            anchors.fill: parent
            model: listModel
            delegate: Standard {
                width: ListView.view.width
                height: units.gu(5)
                text: title
            }
            PullToRefresh {
                id: pullToRefresh
                refreshing: view.model.status === XmlListModel.Loading
                onRefresh: view.model.reload()
                content: Item {
                    Icon {
                        name: pullToRefresh.releaseToRefresh ? "search" : ""
                        height: parent.height
                        width: height
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
            }
        }
    }
}
```

**Note:** When declared as child of Flickable, set parent to the flickable explicitly so the component does not land in the `content` of Flickable.

``` qml
import QtQuick 2.4
import QtQuick.XmlListModel 2.0
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3
MainView {
    id: main
    width: units.gu(40)
    height: units.gu(71)
    XmlListModel {
        id: rssFeed
        source: "http://feeds.reuters.com/reuters/topNews"
        query: "/rss/channel/item"
        XmlRole { name: "title"; query: "title/string()" }
    }
    Page {
        title: "Reuters"
        Flickable {
            id: flickable
            anchors.fill: parent
            contentHeight: column.childrenRect.height
            contentWidth: column.childrenRect.width
            Column {
                id: column
                Repeater {
                    model: rssFeed
                    Standard {
                        width: main.width
                        height: units.gu(5)
                        text: title
                    }
                }
            }
            PullToRefresh {
                parent: flickable
                refreshing: rssFeed.status === XmlListModel.Loading
                onRefresh: rssFeed.reload()
            }
        }
    }
}
```

<span id="styling"></span>
### Styling

The component style API is defined by the [PullToRefreshStyle](../Ubuntu.Components.Styles.PullToRefreshStyle/index.html) component. Styles may define different ways to initiate refresh upon dragging.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="content-prop"></span><span class="name">content</span> : <span class="type"><a href="../../sdk-14.10/QtQml.Component/index.html">Component</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the visuals to be displayed when the component is revealed upon manual refresh. The default value is a Label showing "Pull to refresh..." text when the component is pulled down till the activation threshold, and "Release to refresh..." after that.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="offset-prop"></span><span class="qmlreadonly">read-only</span><span class="name">offset</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The property holds the offset the component is pulled from the [target](index.html#target-prop) Flickable's *topMargin*. The property can be used to provide animations in custom contents.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="refreshing-prop"></span><span class="name">refreshing</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property notifies the component about the ongoing refresh operation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="releaseToRefresh-prop"></span><span class="qmlreadonly">read-only</span><span class="name">releaseToRefresh</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property specifies when the component is ready to trigger the refresh() signal. The logic is defined by the style and the value is transferred from the style's releaseToRefresh property. The property can be used to define custom visuals for [content](index.html#content-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="target-prop"></span><span class="name">target</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Flickable/index.html">Flickable</a></span></p></td>
</tr>
</tbody>
</table>

The Flickable or derivate the component is attached to. This can only be the parent or a sibling of the component. Defaults to the parent.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="refresh-signal"></span><span class="name">refresh</span>()</p></td>
</tr>
</tbody>
</table>

Signal emitted when the model refresh is initiated by the component.

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
