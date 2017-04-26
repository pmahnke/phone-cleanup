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
-   [Ubuntu.Components](../Ubuntu.Components/index.html) ›

<!-- -->

-   BottomEdge

BottomEdge
==========

<span class="subtitle"></span>
A component to handle bottom edge gesture and content. More...

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
<td>Ubuntu.Components 1.3</td>
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

-   ****[activeRegion](index.html#activeRegion-prop)**** : BottomEdgeRegion
-   ****[contentComponent](index.html#contentComponent-prop)**** : Component
-   ****[contentItem](index.html#contentItem-prop)**** : Item
-   ****[contentUrl](index.html#contentUrl-prop)**** : url
-   ****[dragDirection](index.html#dragDirection-prop)**** : DragDirection
-   ****[dragProgress](index.html#dragProgress-prop)**** : real
-   ****[hint](index.html#hint-prop)**** : BottomEdgeHint
-   ****[preloadContent](index.html#preloadContent-prop)**** : bool
-   ****[regions](index.html#regions-prop)**** : list&lt;BottomEdgeRegion&gt;
-   ****[status](index.html#status-prop)**** : Status

<span id="signals"></span>
Signals
-------

-   ****[collapseCompleted](index.html#collapseCompleted-signal)****()
-   ****[collapseStarted](index.html#collapseStarted-signal)****()
-   ****[commitCompleted](index.html#commitCompleted-signal)****()
-   ****[commitStarted](index.html#commitStarted-signal)****()

<span id="methods"></span>
Methods
-------

-   void ****[collapse](index.html#collapse-method)****()
-   void ****[commit](index.html#commit-method)****()

<span id="details"></span>
Detailed Description
--------------------

The component provides bottom edge content handling. The bottom egde feature is typically composed of a hint and some content. The [contentUrl](index.html#contentUrl-prop) is committed (i.e. fully shown) when the drag is completed after it has been dragged for a certain amount, that is 30% of the height of the [BottomEdge](index.html). The [contentUrl](index.html#contentUrl-prop) can be anything, defined by [contentUrl](index.html#contentUrl-prop) or [contentComponent](index.html#contentComponent-prop).

As the name suggests, the component automatically anchors to the bottom of its parent and takes the width of the parent. The drag is detected within the parent area, and the height drives till what extent the bottom edge content should be exposed on [commit](index.html#commit-method) call. The content is centered into a panel which is dragged from the bottom of the [BottomEdge](index.html). The content must specify its width and height.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(40)
    height: units.gu(70)
    Page {
        id: page
        title: "BottomEdge"
        BottomEdge {
            height: parent.height - units.gu(20)
            hint.text: "My bottom edge"
            contentComponent: Rectangle {
                width: page.width
                height: page.height
                color: UbuntuColors.green
            }
        }
    }
}
```

**Note:** The content is specified either through [contentUrl](index.html#contentUrl-prop) or [contentComponent](index.html#contentComponent-prop), where [contentComponent](index.html#contentComponent-prop) has precedence over [contentUrl](index.html#contentUrl-prop).

There can be situations when the content depends on the progress of the drag. There are two possibilities to follow this, depending on the use case. The [dragProgress](index.html#dragProgress-prop) provides live updates about the fraction of the drag.

``` qml
BottomEdge {
    id: bottomEdge
    height: parent.height
    hint.text: "progression"
    contentComponent: Rectangle {
        width: bottomEdge.width
        height: bottomEdge.height
        color: Qt.rgba(0.5, 1, bottomEdge.dragProgress, 1);
    }
}
```

The other use case is when the content needs to be completely different in certain regions of the area. These regions can be defined through [BottomEdgeRegion](../Ubuntu.Components.BottomEdgeRegion/index.html) elements listed in the [regions](index.html#regions-prop) property.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(40)
    height: units.gu(70)
    Page {
        title: "BottomEdge"
        BottomEdge {
            id: bottomEdge
            height: parent.height - units.gu(20)
            hint.text: "My bottom edge"
            contentComponent: Rectangle {
                width: bottomEdge.width
                height: bottomEdge.height
                color: bottomEdge.activeRegion ?
                         bottomEdge.activeRegion.color : UbuntuColors.green
            }
            regions: [
                BottomEdgeRegion {
                    from: 0.4
                    to: 0.6
                    property color color: UbuntuColors.red
                },
                BottomEdgeRegion {
                    from: 0.6
                    to: 1.0
                    property color color: UbuntuColors.silk
                }
            ]
        }
    }
}
```

**Note:** Custom regions override the default declared ones. Therefore there must be one region which has its [to](../Ubuntu.Components.BottomEdgeRegion/index.html#to-prop) limit set to 1.0 otherwise the content will not be committed at all.

**Note:** Regions can also be declared as child elements the same way as resources.

The [BottomEdge](index.html) takes ownership over the custom BottomEdgeRegions, therefore we cannot 'reuse' regions declared in other [BottomEdge](index.html) components, as those will be destroyed together with the reusing [BottomEdge](index.html) component. The following scenario only works if the *customRegion* is not used in any other regions.

``` qml
Page {
    BottomEdge {
        id: bottomEdge
        hint.text: "reusing regions"
        // put your content and setup here
        regions: [customRegion]
    }
    BottomEdgeRegion {
        id: customRegion
        from: 0.2
    }
}
```

<span id="page-as-content"></span>
### Page As Content

[BottomEdge](index.html) accepts any component to be set as content. Also it can detect whether the content has a [PageHeader](../Ubuntu.Components.PageHeader/index.html) component declared, and will inject a collapse navigation action automatically. In case the content has no header, the collapse must be provided by the content itself by calling the [collapse](index.html#collapse-method) function.

``` qml
BottomEdge {
    id: bottomEdge
    height: parent.height
    hint.text: "Sample collapse"
    contentComponent: Rectangle {
        width: bottomEdge.width
        height: bottomEdge.height
        color: Qt.rgba(0.5, 1, bottomEdge.dragProgress, 1);
        Button {
            text: "Collapse"
            onClicked: bottomEdge.collapse()
        }
    }
}
```

Alternatively you can put a [PageHeader](../Ubuntu.Components.PageHeader/index.html) component in your custom content as follows:

``` qml
BottomEdge {
    id: bottomEdge
    height: parent.height
    hint.text: "Injected collapse"
    contentComponent: Rectangle {
        width: bottomEdge.width
        height: bottomEdge.height
        color: Qt.rgba(0.5, 1, bottomEdge.dragProgress, 1);
        PageHeader {
            title: "Fancy content"
        }
    }
}
```

<span id="styling"></span>
### Styling

Similar to the other components the default style is expected to be defined in the theme's *BottomEdgeStyle*. However the style is not parented to the [BottomEdge](index.html) itself, but to the [BottomEdge](index.html)'s parent item. When loaded, the style does not fill the parent but its bottom anchor is set to the bottom of the [BottomEdge](index.html). Beside this the hint is also parented to the style instance. Custom styles are expected to implement the BottomEgdeStyle API.

**See also** [BottomEdgeRegion](../Ubuntu.Components.BottomEdgeRegion/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="activeRegion-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">activeRegion</span> : <span class="type"><a href="../Ubuntu.Components.BottomEdgeRegion/index.html">BottomEdgeRegion</a></span></p></td>
</tr>
</tbody>
</table>

Specifies the current active region.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentComponent-prop"></span><span class="name">contentComponent</span> : <span class="type"><a href="../../sdk-14.10/QtQml.Component/index.html">Component</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the component defining the content of the bottom edge. The property behaves the same way as Loader's *sourceComponent* property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentItem-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">contentItem</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the item created either from [contentUrl](index.html#contentUrl-prop) or [contentComponent](index.html#contentComponent-prop) properties.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentUrl-prop"></span><span class="name">contentUrl</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-url.html">url</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the url to the document defining the content of the bottom edge. The property behaves the same way as Loader's *source* property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dragDirection-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">dragDirection</span> : <span class="type">DragDirection</span></p></td>
</tr>
</tbody>
</table>

The property reports the current direction of the drag. The direction is flipped when the drag passes the drag threshold.

| DragDirection | Description                                                                                                                  |
|---------------|------------------------------------------------------------------------------------------------------------------------------|
| Undefined     | Default. The drag is not performed or the direction is not detected.                                                         |
| Upwards       | The drag is performed from bottom up or it passed the drag threshold from from the last point the drag was going downwards.  |
| Downwards     | The drag is performed from up to bottom or it passed the drag threshold from from the last point the drag was going upwards. |

Defaults to *Undefined*

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dragProgress-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">dragProgress</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The property specifies the proggress of the drag within \[0..1\] interval.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hint-prop"></span><span class="name">hint</span> : <span class="type"><a href="../Ubuntu.Components.BottomEdgeHint/index.html">BottomEdgeHint</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the component to display the hint for the bottom edge element.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="preloadContent-prop"></span><span class="name">preloadContent</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If set, all the contents set in the component and in regions will be loaded in the background, so it will be available before it is revealed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="regions-prop"></span><span class="name">regions</span> : <span class="type">list</span>&lt;<span class="type"><a href="../Ubuntu.Components.BottomEdgeRegion/index.html">BottomEdgeRegion</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

The property holds the custom regions configured for the [BottomEdge](index.html). The default configuration contains one region, which commits the content when reached. The defaults can be restored by setting an empty list to the property or by calling regions.clear(). See [BottomEdgeRegion](../Ubuntu.Components.BottomEdgeRegion/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="status-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">status</span> : <span class="type">Status</span></p></td>
</tr>
</tbody>
</table>

The property reports the actual state of the bottom edge. It can have the following values:

| Status    | Description                                                                                                                  |
|-----------|------------------------------------------------------------------------------------------------------------------------------|
| Hidden    | The bottom edge is hidden. This does not contain the hint states.                                                            |
| Revealed  | The Bottom edge content is revealed. The state can be reached only if the [hint](index.html#hint-prop) is in "Active" state. |
| Committed | The bottom edge content is fully exposed.                                                                                    |

**Note:** Once *Commited* status is set, no further draging is possible on the content.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="collapseCompleted-signal"></span><span class="name">collapseCompleted</span>()</p></td>
</tr>
</tbody>
</table>

Signal emitted when the content collapse is completed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="collapseStarted-signal"></span><span class="name">collapseStarted</span>()</p></td>
</tr>
</tbody>
</table>

Signal emitted when the content collapse is started.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="commitCompleted-signal"></span><span class="name">commitCompleted</span>()</p></td>
</tr>
</tbody>
</table>

Signal emitted when the content commit is completed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="commitStarted-signal"></span><span class="name">commitStarted</span>()</p></td>
</tr>
</tbody>
</table>

Signal emitted when the content commit is started.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="collapse-method"></span><span class="type">void</span> <span class="name">collapse</span>()</p></td>
</tr>
</tbody>
</table>

The function forces the bottom edge content to be hidden. Emits [collapseStarted](index.html#collapseStarted-signal) and [collapseCompleted](index.html#collapseCompleted-signal) signals to notify the start and the completion of the collapse operation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="commit-method"></span><span class="type">void</span> <span class="name">commit</span>()</p></td>
</tr>
</tbody>
</table>

The function forces the bottom edge content to be fully exposed. Emits [commitStarted](index.html#commitStarted-signal) and [commitCompleted](index.html#commitCompleted-signal) signals to notify the start and the completion of the commit operation. It is safe to call commit() multiple times.

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
