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
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   Flow

Flow
====

<span class="subtitle"></span>
Positions its children side by side, wrapping as necessary More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import QtQuick 2.4</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="../QtQuick.Item/index.html">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[add](index.html#add-prop)**** : Transition
-   ****[effectiveLayoutDirection](index.html#effectiveLayoutDirection-prop)**** : enumeration
-   ****[flow](index.html#flow-prop)**** : enumeration
-   ****[layoutDirection](index.html#layoutDirection-prop)**** : enumeration
-   ****[move](index.html#move-prop)**** : Transition
-   ****[populate](index.html#populate-prop)**** : Transition
-   ****[spacing](index.html#spacing-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

The Flow item positions its child items like words on a page, wrapping them to create rows or columns of items.

Below is a Flow that contains various [Text](../QtQuick.qtquick-releasenotes/index.html#text) items:

``` qml
    Flow {
        anchors.fill: parent
        anchors.margins: 4
        spacing: 10
        Text { text: "Text"; font.pixelSize: 40 }
        Text { text: "items"; font.pixelSize: 40 }
        Text { text: "flowing"; font.pixelSize: 40 }
        Text { text: "inside"; font.pixelSize: 40 }
        Text { text: "a"; font.pixelSize: 40 }
        Text { text: "Flow"; font.pixelSize: 40 }
        Text { text: "item"; font.pixelSize: 40 }
    }
```

The Flow item automatically positions the child [Text](../QtQuick.qtquick-releasenotes/index.html#text) items side by side, wrapping as necessary:

![](https://developer.ubuntu.com/static/devportal_uploaded/63024109-72a2-4232-8d40-b24b8d82b1d3-api/apps/qml/sdk-15.04.6/QtQuick.Flow/images/qml-flow-snippet.png)

If an item within a Flow is not [visible](../QtQuick.Item/index.html#visible-prop), or if it has a width or height of 0, the item will not be laid out and it will not be visible within the Flow. Also, since a Flow automatically positions its children, a child item within a Flow should not set its [x](../QtQuick.Item/index.html#x-prop) or [y](../QtQuick.Item/index.html#y-prop) positions or anchor itself with any of the [anchor](../QtQuick.Item/index.html#anchors-prop) properties.

For more information on using Flow and other related positioner-types, see [Item Positioners](../QtQuick.qtquick-positioning-layouts/index.html).

**See also** [Column](../QtQuick.qtquick-positioning-layouts/index.html#column), [Row](../QtQuick.qtquick-positioning-layouts/index.html#row), [Grid](../QtQuick.qtquick-positioning-layouts/index.html#grid), [Positioner](../QtQuick.Positioner/index.html), and [Qt Quick Examples - Positioners](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.6/QtQuick.positioners/).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="add-prop"></span><span class="name">add</span> : <span class="type"><a href="../QtQuick.Transition/index.html">Transition</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the transition to be run for items that are added to this positioner. For a positioner, this applies to:

-   Items that are created or reparented as a child of the positioner after the positioner has been created
-   Child items that change their [Item::visible](../QtQuick.Item/index.html#visible-prop) property from false to true, and thus are now visible

The transition can use the [ViewTransition](../QtQuick.ViewTransition/index.html) property to access more details about the item that is being added. See the [ViewTransition](../QtQuick.ViewTransition/index.html) documentation for more details and examples on using these transitions.

**Note:** This transition is not applied to the items that already part of the positioner at the time of its creation. In this case, the [populate](index.html#populate-prop) transition is applied instead.

**See also** [populate](index.html#populate-prop), [ViewTransition](../QtQuick.ViewTransition/index.html), and [Qt Quick Examples - Positioners](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.6/QtQuick.positioners/).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="effectiveLayoutDirection-prop"></span><span class="name">effectiveLayoutDirection</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the effective layout direction of the flow.

When using the attached property [LayoutMirroring::enabled](../QtQuick.LayoutMirroring/index.html#enabled-prop) for locale layouts, the visual layout direction of the grid positioner will be mirrored. However, the property [layoutDirection](index.html#layoutDirection-prop) will remain unchanged.

**See also** [Flow::layoutDirection](index.html#layoutDirection-prop) and [LayoutMirroring](../QtQuick.LayoutMirroring/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flow-prop"></span><span class="name">flow</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the flow of the layout.

Possible values are:

-   Flow.LeftToRight (default) - Items are positioned next to to each other according to the [layoutDirection](index.html#layoutDirection-prop) until the width of the Flow is exceeded, then wrapped to the next line.
-   Flow.TopToBottom - Items are positioned next to each other from top to bottom until the height of the Flow is exceeded, then wrapped to the next column.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="layoutDirection-prop"></span><span class="name">layoutDirection</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the layout direction of the layout.

Possible values are:

-   Qt.LeftToRight (default) - Items are positioned from the top to bottom, and left to right. The flow direction is dependent on the [Flow::flow](index.html#flow-prop) property.
-   Qt.RightToLeft - Items are positioned from the top to bottom, and right to left. The flow direction is dependent on the [Flow::flow](index.html#flow-prop) property.

**See also** [Grid::layoutDirection](../QtQuick.Grid/index.html#layoutDirection-prop), [Row::layoutDirection](../QtQuick.Row/index.html#layoutDirection-prop), and [Qt Quick Examples - Right to Left](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.6/QtQuick.righttoleft/).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="move-prop"></span><span class="name">move</span> : <span class="type"><a href="../QtQuick.Transition/index.html">Transition</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the transition to run for items that have moved within the positioner. For a positioner, this applies to:

-   Child items that move when they are displaced due to the addition, removal or rearrangement of other items in the positioner
-   Child items that are repositioned due to the resizing of other items in the positioner

The transition can use the [ViewTransition](../QtQuick.ViewTransition/index.html) property to access more details about the item that is being moved. Note, however, that for this move transition, the [ViewTransition](../QtQuick.ViewTransition/index.html).targetIndexes and [ViewTransition](../QtQuick.ViewTransition/index.html).targetItems lists are only set when this transition is triggered by the addition of other items in the positioner; in other cases, these lists will be empty. See the [ViewTransition](../QtQuick.ViewTransition/index.html) documentation for more details and examples on using these transitions.

**Note:** In Qt Quick 1, this transition was applied to all items that were part of the positioner at the time of its creation. From [QtQuick 2](../QtQuick.qtquick-index/index.html) onwards, positioners apply the [populate](index.html#populate-prop) transition to these items instead.

**See also** [add](index.html#add-prop), [ViewTransition](../QtQuick.ViewTransition/index.html), and [Qt Quick Examples - Positioners](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.6/QtQuick.positioners/).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="populate-prop"></span><span class="name">populate</span> : <span class="type"><a href="../QtQuick.Transition/index.html">Transition</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the transition to be run for items that are part of this positioner at the time of its creation. The transition is run when the positioner is first created.

The transition can use the [ViewTransition](../QtQuick.ViewTransition/index.html) property to access more details about the item that is being added. See the [ViewTransition](../QtQuick.ViewTransition/index.html) documentation for more details and examples on using these transitions.

**See also** [add](index.html#add-prop), [ViewTransition](../QtQuick.ViewTransition/index.html), and [Qt Quick Examples - Positioners](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.6/QtQuick.positioners/).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="spacing-prop"></span><span class="name">spacing</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

spacing is the amount in pixels left empty between each adjacent item, and defaults to 0.

**See also** [Grid::spacing](../QtQuick.Grid/index.html#spacing-prop).

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
