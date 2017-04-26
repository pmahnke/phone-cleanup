---
Title: QtQuick.Grid
---
        
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
<td><p><a href="QtQuick.Item.md">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[add](#add-prop)**** : Transition
-   ****[columnSpacing](#columnSpacing-prop)**** : qreal
-   ****[columns](#columns-prop)**** : int
-   ****[effectiveHorizontalItemAlignment](#effectiveHorizontalItemAlignment-prop)**** : enumeration
-   ****[effectiveLayoutDirection](#effectiveLayoutDirection-prop)**** : enumeration
-   ****[flow](#flow-prop)**** : enumeration
-   ****[horizontalItemAlignment](#horizontalItemAlignment-prop)**** : enumeration
-   ****[layoutDirection](#layoutDirection-prop)**** : enumeration
-   ****[move](#move-prop)**** : Transition
-   ****[populate](#populate-prop)**** : Transition
-   ****[rowSpacing](#rowSpacing-prop)**** : qreal
-   ****[rows](#rows-prop)**** : int
-   ****[spacing](#spacing-prop)**** : qreal
-   ****[verticalItemAlignment](#verticalItemAlignment-prop)**** : enumeration

<span id="details"></span>
Detailed Description
--------------------

Grid is a type that positions its child items in grid formation.

A Grid creates a grid of cells that is large enough to hold all of its child items, and places these items in the cells from left to right and top to bottom. Each item is positioned at the top-left corner of its cell with position (0, 0).

A Grid defaults to four columns, and creates as many rows as are necessary to fit all of its child items. The number of rows and columns can be constrained by setting the [rows](#rows-prop) and [columns](#columns-prop) properties.

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

If an item within a Column is not [visible](../QtQuick.Item.md#visible-prop), or if it has a width or height of 0, the item will not be laid out and it will not be visible within the column. Also, since a Grid automatically positions its children, a child item within a Grid should not set its [x](../QtQuick.Item.md#x-prop) or [y](../QtQuick.Item.md#y-prop) positions or anchor itself with any of the anchor properties.

For more information on using Grid and other related positioner-types, see [Item Positioners](../QtQuick.qtquick-positioning-layouts.md).

**See also** [Flow](../QtQuick.Flow.md), [Row](../QtQuick.Row.md), [Column](../QtQuick.Column.md), [Positioner](../QtQuick.Positioner.md), GridLayout, and [Qt Quick Examples - Positioners](https://developer.ubuntu.comapps/qml/sdk-14.10/QtQuick.positioners/).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="add-prop"></span><span class="name">add</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the transition to be run for items that are added to this positioner. For a positioner, this applies to:

-   Items that are created or reparented as a child of the positioner after the positioner has been created
-   Child items that change their [Item::visible](../QtQuick.Item.md#visible-prop) property from false to true, and thus are now visible

The transition can use the [ViewTransition](../QtQuick.ViewTransition.md) property to access more details about the item that is being added. See the [ViewTransition](../QtQuick.ViewTransition.md) documentation for more details and examples on using these transitions.

**Note:** This transition is not applied to the items that already part of the positioner at the time of its creation. In this case, the [populate](#populate-prop) transition is applied instead.

**See also** [populate](#populate-prop), [ViewTransition](../QtQuick.ViewTransition.md), and [Qt Quick Examples - Positioners](https://developer.ubuntu.comapps/qml/sdk-14.10/QtQuick.positioners/).

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

**See also** [rowSpacing](#rowSpacing-prop).

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

Sets the horizontal and vertical alignment of items in the Grid. By default, the items are vertically aligned to the top. Horizontal alignment follows the [layoutDirection](#layoutDirection-prop) of the Grid, for example when having a [layoutDirection](#layoutDirection-prop) from LeftToRight, the items will be aligned on the left.

The valid values for `horizontalItemAlignment` are, `Grid.AlignLeft`, `Grid.AlignRight` and `Grid.AlignHCenter`.

The valid values for `verticalItemAlignment` are `Grid.AlignTop`, `Grid.AlignBottom` and `Grid.AlignVCenter`.

The below images show three examples of how to align items.

|                      |                                                                                                                                                                         |                                                                                                                                                                     |                                                                                                                                                                        |
|----------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|                      | ![](https://developer.ubuntu.com/static/devportal_uploaded/9451a106-22b5-4c05-8abe-197368fafee0-api/apps/qml/sdk-14.10/QtQuick.Grid/images/gridLayout_aligntopleft.png) | ![](https://developer.ubuntu.com/static/devportal_uploaded/77c27320-927c-430f-9b5f-4133066f47b7-api/apps/qml/sdk-14.10/QtQuick.Grid/images/gridLayout_aligntop.png) | ![](https://developer.ubuntu.com/static/devportal_uploaded/ef62e702-4262-4527-9965-4c977c50356b-api/apps/qml/sdk-14.10/QtQuick.Grid/images/gridLayout_aligncenter.png) |
| Horizontal alignment | AlignLeft                                                                                                                                                               | AlignHCenter                                                                                                                                                        | AlignHCenter                                                                                                                                                           |
| Vertical alignment   | AlignTop                                                                                                                                                                | AlignTop                                                                                                                                                            | AlignVCenter                                                                                                                                                           |

When mirroring the layout using either the attached property [LayoutMirroring::enabled](../QtQuick.LayoutMirroring.md#enabled-prop) or by setting the [layoutDirection](#layoutDirection-prop), the horizontal alignment of items will be mirrored as well. However, the property `horizontalItemAlignment` will remain unchanged. To query the effective horizontal alignment of items, use the read-only property `effectiveHorizontalItemAlignment`.

**See also** [Grid::layoutDirection](#layoutDirection-prop) and [LayoutMirroring](../QtQuick.LayoutMirroring.md).

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

When using the attached property [LayoutMirroring::enabled](../QtQuick.LayoutMirroring.md#enabled-prop) for locale layouts, the visual layout direction of the grid positioner will be mirrored. However, the property [layoutDirection](#layoutDirection-prop) will remain unchanged.

**See also** [Grid::layoutDirection](#layoutDirection-prop) and [LayoutMirroring](../QtQuick.LayoutMirroring.md).

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

-   Grid.LeftToRight (default) - Items are positioned next to each other in the [layoutDirection](#layoutDirection-prop), then wrapped to the next line.
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

Sets the horizontal and vertical alignment of items in the Grid. By default, the items are vertically aligned to the top. Horizontal alignment follows the [layoutDirection](#layoutDirection-prop) of the Grid, for example when having a [layoutDirection](#layoutDirection-prop) from LeftToRight, the items will be aligned on the left.

The valid values for `horizontalItemAlignment` are, `Grid.AlignLeft`, `Grid.AlignRight` and `Grid.AlignHCenter`.

The valid values for `verticalItemAlignment` are `Grid.AlignTop`, `Grid.AlignBottom` and `Grid.AlignVCenter`.

The below images show three examples of how to align items.

|                      |                                                                                                                                                                         |                                                                                                                                                                     |                                                                                                                                                                        |
|----------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|                      | ![](https://developer.ubuntu.com/static/devportal_uploaded/650ec16d-d1e6-4d87-93cb-168026a1e82d-api/apps/qml/sdk-14.10/QtQuick.Grid/images/gridLayout_aligntopleft.png) | ![](https://developer.ubuntu.com/static/devportal_uploaded/cf6399f1-e202-48eb-99e2-3d2ea0b85884-api/apps/qml/sdk-14.10/QtQuick.Grid/images/gridLayout_aligntop.png) | ![](https://developer.ubuntu.com/static/devportal_uploaded/a131e207-e0fc-46a8-be19-975b796e547d-api/apps/qml/sdk-14.10/QtQuick.Grid/images/gridLayout_aligncenter.png) |
| Horizontal alignment | AlignLeft                                                                                                                                                               | AlignHCenter                                                                                                                                                        | AlignHCenter                                                                                                                                                           |
| Vertical alignment   | AlignTop                                                                                                                                                                | AlignTop                                                                                                                                                            | AlignVCenter                                                                                                                                                           |

When mirroring the layout using either the attached property [LayoutMirroring::enabled](../QtQuick.LayoutMirroring.md#enabled-prop) or by setting the [layoutDirection](#layoutDirection-prop), the horizontal alignment of items will be mirrored as well. However, the property `horizontalItemAlignment` will remain unchanged. To query the effective horizontal alignment of items, use the read-only property `effectiveHorizontalItemAlignment`.

**See also** [Grid::layoutDirection](#layoutDirection-prop) and [LayoutMirroring](../QtQuick.LayoutMirroring.md).

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

-   Qt.LeftToRight (default) - Items are positioned from the top to bottom, and left to right. The flow direction is dependent on the [Grid::flow](#flow-prop) property.
-   Qt.RightToLeft - Items are positioned from the top to bottom, and right to left. The flow direction is dependent on the [Grid::flow](#flow-prop) property.

**See also** [Flow::layoutDirection](../QtQuick.Flow.md#layoutDirection-prop), [Row::layoutDirection](../QtQuick.Row.md#layoutDirection-prop), and [Qt Quick Examples - Right to Left](https://developer.ubuntu.comapps/qml/sdk-14.10/QtQuick.righttoleft/).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="move-prop"></span><span class="name">move</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the transition to run for items that have moved within the positioner. For a positioner, this applies to:

-   Child items that move when they are displaced due to the addition, removal or rearrangement of other items in the positioner
-   Child items that are repositioned due to the resizing of other items in the positioner

The transition can use the [ViewTransition](../QtQuick.ViewTransition.md) property to access more details about the item that is being moved. Note, however, that for this move transition, the [ViewTransition](../QtQuick.ViewTransition.md).targetIndexes and [ViewTransition](../QtQuick.ViewTransition.md).targetItems lists are only set when this transition is triggered by the addition of other items in the positioner; in other cases, these lists will be empty. See the [ViewTransition](../QtQuick.ViewTransition.md) documentation for more details and examples on using these transitions.

**Note:** In Qt Quick 1, this transition was applied to all items that were part of the positioner at the time of its creation. From [QtQuick 2](../QtQuick.qtquick-index.md) onwards, positioners apply the [populate](#populate-prop) transition to these items instead.

**See also** [add](#add-prop), [ViewTransition](../QtQuick.ViewTransition.md), and [Qt Quick Examples - Positioners](https://developer.ubuntu.comapps/qml/sdk-14.10/QtQuick.positioners/).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="populate-prop"></span><span class="name">populate</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the transition to be run for items that are part of this positioner at the time of its creation. The transition is run when the positioner is first created.

The transition can use the [ViewTransition](../QtQuick.ViewTransition.md) property to access more details about the item that is being added. See the [ViewTransition](../QtQuick.ViewTransition.md) documentation for more details and examples on using these transitions.

**See also** [add](#add-prop), [ViewTransition](../QtQuick.ViewTransition.md), and [Qt Quick Examples - Positioners](https://developer.ubuntu.comapps/qml/sdk-14.10/QtQuick.positioners/).

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

**See also** [columnSpacing](#columnSpacing-prop).

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

**See also** [rows](#rows-prop) and [columns](#columns-prop).

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

Sets the horizontal and vertical alignment of items in the Grid. By default, the items are vertically aligned to the top. Horizontal alignment follows the [layoutDirection](#layoutDirection-prop) of the Grid, for example when having a [layoutDirection](#layoutDirection-prop) from LeftToRight, the items will be aligned on the left.

The valid values for `horizontalItemAlignment` are, `Grid.AlignLeft`, `Grid.AlignRight` and `Grid.AlignHCenter`.

The valid values for `verticalItemAlignment` are `Grid.AlignTop`, `Grid.AlignBottom` and `Grid.AlignVCenter`.

The below images show three examples of how to align items.

|                      |                                                                                                                                                                         |                                                                                                                                                                     |                                                                                                                                                                        |
|----------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|                      | ![](https://developer.ubuntu.com/static/devportal_uploaded/3e9c10d0-0984-44d4-868e-c73567481963-api/apps/qml/sdk-14.10/QtQuick.Grid/images/gridLayout_aligntopleft.png) | ![](https://developer.ubuntu.com/static/devportal_uploaded/3b3c7978-bfe3-434e-b981-c5b4501b61bf-api/apps/qml/sdk-14.10/QtQuick.Grid/images/gridLayout_aligntop.png) | ![](https://developer.ubuntu.com/static/devportal_uploaded/ea2c0b97-f9d5-4e76-a424-c343e985620c-api/apps/qml/sdk-14.10/QtQuick.Grid/images/gridLayout_aligncenter.png) |
| Horizontal alignment | AlignLeft                                                                                                                                                               | AlignHCenter                                                                                                                                                        | AlignHCenter                                                                                                                                                           |
| Vertical alignment   | AlignTop                                                                                                                                                                | AlignTop                                                                                                                                                            | AlignVCenter                                                                                                                                                           |

When mirroring the layout using either the attached property [LayoutMirroring::enabled](../QtQuick.LayoutMirroring.md#enabled-prop) or by setting the [layoutDirection](#layoutDirection-prop), the horizontal alignment of items will be mirrored as well. However, the property `horizontalItemAlignment` will remain unchanged. To query the effective horizontal alignment of items, use the read-only property `effectiveHorizontalItemAlignment`.

**See also** [Grid::layoutDirection](#layoutDirection-prop) and [LayoutMirroring](../QtQuick.LayoutMirroring.md).

