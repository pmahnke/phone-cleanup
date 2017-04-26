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
-   [Ubuntu.Components.ListItems](../Ubuntu.Components.ListItems/index.html) ›

<!-- -->

-   ItemSelector

ItemSelector
============

<span class="subtitle"></span>
ListItem displaying either a single selected value or expanded multiple choice with an optional image and subtext when not expanded, when expanding it opens a listing of all the possible values for selection with an additional option of always being expanded. If multiple choice is selected the list is expanded automatically. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components.ListItems 1.0</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="../Ubuntu.Components.ListItem/index.html">ListItem</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[colourImage](index.html#colourImage-prop)**** : bool
-   ****[containerHeight](index.html#containerHeight-prop)**** : real
-   ****[currentlyExpanded](index.html#currentlyExpanded-prop)**** : bool
-   ****[delegate](index.html#delegate-prop)**** : Component
-   ****[expanded](index.html#expanded-prop)**** : bool
-   ****[itemHeight](index.html#itemHeight-prop)**** : real
-   ****[model](index.html#model-prop)**** : var
-   ****[multiSelection](index.html#multiSelection-prop)**** : bool
-   ****[selectedIndex](index.html#selectedIndex-prop)**** : int

<span id="signals"></span>
Signals
-------

-   ****[delegateClicked](index.html#delegateClicked-signal)****(int *index*)
-   ****[expansionCompleted](index.html#expansionCompleted-signal)****()

<span id="details"></span>
Detailed Description
--------------------

Examples:

``` qml
import Ubuntu.Components.ListItems 1.0 as ListItem
Column {
    anchors.left: parent.left
    anchors.right: parent.right
    spacing: units.gu(3)
    ListItem.ItemSelector {
        text: i18n.tr("Label")
        model: [i18n.tr("Value 1"),
                i18n.tr("Value 2"),
                i18n.tr("Value 3"),
                i18n.tr("Value 4")]
    }
    ListItem.ItemSelector {
        text: i18n.tr("Label")
        expanded: true
        model: [i18n.tr("Value 1"),
                i18n.tr("Value 2"),
                i18n.tr("Value 3"),
                i18n.tr("Value 4")]
    }
    ListItem.ItemSelector {
        text: i18n.tr("Multiple Selection")
        alwaysExpanded: false
        expanded: true
        model: [i18n.tr("Value 1"),
                i18n.tr("Value 2"),
                i18n.tr("Value 3"),
                i18n.tr("Value 4")]
    }
    ListItem.ItemSelector {
        text: i18n.tr("Label")
        model: customModel
        expanded: true
        colourImage: true
        delegate: selectorDelegate
    }
    Component {
        id: selectorDelegate
        Toolkit.OptionSelectorDelegate { text: name; subText: description; iconSource: image }
    }
    ListModel {
        id: customModel
        ListElement { name: "Name 1"; description: "Description 1"; image: "images.png" }
        ListElement { name: "Name 2"; description: "Description 2"; image: "images.png" }
        ListElement { name: "Name 3"; description: "Description 3"; image: "images.png" }
        ListElement { name: "Name 4"; description: "Description 4"; image: "images.png" }
    }
    ListItem.ItemSelector {
        text: i18n.tr("Label")
        model: [i18n.tr("Value 1"),
                i18n.tr("Value 2"),
                i18n.tr("Value 3"),
                i18n.tr("Value 4"),
                i18n.tr("Value 5"),
                i18n.tr("Value 6"),
                i18n.tr("Value 7"),
                i18n.tr("Value 8")]
        containerHeight: itemHeight * 4
    }
    ListItem.ItemSelector {
        text: i18n.tr("Label")
        expanded: true
        model: [i18n.tr("Value 1"),
                i18n.tr("Value 2"),
                i18n.tr("Value 3"),
                i18n.tr("Value 4"),
                i18n.tr("Value 5"),
                i18n.tr("Value 6"),
                i18n.tr("Value 7"),
                i18n.tr("Value 8")]
        containerHeight: itemHeight * 4
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
<td><p><span id="colourImage-prop"></span><span class="name">colourImage</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Colours image according to the fieldText colour of the theme, otherwise source colour is maintained.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="containerHeight-prop"></span><span class="name">containerHeight</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Custom height for list container which allows scrolling inside the selector.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="currentlyExpanded-prop"></span><span class="name">currentlyExpanded</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Is our list currently expanded?

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="delegate-prop"></span><span class="name">delegate</span> : <span class="type"><a href="../../sdk-14.10/QtQml.Component/index.html">Component</a></span></p></td>
</tr>
</tbody>
</table>

[ListView](../../sdk-14.10/QtQuick.ListView/index.html) delegate.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="expanded-prop"></span><span class="name">expanded</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Specifies whether the list is always expanded.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemHeight-prop"></span><span class="qmlreadonly">read-only</span><span class="name">itemHeight</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Height of an individual list item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="model-prop"></span><span class="name">model</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span></p></td>
</tr>
</tbody>
</table>

The list of values that will be shown under the label text. This is a model.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="multiSelection-prop"></span><span class="name">multiSelection</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If multiple choice selection is enabled the list is always expanded.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectedIndex-prop"></span><span class="name">selectedIndex</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The index of the currently selected element in our list.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="delegateClicked-signal"></span><span class="name">delegateClicked</span>(<span class="type">int</span> <em>index</em>)</p></td>
</tr>
</tbody>
</table>

Called when delegate is clicked.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="expansionCompleted-signal"></span><span class="name">expansionCompleted</span>()</p></td>
</tr>
</tbody>
</table>

Called when the selector has finished expanding or collapsing.

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
