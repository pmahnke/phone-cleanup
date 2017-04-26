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
-   [SDK 14.10](../index.html) ›
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   Grid

Grid
====

<span class="subtitle"></span>
Positions its children in grid formation More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td><code>import QtQuick 2.2</code></td>
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
-   ****[columnSpacing](index.html#columnSpacing-prop)**** : qreal
-   ****[columns](index.html#columns-prop)**** : int
-   ****[effectiveHorizontalItemAlignment](index.html#effectiveHorizontalItemAlignment-prop)**** : enumeration
-   ****[effectiveLayoutDirection](index.html#effectiveLayoutDirection-prop)**** : enumeration
-   ****[flow](index.html#flow-prop)**** : enumeration
-   ****[horizontalItemAlignment](index.html#horizontalItemAlignment-prop)**** : enumeration
-   ****[layoutDirection](index.html#layoutDirection-prop)**** : enumeration
-   ****[move](index.html#move-prop)**** : Transition
-   ****[populate](index.html#populate-prop)**** : Transition
-   ****[rowSpacing](index.html#rowSpacing-prop)**** : qreal
-   ****[rows](index.html#rows-prop)**** : int
-   ****[spacing](index.html#spacing-prop)**** : qreal
-   ****[verticalItemAlignment](index.html#verticalItemAlignment-prop)**** : enumeration

<span id="details"></span>
Detailed Description
--------------------

Grid is a type that positions its child items in grid formation.

A Grid creates a grid of cells that is large enough to hold all of its child items, and places these items in the cells from left to right and top to bottom. Each item is positioned at the top-left corner of its cell with position (0, 0).

A Grid defaults to four columns, and creates as many rows as are necessary to fit all of its child items. The number of rows and columns can be constrained by setting the [rows](index.html#rows-prop) and [columns](index.html#columns-prop) properties.

For example, below is a Grid that contains five rectangles of various sizes:

``` qml
import QtQuick 2.0
Grid {
    columns: 3
    spacing: 2
    Rectangle { color: "red"; width: 50; height: 50 }
    Rectangle { color: "green"; width: 20; height: 50 }
    Rectangle { color: "blue"; width: 50; height: 20 }
    Rectangle { color: "cyan"; width: 50; height: 50 }
    Rectangle { color: "magenta"; width: 10; height: 10 }
}
```

The Grid automatically positions the child items in a grid formation:

![](https://developer.ubuntu.com/static/devportal_uploaded/777ec774-3d9f-4e18-9c98-b73fdd87cf25-api/apps/qml/sdk-14.10/QtQuick.Grid/images/gridLayout_example.png)

If an item within a Column is not [visible](../QtQuick.Item/index.html#visible-prop), or if it has a width or height of 0, the item will not be laid out and it will not be visible within the column. Also, since a Grid automatically positions its children, a child item within a Grid should not set its [x](../QtQuick.Item/index.html#x-prop) or [y](../QtQuick.Item/index.html#y-prop) positions or anchor itself with any of the anchor properties.

For more information on using Grid and other related positioner-types, see [Item Positioners](../QtQuick.qtquick-positioning-layouts/index.html).

**See also** [Flow](../QtQuick.Flow/index.html), [Row](../QtQuick.Row/index.html), [Column](../QtQuick.Column/index.html), [Positioner](../QtQuick.Positioner/index.html), GridLayout, and [Qt Quick Examples - Positioners](https://developer.ubuntu.com/api/apps/qml/sdk-14.10/QtQuick.positioners/).

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

**See also** [populate](index.html#populate-prop), [ViewTransition](../QtQuick.ViewTransition/index.html), and [Qt Quick Examples - Positioners](https://developer.ubuntu.com/api/apps/qml/sdk-14.10/QtQuick.positioners/).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="columnSpacing-prop"></span><span class="name">columnSpacing</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

This property holds the spacing in pixels between columns.

If this property is not set, then spacing is used for the column spacing.

By default this property is not set.

This QML property was introduced in Qt 5.0.

**See also** [rowSpacing](index.html#rowSpacing-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="columns-prop"></span><span class="name">columns</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the number of columns in the grid. The default number of columns is 4.

If the grid does not have enough items to fill the specified number of columns, some columns will be of zero width.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="effectiveHorizontalItemAlignment-prop"></span><span class="name">effectiveHorizontalItemAlignment</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Sets the horizontal and vertical alignment of items in the Grid. By default, the items are vertically aligned to the top. Horizontal alignment follows the [layoutDirection](index.html#layoutDirection-prop) of the Grid, for example when having a [layoutDirection](index.html#layoutDirection-prop) from LeftToRight, the items will be aligned on the left.

The valid values for `horizontalItemAlignment` are, `Grid.AlignLeft`, `Grid.AlignRight` and `Grid.AlignHCenter`.

The valid values for `verticalItemAlignment` are `Grid.AlignTop`, `Grid.AlignBottom` and `Grid.AlignVCenter`.

The below images show three examples of how to align items.

|                      |                                                                                                                                                                         |                                                                                                                                                                     |                                                                                                                                                                        |
|----------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|                      | ![](https://developer.ubuntu.com/static/devportal_uploaded/9451a106-22b5-4c05-8abe-197368fafee0-api/apps/qml/sdk-14.10/QtQuick.Grid/images/gridLayout_aligntopleft.png) | ![](https://developer.ubuntu.com/static/devportal_uploaded/77c27320-927c-430f-9b5f-4133066f47b7-api/apps/qml/sdk-14.10/QtQuick.Grid/images/gridLayout_aligntop.png) | ![](https://developer.ubuntu.com/static/devportal_uploaded/ef62e702-4262-4527-9965-4c977c50356b-api/apps/qml/sdk-14.10/QtQuick.Grid/images/gridLayout_aligncenter.png) |
| Horizontal alignment | AlignLeft                                                                                                                                                               | AlignHCenter                                                                                                                                                        | AlignHCenter                                                                                                                                                           |
| Vertical alignment   | AlignTop                                                                                                                                                                | AlignTop                                                                                                                                                            | AlignVCenter                                                                                                                                                           |

When mirroring the layout using either the attached property [LayoutMirroring::enabled](../QtQuick.LayoutMirroring/index.html#enabled-prop) or by setting the [layoutDirection](index.html#layoutDirection-prop), the horizontal alignment of items will be mirrored as well. However, the property `horizontalItemAlignment` will remain unchanged. To query the effective horizontal alignment of items, use the read-only property `effectiveHorizontalItemAlignment`.

**See also** [Grid::layoutDirection](index.html#layoutDirection-prop) and [LayoutMirroring](../QtQuick.LayoutMirroring/index.html).

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

This property holds the effective layout direction of the grid.

When using the attached property [LayoutMirroring::enabled](../QtQuick.LayoutMirroring/index.html#enabled-prop) for locale layouts, the visual layout direction of the grid positioner will be mirrored. However, the property [layoutDirection](index.html#layoutDirection-prop) will remain unchanged.

**See also** [Grid::layoutDirection](index.html#layoutDirection-prop) and [LayoutMirroring](../QtQuick.LayoutMirroring/index.html).

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

-   Grid.LeftToRight (default) - Items are positioned next to each other in the [layoutDirection](index.html#layoutDirection-prop), then wrapped to the next line.
-   Grid.TopToBottom - Items are positioned next to each other from top to bottom, then wrapped to the next column.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="horizontalItemAlignment-prop"></span><span class="name">horizontalItemAlignment</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Sets the horizontal and vertical alignment of items in the Grid. By default, the items are vertically aligned to the top. Horizontal alignment follows the [layoutDirection](index.html#layoutDirection-prop) of the Grid, for example when having a [layoutDirection](index.html#layoutDirection-prop) from LeftToRight, the items will be aligned on the left.

The valid values for `horizontalItemAlignment` are, `Grid.AlignLeft`, `Grid.AlignRight` and `Grid.AlignHCenter`.

The valid values for `verticalItemAlignment` are `Grid.AlignTop`, `Grid.AlignBottom` and `Grid.AlignVCenter`.

The below images show three examples of how to align items.

|                      |                                                                                                                                                                         |                                                                                                                                                                     |                                                                                                                                                                        |
|----------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|                      | ![](https://developer.ubuntu.com/static/devportal_uploaded/650ec16d-d1e6-4d87-93cb-168026a1e82d-api/apps/qml/sdk-14.10/QtQuick.Grid/images/gridLayout_aligntopleft.png) | ![](https://developer.ubuntu.com/static/devportal_uploaded/cf6399f1-e202-48eb-99e2-3d2ea0b85884-api/apps/qml/sdk-14.10/QtQuick.Grid/images/gridLayout_aligntop.png) | ![](https://developer.ubuntu.com/static/devportal_uploaded/a131e207-e0fc-46a8-be19-975b796e547d-api/apps/qml/sdk-14.10/QtQuick.Grid/images/gridLayout_aligncenter.png) |
| Horizontal alignment | AlignLeft                                                                                                                                                               | AlignHCenter                                                                                                                                                        | AlignHCenter                                                                                                                                                           |
| Vertical alignment   | AlignTop                                                                                                                                                                | AlignTop                                                                                                                                                            | AlignVCenter                                                                                                                                                           |

When mirroring the layout using either the attached property [LayoutMirroring::enabled](../QtQuick.LayoutMirroring/index.html#enabled-prop) or by setting the [layoutDirection](index.html#layoutDirection-prop), the horizontal alignment of items will be mirrored as well. However, the property `horizontalItemAlignment` will remain unchanged. To query the effective horizontal alignment of items, use the read-only property `effectiveHorizontalItemAlignment`.

**See also** [Grid::layoutDirection](index.html#layoutDirection-prop) and [LayoutMirroring](../QtQuick.LayoutMirroring/index.html).

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

-   Qt.LeftToRight (default) - Items are positioned from the top to bottom, and left to right. The flow direction is dependent on the [Grid::flow](index.html#flow-prop) property.
-   Qt.RightToLeft - Items are positioned from the top to bottom, and right to left. The flow direction is dependent on the [Grid::flow](index.html#flow-prop) property.

**See also** [Flow::layoutDirection](../QtQuick.Flow/index.html#layoutDirection-prop), [Row::layoutDirection](../QtQuick.Row/index.html#layoutDirection-prop), and [Qt Quick Examples - Right to Left](https://developer.ubuntu.com/api/apps/qml/sdk-14.10/QtQuick.righttoleft/).

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

**See also** [add](index.html#add-prop), [ViewTransition](../QtQuick.ViewTransition/index.html), and [Qt Quick Examples - Positioners](https://developer.ubuntu.com/api/apps/qml/sdk-14.10/QtQuick.positioners/).

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

**See also** [add](index.html#add-prop), [ViewTransition](../QtQuick.ViewTransition/index.html), and [Qt Quick Examples - Positioners](https://developer.ubuntu.com/api/apps/qml/sdk-14.10/QtQuick.positioners/).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="rowSpacing-prop"></span><span class="name">rowSpacing</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

This property holds the spacing in pixels between rows.

If this property is not set, then spacing is used for the row spacing.

By default this property is not set.

This QML property was introduced in Qt 5.0.

**See also** [columnSpacing](index.html#columnSpacing-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="rows-prop"></span><span class="name">rows</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the number of rows in the grid.

If the grid does not have enough items to fill the specified number of rows, some rows will be of zero width.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="spacing-prop"></span><span class="name">spacing</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

The spacing is the amount in pixels left empty between adjacent items. The amount of spacing applied will be the same in the horizontal and vertical directions. The default spacing is 0.

The below example places a Grid containing a red, a blue and a green rectangle on a gray background. The area the grid positioner occupies is colored white. The positioner on the left has the no spacing (the default), and the positioner on the right has a spacing of 6.

![](https://developer.ubuntu.com/static/devportal_uploaded/3bbce412-9af7-459f-960e-fde04bcd655d-api/apps/qml/sdk-14.10/QtQuick.Grid/images/qml-grid-no-spacing.png) ![](https://developer.ubuntu.com/static/devportal_uploaded/560f05ca-c715-4225-8574-c398a9641090-api/apps/qml/sdk-14.10/QtQuick.Grid/images/qml-grid-spacing.png)

**See also** [rows](index.html#rows-prop) and [columns](index.html#columns-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="verticalItemAlignment-prop"></span><span class="name">verticalItemAlignment</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Sets the horizontal and vertical alignment of items in the Grid. By default, the items are vertically aligned to the top. Horizontal alignment follows the [layoutDirection](index.html#layoutDirection-prop) of the Grid, for example when having a [layoutDirection](index.html#layoutDirection-prop) from LeftToRight, the items will be aligned on the left.

The valid values for `horizontalItemAlignment` are, `Grid.AlignLeft`, `Grid.AlignRight` and `Grid.AlignHCenter`.

The valid values for `verticalItemAlignment` are `Grid.AlignTop`, `Grid.AlignBottom` and `Grid.AlignVCenter`.

The below images show three examples of how to align items.

|                      |                                                                                                                                                                         |                                                                                                                                                                     |                                                                                                                                                                        |
|----------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|                      | ![](https://developer.ubuntu.com/static/devportal_uploaded/3e9c10d0-0984-44d4-868e-c73567481963-api/apps/qml/sdk-14.10/QtQuick.Grid/images/gridLayout_aligntopleft.png) | ![](https://developer.ubuntu.com/static/devportal_uploaded/3b3c7978-bfe3-434e-b981-c5b4501b61bf-api/apps/qml/sdk-14.10/QtQuick.Grid/images/gridLayout_aligntop.png) | ![](https://developer.ubuntu.com/static/devportal_uploaded/ea2c0b97-f9d5-4e76-a424-c343e985620c-api/apps/qml/sdk-14.10/QtQuick.Grid/images/gridLayout_aligncenter.png) |
| Horizontal alignment | AlignLeft                                                                                                                                                               | AlignHCenter                                                                                                                                                        | AlignHCenter                                                                                                                                                           |
| Vertical alignment   | AlignTop                                                                                                                                                                | AlignTop                                                                                                                                                            | AlignVCenter                                                                                                                                                           |

When mirroring the layout using either the attached property [LayoutMirroring::enabled](../QtQuick.LayoutMirroring/index.html#enabled-prop) or by setting the [layoutDirection](index.html#layoutDirection-prop), the horizontal alignment of items will be mirrored as well. However, the property `horizontalItemAlignment` will remain unchanged. To query the effective horizontal alignment of items, use the read-only property `effectiveHorizontalItemAlignment`.

**See also** [Grid::layoutDirection](index.html#layoutDirection-prop) and [LayoutMirroring](../QtQuick.LayoutMirroring/index.html).

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
