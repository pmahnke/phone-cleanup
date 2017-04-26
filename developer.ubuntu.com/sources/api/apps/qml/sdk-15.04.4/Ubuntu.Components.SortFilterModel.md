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
-   [Ubuntu.Components](../Ubuntu.Components/index.html) ›

<!-- -->

-   SortFilterModel

SortFilterModel
===============

<span class="subtitle"></span>
SortFilterModel sorts and filters rows from an existing model. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

<span id="properties"></span>
Properties
----------

-   ****[filter.pattern](index.html#filter.pattern-prop)**** : string
-   ****[filter.property](index.html#filter.property-prop)**** : string
-   ****[model](index.html#model-prop)**** : QAbstractItemModel
-   ****[sort.order](index.html#sort.order-prop)**** : string
-   ****[sort.property](index.html#sort.property-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

The [SortFilterModel](index.html) takes an existing model such as a [ListModel](../../sdk-14.10/QtQuick.qtquick-modelviewsdata-modelview/index.html#listmodel) or any [QAbstractItemModel](../../sdk-14.10/QtQuick.qtquick-modelviewsdata-cppmodels/index.html#qabstractitemmodel) implementation. The original rows and role names show up in the [SortFilterModel](index.html) with two basic differences. For one if [sort.property](index.html#sort.property-prop) is set all rows will be sorted. Further more if [filter.property](index.html#filter.property-prop) is set only rows matching the filter will be in the model.

Example usage:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
import Ubuntu.Components.ListItems 1.1
MainView {
    width: units.gu(80)
    height: units.gu(40)
    ListModel {
        id: movies
        ListElement {
            title: "Esign"
            producer: "Chris Larkee"
        }
        ListElement {
            title: "Elephants Dream"
            producer: "Blender"
        }
        ListElement {
            title: "Big Buck Bunny"
            producer: "Blender"
        }
    }
    SortFilterModel {
        id: sortedMovies
        model: movies
        sort.property: "title"
        sort.order: Qt.DescendingOrder
        // case insensitive sorting
        sortCaseSensitivity: Qt.CaseInsensitive
        filter.property: "producer"
        filter.pattern: /blender/
    }
    ListView {
        model: sortedMovies
        anchors.fill: parent
        delegate: Subtitled {
            text: title
            subText: producer
        }
        section.delegate: ListItem.Header { text: i18n.tr(section) }
        section.property: "title"
        section.criteria: ViewSection.FirstCharacter
    }
}
```

Pay attention to the differences between the original model and the result:

-   Big Buck Bunny will be the first row, because it's sorted by title
-   Esign won't be visible, because it's from the wrong producer

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="filter.pattern-prop"></span><span class="name">filter.pattern</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The pattern all rows must match, if [filter.property](index.html#filter.property-prop) is set.

Some examples:

-   /possible/ matches anywhere in a word, so both "impossible" and "possible".
-   /^sign/ matches "sign". But not "assignment" because ^ means start.
-   /vest$/ matches "safety vest" and "vest" but not "vested".

For more advanced uses it's recommended to read up on Javascript regular expressions.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="filter.property-prop"></span><span class="name">filter.property</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

If set to a valid role name, only rows matching [filter.pattern](index.html#filter.pattern-prop) will be in the model.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="model-prop"></span><span class="name">model</span> : <span class="type">QAbstractItemModel</span></p></td>
</tr>
</tbody>
</table>

The source model to sort and/ or filter.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sort.order-prop"></span><span class="name">sort.order</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The order, if [sort.property](index.html#sort.property-prop) is set. Qt::AscendingOrder sorts results from A to Z or 0 to 9. Qt::DescendingOrder sorts results from Z to A or 9 to 0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sort.property-prop"></span><span class="name">sort.property</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

If set to a valid role name, all rows will be sorted according to [sort.order](index.html#sort.order-prop).

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
