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
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   Row

Row
===

<span class="subtitle"></span>
Positions its children in a row More...

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
-   ****[layoutDirection](index.html#layoutDirection-prop)**** : enumeration
-   ****[move](index.html#move-prop)**** : Transition
-   ****[populate](index.html#populate-prop)**** : Transition
-   ****[spacing](index.html#spacing-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

Row is a type that positions its child items along a single row. It can be used as a convenient way to horizontally position a series of items without using [anchors](../QtQuick.qtquick-positioning-anchors/index.html).

Below is a Row that contains three rectangles of various sizes:

``` qml
import QtQuick 2.0
Row {
    spacing: 2
    Rectangle { color: "red"; width: 50; height: 50 }
    Rectangle { color: "green"; width: 20; height: 50 }
    Rectangle { color: "blue"; width: 50; height: 20 }
}
```

The Row automatically positions these items in a horizontal formation, like this:

![](https://developer.ubuntu.com/static/devportal_uploaded/138b9410-c4fc-4fd0-b163-f3239784bcf5-api/apps/qml/sdk-15.04/QtQuick.Row/images/horizontalpositioner_example.png)

If an item within a Row is not [visible](../QtQuick.Item/index.html#visible-prop), or if it has a width or height of 0, the item will not be laid out and it will not be visible within the row. Also, since a Row automatically positions its children horizontally, a child item within a Row should not set its [x](../QtQuick.Item/index.html#x-prop) position or horizontally anchor itself using the [left](../QtQuick.Item/index.html#anchors.left-prop), [right](../QtQuick.Item/index.html#anchors.right-prop), [anchors.horizontalCenter](../QtQuick.Item/index.html#anchors.horizontalCenter-prop), [fill](../QtQuick.Item/index.html#anchors.fill-prop) or [centerIn](../QtQuick.Item/index.html#anchors.centerIn-prop) anchors. If you need to perform these actions, consider positioning the items without the use of a Row.

Note that items in a Row can use the [Positioner](../QtQuick.Positioner/index.html) attached property to access more information about its position within the Row.

For more information on using Row and other related positioner-types, see [Item Positioners](../QtQuick.qtquick-positioning-layouts/index.html).

**See also** [Column](../QtQuick.qtquick-positioning-layouts/index.html#column), [Grid](../QtQuick.qtquick-positioning-layouts/index.html#grid), [Flow](../QtQuick.qtquick-positioning-layouts/index.html#flow), [Positioner](../QtQuick.Positioner/index.html), RowLayout, and [Qt Quick Examples - Positioners](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.positioners/).

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

**See also** [populate](index.html#populate-prop), [ViewTransition](../QtQuick.ViewTransition/index.html), and [Qt Quick Examples - Positioners](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.positioners/).

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

This property holds the effective layout direction of the row.

When using the attached property [LayoutMirroring::enabled](../QtQuick.LayoutMirroring/index.html#enabled-prop) for locale layouts, the visual layout direction of the row positioner will be mirrored. However, the property [layoutDirection](index.html#layoutDirection-prop) will remain unchanged.

**See also** [Row::layoutDirection](index.html#layoutDirection-prop) and [LayoutMirroring](../QtQuick.LayoutMirroring/index.html).

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

This property holds the layoutDirection of the row.

Possible values:

-   Qt.LeftToRight (default) - Items are laid out from left to right. If the width of the row is explicitly set, the left anchor remains to the left of the row.
-   Qt.RightToLeft - Items are laid out from right to left. If the width of the row is explicitly set, the right anchor remains to the right of the row.

**See also** [Grid::layoutDirection](../QtQuick.Grid/index.html#layoutDirection-prop), [Flow::layoutDirection](../QtQuick.Flow/index.html#layoutDirection-prop), and [Qt Quick Examples - Right to Left](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.righttoleft/).

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

**See also** [add](index.html#add-prop), [ViewTransition](../QtQuick.ViewTransition/index.html), and [Qt Quick Examples - Positioners](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.positioners/).

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

**See also** [add](index.html#add-prop), [ViewTransition](../QtQuick.ViewTransition/index.html), and [Qt Quick Examples - Positioners](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.positioners/).

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

The spacing is the amount in pixels left empty between adjacent items. The default spacing is 0.

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
