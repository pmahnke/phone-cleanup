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

-   GridView

GridView
========

<span class="subtitle"></span>
For specifying a grid view of items provided by a model More...

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
<td><p><a href="../QtQuick.Flickable/index.html">Flickable</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[add](index.html#add-prop)**** : Transition
-   ****[addDisplaced](index.html#addDisplaced-prop)**** : Transition
-   ****[cacheBuffer](index.html#cacheBuffer-prop)**** : int
-   ****[cellHeight](index.html#cellHeight-prop)**** : real
-   ****[cellWidth](index.html#cellWidth-prop)**** : real
-   ****[count](index.html#count-prop)**** : int
-   ****[currentIndex](index.html#currentIndex-prop)**** : int
-   ****[currentItem](index.html#currentItem-prop)**** : Item
-   ****[delegate](index.html#delegate-prop)**** : Component
-   ****[displaced](index.html#displaced-prop)**** : Transition
-   ****[displayMarginBeginning](index.html#displayMarginBeginning-prop)**** : int
-   ****[displayMarginEnd](index.html#displayMarginEnd-prop)**** : int
-   ****[effectiveLayoutDirection](index.html#effectiveLayoutDirection-prop)**** : enumeration
-   ****[flow](index.html#flow-prop)**** : enumeration
-   ****[footer](index.html#footer-prop)**** : Component
-   ****[footerItem](index.html#footerItem-prop)**** : Item
-   ****[header](index.html#header-prop)**** : Component
-   ****[headerItem](index.html#headerItem-prop)**** : Item
-   ****[highlight](index.html#highlight-prop)**** : Component
-   ****[highlightFollowsCurrentItem](index.html#highlightFollowsCurrentItem-prop)**** : bool
-   ****[highlightItem](index.html#highlightItem-prop)**** : Item
-   ****[highlightMoveDuration](index.html#highlightMoveDuration-prop)**** : int
-   ****[highlightRangeMode](index.html#highlightRangeMode-prop)**** : enumeration
-   ****[keyNavigationWraps](index.html#keyNavigationWraps-prop)**** : bool
-   ****[layoutDirection](index.html#layoutDirection-prop)**** : enumeration
-   ****[model](index.html#model-prop)**** : model
-   ****[move](index.html#move-prop)**** : Transition
-   ****[moveDisplaced](index.html#moveDisplaced-prop)**** : Transition
-   ****[populate](index.html#populate-prop)**** : Transition
-   ****[preferredHighlightBegin](index.html#preferredHighlightBegin-prop)**** : real
-   ****[preferredHighlightEnd](index.html#preferredHighlightEnd-prop)**** : real
-   ****[remove](index.html#remove-prop)**** : Transition
-   ****[removeDisplaced](index.html#removeDisplaced-prop)**** : Transition
-   ****[snapMode](index.html#snapMode-prop)**** : enumeration
-   ****[verticalLayoutDirection](index.html#verticalLayoutDirection-prop)**** : enumeration

<span id="attached-properties"></span>
Attached Properties
-------------------

-   ****[delayRemove](index.html#delayRemove-prop)**** : bool
-   ****[isCurrentItem](index.html#isCurrentItem-prop)**** : bool
-   ****[view](index.html#view-prop)**** : GridView

<span id="attached-signals"></span>
Attached Signals
----------------

-   ****[add](index.html#add-signal)****()
-   ****[remove](index.html#remove-signal)****()

<span id="methods"></span>
Methods
-------

-   ****[forceLayout](index.html#forceLayout-method)****()
-   int ****[indexAt](index.html#indexAt-method)****(int *x*, int *y*)
-   Item ****[itemAt](index.html#itemAt-method)****(int *x*, int *y*)
-   ****[moveCurrentIndexDown](index.html#moveCurrentIndexDown-method)****()
-   ****[moveCurrentIndexLeft](index.html#moveCurrentIndexLeft-method)****()
-   ****[moveCurrentIndexRight](index.html#moveCurrentIndexRight-method)****()
-   ****[moveCurrentIndexUp](index.html#moveCurrentIndexUp-method)****()
-   ****[positionViewAtBeginning](index.html#positionViewAtBeginning-method)****()
-   ****[positionViewAtEnd](index.html#positionViewAtEnd-method)****()
-   ****[positionViewAtIndex](index.html#positionViewAtIndex-method)****(int *index*, PositionMode *mode*)

<span id="details"></span>
Detailed Description
--------------------

A GridView displays data from models created from built-in QML types like [ListModel](../QtQuick.qtquick-modelviewsdata-modelview/index.html#listmodel) and [XmlListModel](../QtQuick.XmlListModel.XmlListModel/index.html), or custom model classes defined in C++ that inherit from QAbstractListModel.

A GridView has a [model](index.html#model-prop), which defines the data to be displayed, and a [delegate](index.html#delegate-prop), which defines how the data should be displayed. Items in a GridView are laid out horizontally or vertically. Grid views are inherently flickable as GridView inherits from [Flickable](../QtQuick.Flickable/index.html).

<span id="example-usage"></span>
Example Usage
-------------

The following example shows the definition of a simple list model defined in a file called `ContactModel.qml`:

``` qml
import QtQuick 2.0
ListModel {
    ListElement {
        name: "Jim Williams"
        portrait: "pics/portrait.png"
    }
    ListElement {
        name: "John Brown"
        portrait: "pics/portrait.png"
    }
    ListElement {
        name: "Bill Smyth"
        portrait: "pics/portrait.png"
    }
    ListElement {
        name: "Sam Wise"
        portrait: "pics/portrait.png"
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/9874feec-90f2-471f-9d42-1cd5b440a172-api/apps/qml/sdk-14.10/QtQuick.GridView/images/gridview-simple.png)

This model can be referenced as `ContactModel` in other QML files. See QML Modules for more information about creating reusable components like this.

Another component can display this model data in a GridView, as in the following example, which creates a `ContactModel` component for its model, and a [Column](../QtQuick.Column/index.html) (containing [Image](../QtQuick.Image/index.html) and [Text](../QtQuick.Text/index.html) items) for its delegate.

``` qml
import QtQuick 2.0
GridView {
    width: 300; height: 200
    model: ContactModel {}
    delegate: Column {
        Image { source: portrait; anchors.horizontalCenter: parent.horizontalCenter }
        Text { text: name; anchors.horizontalCenter: parent.horizontalCenter }
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/12e5b94b-029d-412e-a7ea-c2a1cfcfd070-api/apps/qml/sdk-14.10/QtQuick.GridView/images/gridview-highlight.png)

The view will create a new delegate for each item in the model. Note that the delegate is able to access the model's `name` and `portrait` data directly.

An improved grid view is shown below. The delegate is visually improved and is moved into a separate `contactDelegate` component.

``` qml
Rectangle {
    width: 300; height: 200
    Component {
        id: contactDelegate
        Item {
            width: grid.cellWidth; height: grid.cellHeight
            Column {
                anchors.fill: parent
                Image { source: portrait; anchors.horizontalCenter: parent.horizontalCenter }
                Text { text: name; anchors.horizontalCenter: parent.horizontalCenter }
            }
        }
    }
    GridView {
        id: grid
        anchors.fill: parent
        cellWidth: 80; cellHeight: 80
        model: ContactModel {}
        delegate: contactDelegate
        highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
        focus: true
    }
}
```

The currently selected item is highlighted with a blue [Rectangle](../QtQuick.Rectangle/index.html) using the [highlight](index.html#highlight-prop) property, and `focus` is set to `true` to enable keyboard navigation for the grid view. The grid view itself is a focus scope (see [Keyboard Focus in Qt Quick](../QtQuick.qtquick-input-focus/index.html) for more details).

Delegates are instantiated as needed and may be destroyed at any time. State should *never* be stored in a delegate.

GridView attaches a number of properties to the root item of the delegate, for example `GridView.isCurrentItem`. In the following example, the root delegate item can access this attached property directly as `GridView.isCurrentItem`, while the child `contactInfo` object must refer to this property as `wrapper.GridView.isCurrentItem`.

``` qml
GridView {
    width: 300; height: 200
    cellWidth: 80; cellHeight: 80
    Component {
        id: contactsDelegate
        Rectangle {
            id: wrapper
            width: 80
            height: 80
            color: GridView.isCurrentItem ? "black" : "red"
            Text {
                id: contactInfo
                text: name + ": " + number
                color: wrapper.GridView.isCurrentItem ? "red" : "black"
            }
        }
    }
    model: ContactModel {}
    delegate: contactsDelegate
    focus: true
}
```

**Note:** Views do not set the [clip](../QtQuick.Item/index.html#clip-prop) property automatically. If the view is not clipped by another item or the screen, it will be necessary to set this property to true in order to clip the items that are partially or fully outside the view.

<span id="gridview-layouts"></span>
GridView layouts
----------------

The layout of the items in a GridView can be controlled by these properties:

-   [flow](index.html#flow-prop) - controls whether items flow from left to right (as a series of rows) or from top to bottom (as a series of columns). This value can be either GridView.FlowLeftToRight or GridView.FlowTopToBottom.
-   [layoutDirection](index.html#layoutDirection-prop) - controls the horizontal layout direction: that is, whether items are laid out from the left side of the view to the right, or vice-versa. This value can be either Qt.LeftToRight or Qt.RightToLeft.
-   [verticalLayoutDirection](index.html#verticalLayoutDirection-prop) - controls the vertical layout direction: that is, whether items are laid out from the top of the view down towards the bottom of the view, or vice-versa. This value can be either GridView.TopToBottom or GridView.BottomToTop.

By default, a GridView flows from left to right, and items are laid out from left to right horizontally, and from top to bottom vertically.

These properties can be combined to produce a variety of layouts, as shown in the table below. The GridViews in the first row all have a [flow](index.html#flow-prop) value of GridView.FlowLeftToRight, but use different combinations of horizontal and vertical layout directions (specified by [layoutDirection](index.html#layoutDirection-prop) and [verticalLayoutDirection](index.html#verticalLayoutDirection-prop) respectively). Similarly, the GridViews in the second row below all have a [flow](index.html#flow-prop) value of GridView.FlowTopToBottom, but use different combinations of horizontal and vertical layout directions to lay out their items in different ways.

**GridViews** with GridView.FlowLeftToRight flow
**(H)** Left to right **(V)** Top to bottom
![](https://developer.ubuntu.com/static/devportal_uploaded/a308cb67-28ef-4c96-a337-5ca38c4b4871-api/apps/qml/sdk-14.10/QtQuick.GridView/images/gridview-layout-lefttoright-ltr-ttb.png)

**(H)** Right to left **(V)** Top to bottom
![](https://developer.ubuntu.com/static/devportal_uploaded/1de1e8db-3943-476c-ade2-8393a6769293-api/apps/qml/sdk-14.10/QtQuick.GridView/images/gridview-layout-lefttoright-rtl-ttb.png)

**(H)** Left to right **(V)** Bottom to top
![](https://developer.ubuntu.com/static/devportal_uploaded/63dcf4df-9769-47d6-b144-0015dfe8d6b7-api/apps/qml/sdk-14.10/QtQuick.GridView/images/gridview-layout-lefttoright-ltr-btt.png)

**(H)** Right to left **(V)** Bottom to top
![](https://developer.ubuntu.com/static/devportal_uploaded/f4d820ab-709b-4013-8883-198c41bfefa4-api/apps/qml/sdk-14.10/QtQuick.GridView/images/gridview-layout-lefttoright-rtl-btt.png)

**GridViews** with GridView.FlowTopToBottom flow
**(H)** Left to right **(V)** Top to bottom
![](https://developer.ubuntu.com/static/devportal_uploaded/fad6537d-f093-4f3c-a846-dd27d0e6e374-api/apps/qml/sdk-14.10/QtQuick.GridView/images/gridview-layout-toptobottom-ltr-ttb.png)

**(H)** Right to left **(V)** Top to bottom
![](https://developer.ubuntu.com/static/devportal_uploaded/6911120c-63c8-4045-b243-7be18461338c-api/apps/qml/sdk-14.10/QtQuick.GridView/images/gridview-layout-toptobottom-rtl-ttb.png)

**(H)** Left to right **(V)** Bottom to top
![](https://developer.ubuntu.com/static/devportal_uploaded/82b42ec8-cbdd-4715-9641-b953f487e1ff-api/apps/qml/sdk-14.10/QtQuick.GridView/images/gridview-layout-toptobottom-ltr-btt.png)

**(H)** Right to left **(V)** Bottom to top
![](https://developer.ubuntu.com/static/devportal_uploaded/6879a7e8-c283-414f-8a7a-116cac4ba4da-api/apps/qml/sdk-14.10/QtQuick.GridView/images/gridview-layout-toptobottom-rtl-btt.png)

**See also** [QML Data Models](../QtQuick.qtquick-modelviewsdata-modelview/index.html#qml-data-models), [ListView](../QtQuick.ListView/index.html), [PathView](../QtQuick.PathView/index.html), and [Qt Quick Examples - Views](https://developer.ubuntu.com/api/apps/qml/sdk-14.10/QtQuick.views/).

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

This property holds the transition to apply to items that are added to the view.

For example, here is a view that specifies such a transition:

``` cpp
GridView {
    ...
    add: Transition {
        NumberAnimation { properties: "x,y"; from: 100; duration: 1000 }
    }
}
```

Whenever an item is added to the above view, the item will be animated from the position (100,100) to its final x,y position within the view, over one second. The transition only applies to the new items that are added to the view; it does not apply to the items below that are displaced by the addition of the new items. To animate the displaced items, set the [displaced](index.html#displaced-prop) or [addDisplaced](index.html#addDisplaced-prop) properties.

For more details and examples on how to use view transitions, see the [ViewTransition](../QtQuick.ViewTransition/index.html) documentation.

**Note:** This transition is not applied to the items that are created when the view is initially populated, or when the view's [model](index.html#model-prop) changes. (In those cases, the [populate](index.html#populate-prop) transition is applied instead.) Additionally, this transition should *not* animate the height of the new item; doing so will cause any items beneath the new item to be laid out at the wrong position. Instead, the height can be animated within the onAdd handler in the delegate.

**See also** [addDisplaced](index.html#addDisplaced-prop), [populate](index.html#populate-prop), and [ViewTransition](../QtQuick.ViewTransition/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="addDisplaced-prop"></span><span class="name">addDisplaced</span> : <span class="type"><a href="../QtQuick.Transition/index.html">Transition</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the transition to apply to items within the view that are displaced by the addition of other items to the view.

For example, here is a view that specifies such a transition:

``` cpp
GridView {
    ...
    addDisplaced: Transition {
        NumberAnimation { properties: "x,y"; duration: 1000 }
    }
}
```

Whenever an item is added to the above view, all items beneath the new item are displaced, causing them to move down (or sideways, if horizontally orientated) within the view. As this displacement occurs, the items' movement to their new x,y positions within the view will be animated by a [NumberAnimation](../QtQuick.NumberAnimation/index.html) over one second, as specified. This transition is not applied to the new item that has been added to the view; to animate the added items, set the [add](index.html#add-prop) property.

If an item is displaced by multiple types of operations at the same time, it is not defined as to whether the addDisplaced, [moveDisplaced](index.html#moveDisplaced-prop) or [removeDisplaced](index.html#removeDisplaced-prop) transition will be applied. Additionally, if it is not necessary to specify different transitions depending on whether an item is displaced by an add, move or remove operation, consider setting the [displaced](index.html#displaced-prop) property instead.

For more details and examples on how to use view transitions, see the [ViewTransition](../QtQuick.ViewTransition/index.html) documentation.

**Note:** This transition is not applied to the items that are created when the view is initially populated, or when the view's [model](index.html#model-prop) changes. In those cases, the [populate](index.html#populate-prop) transition is applied instead.

**See also** [displaced](index.html#displaced-prop), [add](index.html#add-prop), [populate](index.html#populate-prop), and [ViewTransition](../QtQuick.ViewTransition/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cacheBuffer-prop"></span><span class="name">cacheBuffer</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property determines whether delegates are retained outside the visible area of the view.

If non-zero the view may keep as many delegates instantiated as will fit within the buffer specified. For example, if in a vertical view the delegate is 20 pixels high, there are 3 columns and `cacheBuffer` is set to 40, then up to 6 delegates above and 6 delegates below the visible area may be created/retained. The buffered delegates are created asynchronously, allowing creation to occur across multiple frames and reducing the likelihood of skipping frames. In order to improve painting performance delegates outside the visible area are not painted.

The default value of this property is platform dependent, but will usually be a non-zero value.

Note that cacheBuffer is not a pixel buffer - it only maintains additional instantiated delegates.

Setting this value can make scrolling the list smoother at the expense of additional memory usage. It is not a substitute for creating efficient delegates; the fewer objects and bindings in a delegate, the faster a view may be scrolled.

The cacheBuffer operates outside of any display margins specified by [displayMarginBeginning](index.html#displayMarginBeginning-prop) or [displayMarginEnd](index.html#displayMarginEnd-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cellHeight-prop"></span><span class="name">cellHeight</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties holds the width and height of each cell in the grid.

The default cell size is 100x100.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cellWidth-prop"></span><span class="name">cellWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties holds the width and height of each cell in the grid.

The default cell size is 100x100.

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

This property holds the number of items in the view.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="currentIndex-prop"></span><span class="name">currentIndex</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The `currentIndex` property holds the index of the current item, and `currentItem` holds the current item. Setting the currentIndex to -1 will clear the highlight and set [currentItem](index.html#currentItem-prop) to null.

If [highlightFollowsCurrentItem](index.html#highlightFollowsCurrentItem-prop) is `true`, setting either of these properties will smoothly scroll the [GridView](index.html) so that the current item becomes visible.

Note that the position of the current item may only be approximate until it becomes visible in the view.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="currentItem-prop"></span><span class="name">currentItem</span> : <span class="type"><a href="../QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

The `currentIndex` property holds the index of the current item, and `currentItem` holds the current item. Setting the [currentIndex](index.html#currentIndex-prop) to -1 will clear the highlight and set currentItem to null.

If [highlightFollowsCurrentItem](index.html#highlightFollowsCurrentItem-prop) is `true`, setting either of these properties will smoothly scroll the [GridView](index.html) so that the current item becomes visible.

Note that the position of the current item may only be approximate until it becomes visible in the view.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="delegate-prop"></span><span class="name">delegate</span> : <span class="type">Component</span></p></td>
</tr>
</tbody>
</table>

The delegate provides a template defining each item instantiated by the view. The index is exposed as an accessible `index` property. Properties of the model are also available depending upon the type of [Data Model](../QtQuick.qtquick-modelviewsdata-modelview/index.html#qml-data-models).

The number of objects and bindings in the delegate has a direct effect on the flicking performance of the view. If at all possible, place functionality that is not needed for the normal display of the delegate in a [Loader](../QtQuick.Loader/index.html) which can load additional components when needed.

The item size of the [GridView](index.html) is determined by [cellHeight](index.html#cellHeight-prop) and [cellWidth](index.html#cellWidth-prop). It will not resize the items based on the size of the root item in the delegate.

The default stacking order of delegate instances is `1`.

**Note:** Delegates are instantiated as needed and may be destroyed at any time. State should *never* be stored in a delegate.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="displaced-prop"></span><span class="name">displaced</span> : <span class="type"><a href="../QtQuick.Transition/index.html">Transition</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the generic transition to apply to items that have been displaced by any model operation that affects the view.

This is a convenience for specifying a generic transition for items that are displaced by add, move or remove operations, without having to specify the individual [addDisplaced](index.html#addDisplaced-prop), [moveDisplaced](index.html#moveDisplaced-prop) and [removeDisplaced](index.html#removeDisplaced-prop) properties. For example, here is a view that specifies a displaced transition:

``` cpp
GridView {
    ...
    displaced: Transition {
        NumberAnimation { properties: "x,y"; duration: 1000 }
    }
}
```

When any item is added, moved or removed within the above view, the items below it are displaced, causing them to move down (or sideways, if horizontally orientated) within the view. As this displacement occurs, the items' movement to their new x,y positions within the view will be animated by a [NumberAnimation](../QtQuick.NumberAnimation/index.html) over one second, as specified.

If a view specifies this generic displaced transition as well as a specific [addDisplaced](index.html#addDisplaced-prop), [moveDisplaced](index.html#moveDisplaced-prop) or [removeDisplaced](index.html#removeDisplaced-prop) transition, the more specific transition will be used instead of the generic displaced transition when the relevant operation occurs, providing that the more specific transition has not been disabled (by setting [enabled](../QtQuick.Transition/index.html#enabled-prop) to false). If it has indeed been disabled, the generic displaced transition is applied instead.

For more details and examples on how to use view transitions, see the [ViewTransition](../QtQuick.ViewTransition/index.html) documentation.

**See also** [addDisplaced](index.html#addDisplaced-prop), [moveDisplaced](index.html#moveDisplaced-prop), [removeDisplaced](index.html#removeDisplaced-prop), and [ViewTransition](../QtQuick.ViewTransition/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="displayMarginBeginning-prop"></span><span class="name">displayMarginBeginning</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property allows delegates to be displayed outside of the view geometry.

If this value is non-zero, the view will create extra delegates before the start of the view, or after the end. The view will create as many delegates as it can fit into the pixel size specified.

For example, if in a vertical view the delegate is 20 pixels high, there are 3 columns, and `displayMarginBeginning` and `displayMarginEnd` are both set to 40, then 6 delegates above and 6 delegates below will be created and shown.

The default value is 0.

This property is meant for allowing certain UI configurations, and not as a performance optimization. If you wish to create delegates outside of the view geometry for performance reasons, you probably want to use the [cacheBuffer](index.html#cacheBuffer-prop) property instead.

This QML property was introduced in QtQuick 2.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="displayMarginEnd-prop"></span><span class="name">displayMarginEnd</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property allows delegates to be displayed outside of the view geometry.

If this value is non-zero, the view will create extra delegates before the start of the view, or after the end. The view will create as many delegates as it can fit into the pixel size specified.

For example, if in a vertical view the delegate is 20 pixels high, there are 3 columns, and `displayMarginBeginning` and `displayMarginEnd` are both set to 40, then 6 delegates above and 6 delegates below will be created and shown.

The default value is 0.

This property is meant for allowing certain UI configurations, and not as a performance optimization. If you wish to create delegates outside of the view geometry for performance reasons, you probably want to use the [cacheBuffer](index.html#cacheBuffer-prop) property instead.

This QML property was introduced in QtQuick 2.3.

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

When using the attached property [LayoutMirroring::enabled](../QtQuick.LayoutMirroring/index.html#enabled-prop) for locale layouts, the visual layout direction of the grid will be mirrored. However, the property [layoutDirection](index.html#layoutDirection-prop) will remain unchanged.

**See also** [GridView::layoutDirection](index.html#layoutDirection-prop) and [LayoutMirroring](../QtQuick.LayoutMirroring/index.html).

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

This property holds the flow of the grid.

Possible values:

-   [GridView](index.html).FlowLeftToRight (default) - Items are laid out from left to right, and the view scrolls vertically
-   [GridView](index.html).FlowTopToBottom - Items are laid out from top to bottom, and the view scrolls horizontally

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="footer-prop"></span><span class="name">footer</span> : <span class="type">Component</span></p></td>
</tr>
</tbody>
</table>

This property holds the component to use as the footer.

An instance of the footer component is created for each view. The footer is positioned at the end of the view, after any items. The default stacking order of the footer is `1`.

**See also** [header](index.html#header-prop) and [footerItem](index.html#footerItem-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="footerItem-prop"></span><span class="name">footerItem</span> : <span class="type"><a href="../QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

This holds the footer item created from the [footer](index.html#footer-prop) component.

An instance of the footer component is created for each view. The footer is positioned at the end of the view, after any items. The default stacking order of the footer is `1`.

**See also** [footer](index.html#footer-prop) and [headerItem](index.html#headerItem-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="header-prop"></span><span class="name">header</span> : <span class="type">Component</span></p></td>
</tr>
</tbody>
</table>

This property holds the component to use as the header.

An instance of the header component is created for each view. The header is positioned at the beginning of the view, before any items. The default stacking order of the header is `1`.

**See also** [footer](index.html#footer-prop) and [headerItem](index.html#headerItem-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="headerItem-prop"></span><span class="name">headerItem</span> : <span class="type"><a href="../QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

This holds the header item created from the [header](index.html#header-prop) component.

An instance of the header component is created for each view. The header is positioned at the beginning of the view, before any items. The default stacking order of the header is `1`.

**See also** [header](index.html#header-prop) and [footerItem](index.html#footerItem-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="highlight-prop"></span><span class="name">highlight</span> : <span class="type">Component</span></p></td>
</tr>
</tbody>
</table>

This property holds the component to use as the highlight.

An instance of the highlight component is created for each view. The geometry of the resulting component instance will be managed by the view so as to stay with the current item, unless the highlightFollowsCurrentItem property is false. The default stacking order of the highlight item is `0`.

**See also** [highlightItem](index.html#highlightItem-prop) and [highlightFollowsCurrentItem](index.html#highlightFollowsCurrentItem-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="highlightFollowsCurrentItem-prop"></span><span class="name">highlightFollowsCurrentItem</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property sets whether the highlight is managed by the view.

If this property is true (the default value), the highlight is moved smoothly to follow the current item. Otherwise, the highlight is not moved by the view, and any movement must be implemented by the highlight.

Here is a highlight with its motion defined by a [SpringAnimation](../QtQuick.SpringAnimation/index.html) item:

``` qml
Component {
    id: highlight
    Rectangle {
        width: view.cellWidth; height: view.cellHeight
        color: "lightsteelblue"; radius: 5
        x: view.currentItem.x
        y: view.currentItem.y
        Behavior on x { SpringAnimation { spring: 3; damping: 0.2 } }
        Behavior on y { SpringAnimation { spring: 3; damping: 0.2 } }
    }
}
GridView {
    id: view
    width: 300; height: 200
    cellWidth: 80; cellHeight: 80
    model: ContactModel {}
    delegate: Column {
        Image { source: portrait; anchors.horizontalCenter: parent.horizontalCenter }
        Text { text: name; anchors.horizontalCenter: parent.horizontalCenter }
    }
    highlight: highlight
    highlightFollowsCurrentItem: false
    focus: true
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="highlightItem-prop"></span><span class="name">highlightItem</span> : <span class="type"><a href="../QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

This holds the highlight item created from the [highlight](index.html#highlight-prop) component.

The highlightItem is managed by the view unless highlightFollowsCurrentItem is set to false. The default stacking order of the highlight item is `0`.

**See also** [highlight](index.html#highlight-prop) and [highlightFollowsCurrentItem](index.html#highlightFollowsCurrentItem-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="highlightMoveDuration-prop"></span><span class="name">highlightMoveDuration</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the move animation duration of the highlight delegate.

[highlightFollowsCurrentItem](index.html#highlightFollowsCurrentItem-prop) must be true for this property to have effect.

The default value for the duration is 150ms.

**See also** [highlightFollowsCurrentItem](index.html#highlightFollowsCurrentItem-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="highlightRangeMode-prop"></span><span class="name">highlightRangeMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

These properties define the preferred range of the highlight (for the current item) within the view. The `preferredHighlightBegin` value must be less than the `preferredHighlightEnd` value.

These properties affect the position of the current item when the view is scrolled. For example, if the currently selected item should stay in the middle of the view when it is scrolled, set the `preferredHighlightBegin` and `preferredHighlightEnd` values to the top and bottom coordinates of where the middle item would be. If the `currentItem` is changed programmatically, the view will automatically scroll so that the current item is in the middle of the view. Furthermore, the behavior of the current item index will occur whether or not a highlight exists.

Valid values for `highlightRangeMode` are:

-   [GridView](index.html).ApplyRange - the view attempts to maintain the highlight within the range. However, the highlight can move outside of the range at the ends of the view or due to mouse interaction.
-   [GridView](index.html).StrictlyEnforceRange - the highlight never moves outside of the range. The current item changes if a keyboard or mouse action would cause the highlight to move outside of the range.
-   [GridView](index.html).NoHighlightRange - this is the default value.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="keyNavigationWraps-prop"></span><span class="name">keyNavigationWraps</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the grid wraps key navigation

If this is true, key navigation that would move the current item selection past one end of the view instead wraps around and moves the selection to the other end of the view.

By default, key navigation is not wrapped.

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

This property holds the layout direction of the grid.

Possible values:

-   Qt.LeftToRight (default) - Items will be laid out starting in the top, left corner. The flow is dependent on the [GridView::flow](index.html#flow-prop) property.
-   Qt.RightToLeft - Items will be laid out starting in the top, right corner. The flow is dependent on the [GridView::flow](index.html#flow-prop) property.

**Note**: If [GridView::flow](index.html#flow-prop) is set to [GridView](index.html).FlowLeftToRight, this is not to be confused if GridView::layoutDirection is set to Qt.RightToLeft. The [GridView](index.html).FlowLeftToRight flow value simply indicates that the flow is horizontal.

**See also** [GridView::effectiveLayoutDirection](index.html#effectiveLayoutDirection-prop) and [GridView::verticalLayoutDirection](index.html#verticalLayoutDirection-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="model-prop"></span><span class="name">model</span> : <span class="type">model</span></p></td>
</tr>
</tbody>
</table>

This property holds the model providing data for the grid.

The model provides the set of data that is used to create the items in the view. Models can be created directly in QML using [ListModel](../QtQuick.qtquick-modelviewsdata-modelview/index.html#listmodel), [XmlListModel](../QtQuick.XmlListModel.XmlListModel/index.html) or [VisualItemModel](../QtQuick.qtquick-modelviewsdata-modelview/index.html#visualitemmodel), or provided by C++ model classes. If a C++ model class is used, it must be a subclass of [QAbstractItemModel](../QtQuick.qtquick-modelviewsdata-cppmodels/index.html#qabstractitemmodel) or a simple list.

**See also** [Data Models](../QtQuick.qtquick-modelviewsdata-modelview/index.html#qml-data-models).

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

This property holds the transition to apply to items in the view that are being moved due to a move operation in the view's [model](index.html#model-prop).

For example, here is a view that specifies such a transition:

``` cpp
GridView {
    ...
    move: Transition {
        NumberAnimation { properties: "x,y"; duration: 1000 }
    }
}
```

Whenever the [model](index.html#model-prop) performs a move operation to move a particular set of indexes, the respective items in the view will be animated to their new positions in the view over one second. The transition only applies to the items that are the subject of the move operation in the model; it does not apply to items below them that are displaced by the move operation. To animate the displaced items, set the [displaced](index.html#displaced-prop) or [moveDisplaced](index.html#moveDisplaced-prop) properties.

For more details and examples on how to use view transitions, see the [ViewTransition](../QtQuick.ViewTransition/index.html) documentation.

**See also** [moveDisplaced](index.html#moveDisplaced-prop) and [ViewTransition](../QtQuick.ViewTransition/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="moveDisplaced-prop"></span><span class="name">moveDisplaced</span> : <span class="type"><a href="../QtQuick.Transition/index.html">Transition</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the transition to apply to items that are displaced by a move operation in the view's [model](index.html#model-prop).

For example, here is a view that specifies such a transition:

``` cpp
GridView {
    ...
    moveDisplaced: Transition {
        NumberAnimation { properties: "x,y"; duration: 1000 }
    }
}
```

Whenever the [model](index.html#model-prop) performs a move operation to move a particular set of indexes, the items between the source and destination indexes of the move operation are displaced, causing them to move upwards or downwards (or sideways, if horizontally orientated) within the view. As this displacement occurs, the items' movement to their new x,y positions within the view will be animated by a [NumberAnimation](../QtQuick.NumberAnimation/index.html) over one second, as specified. This transition is not applied to the items that are the actual subjects of the move operation; to animate the moved items, set the [move](index.html#move-prop) property.

If an item is displaced by multiple types of operations at the same time, it is not defined as to whether the [addDisplaced](index.html#addDisplaced-prop), moveDisplaced or [removeDisplaced](index.html#removeDisplaced-prop) transition will be applied. Additionally, if it is not necessary to specify different transitions depending on whether an item is displaced by an add, move or remove operation, consider setting the [displaced](index.html#displaced-prop) property instead.

For more details and examples on how to use view transitions, see the [ViewTransition](../QtQuick.ViewTransition/index.html) documentation.

**See also** [displaced](index.html#displaced-prop), [move](index.html#move-prop), and [ViewTransition](../QtQuick.ViewTransition/index.html).

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

This property holds the transition to apply to the items that are initially created for a view.

It is applied to all items that are created when:

-   The view is first created
-   The view's [model](index.html#model-prop) changes
-   The view's [model](index.html#model-prop) is reset, if the model is a [QAbstractItemModel](../QtQuick.qtquick-modelviewsdata-cppmodels/index.html#qabstractitemmodel) subclass

For example, here is a view that specifies such a transition:

``` cpp
GridView {
    ...
    populate: Transition {
        NumberAnimation { properties: "x,y"; duration: 1000 }
    }
}
```

When the view is initialized, the view will create all the necessary items for the view, then animate them to their correct positions within the view over one second.

For more details and examples on how to use view transitions, see the [ViewTransition](../QtQuick.ViewTransition/index.html) documentation.

**See also** [add](index.html#add-prop) and [ViewTransition](../QtQuick.ViewTransition/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="preferredHighlightBegin-prop"></span><span class="name">preferredHighlightBegin</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties define the preferred range of the highlight (for the current item) within the view. The `preferredHighlightBegin` value must be less than the `preferredHighlightEnd` value.

These properties affect the position of the current item when the view is scrolled. For example, if the currently selected item should stay in the middle of the view when it is scrolled, set the `preferredHighlightBegin` and `preferredHighlightEnd` values to the top and bottom coordinates of where the middle item would be. If the `currentItem` is changed programmatically, the view will automatically scroll so that the current item is in the middle of the view. Furthermore, the behavior of the current item index will occur whether or not a highlight exists.

Valid values for `highlightRangeMode` are:

-   [GridView](index.html).ApplyRange - the view attempts to maintain the highlight within the range. However, the highlight can move outside of the range at the ends of the view or due to mouse interaction.
-   [GridView](index.html).StrictlyEnforceRange - the highlight never moves outside of the range. The current item changes if a keyboard or mouse action would cause the highlight to move outside of the range.
-   [GridView](index.html).NoHighlightRange - this is the default value.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="preferredHighlightEnd-prop"></span><span class="name">preferredHighlightEnd</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

These properties define the preferred range of the highlight (for the current item) within the view. The `preferredHighlightBegin` value must be less than the `preferredHighlightEnd` value.

These properties affect the position of the current item when the view is scrolled. For example, if the currently selected item should stay in the middle of the view when it is scrolled, set the `preferredHighlightBegin` and `preferredHighlightEnd` values to the top and bottom coordinates of where the middle item would be. If the `currentItem` is changed programmatically, the view will automatically scroll so that the current item is in the middle of the view. Furthermore, the behavior of the current item index will occur whether or not a highlight exists.

Valid values for `highlightRangeMode` are:

-   [GridView](index.html).ApplyRange - the view attempts to maintain the highlight within the range. However, the highlight can move outside of the range at the ends of the view or due to mouse interaction.
-   [GridView](index.html).StrictlyEnforceRange - the highlight never moves outside of the range. The current item changes if a keyboard or mouse action would cause the highlight to move outside of the range.
-   [GridView](index.html).NoHighlightRange - this is the default value.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="remove-prop"></span><span class="name">remove</span> : <span class="type"><a href="../QtQuick.Transition/index.html">Transition</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the transition to apply to items that are removed from the view.

For example, here is a view that specifies such a transition:

``` cpp
GridView {
    ...
    remove: Transition {
        ParallelAnimation {
            NumberAnimation { property: "opacity"; to: 0; duration: 1000 }
            NumberAnimation { properties: "x,y"; to: 100; duration: 1000 }
        }
    }
}
```

Whenever an item is removed from the above view, the item will be animated to the position (100,100) over one second, and in parallel will also change its opacity to 0. The transition only applies to the items that are removed from the view; it does not apply to the items below them that are displaced by the removal of the items. To animate the displaced items, set the [displaced](index.html#displaced-prop) or [removeDisplaced](index.html#removeDisplaced-prop) properties.

Note that by the time the transition is applied, the item has already been removed from the model; any references to the model data for the removed index will not be valid.

Additionally, if the [delayRemove](index.html#delayRemove-prop) attached property has been set for a delegate item, the remove transition will not be applied until [delayRemove](index.html#delayRemove-prop) becomes false again.

For more details and examples on how to use view transitions, see the [ViewTransition](../QtQuick.ViewTransition/index.html) documentation.

**See also** [removeDisplaced](index.html#removeDisplaced-prop) and [ViewTransition](../QtQuick.ViewTransition/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeDisplaced-prop"></span><span class="name">removeDisplaced</span> : <span class="type"><a href="../QtQuick.Transition/index.html">Transition</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the transition to apply to items in the view that are displaced by the removal of other items in the view.

For example, here is a view that specifies such a transition:

``` cpp
GridView {
    ...
    removeDisplaced: Transition {
        NumberAnimation { properties: "x,y"; duration: 1000 }
    }
}
```

Whenever an item is removed from the above view, all items beneath it are displaced, causing them to move upwards (or sideways, if horizontally orientated) within the view. As this displacement occurs, the items' movement to their new x,y positions within the view will be animated by a [NumberAnimation](../QtQuick.NumberAnimation/index.html) over one second, as specified. This transition is not applied to the item that has actually been removed from the view; to animate the removed items, set the [remove](index.html#remove-prop) property.

If an item is displaced by multiple types of operations at the same time, it is not defined as to whether the [addDisplaced](index.html#addDisplaced-prop), [moveDisplaced](index.html#moveDisplaced-prop) or removeDisplaced transition will be applied. Additionally, if it is not necessary to specify different transitions depending on whether an item is displaced by an add, move or remove operation, consider setting the [displaced](index.html#displaced-prop) property instead.

For more details and examples on how to use view transitions, see the [ViewTransition](../QtQuick.ViewTransition/index.html) documentation.

**See also** [displaced](index.html#displaced-prop), [remove](index.html#remove-prop), and [ViewTransition](../QtQuick.ViewTransition/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="snapMode-prop"></span><span class="name">snapMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property determines how the view scrolling will settle following a drag or flick. The possible values are:

-   [GridView](index.html).NoSnap (default) - the view stops anywhere within the visible area.
-   [GridView](index.html).SnapToRow - the view settles with a row (or column for `GridView.FlowTopToBottom` flow) aligned with the start of the view.
-   [GridView](index.html).SnapOneRow - the view will settle no more than one row (or column for `GridView.FlowTopToBottom` flow) away from the first visible row at the time the mouse button is released. This mode is particularly useful for moving one page at a time.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="verticalLayoutDirection-prop"></span><span class="name">verticalLayoutDirection</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the vertical layout direction of the grid.

Possible values:

-   [GridView](index.html).TopToBottom (default) - Items are laid out from the top of the view down to the bottom of the view.
-   [GridView](index.html).BottomToTop - Items are laid out from the bottom of the view up to the top of the view.

**See also** [GridView::layoutDirection](index.html#layoutDirection-prop).

Attached Property Documentation
-------------------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="delayRemove-prop"></span><span class="name">.delayRemove</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This attached property holds whether the delegate may be destroyed. It is attached to each instance of the delegate. The default value is false.

It is sometimes necessary to delay the destruction of an item until an animation completes. The example delegate below ensures that the animation completes before the item is removed from the list.

``` qml
Component {
    id: delegate
    Item {
        GridView.onRemove: SequentialAnimation {
            PropertyAction { target: wrapper; property: "GridView.delayRemove"; value: true }
            NumberAnimation { target: wrapper; property: "scale"; to: 0; duration: 250; easing.type: Easing.InOutQuad }
            PropertyAction { target: wrapper; property: "GridView.delayRemove"; value: false }
        }
    }
}
```

If a [remove](index.html#remove-prop) transition has been specified, it will not be applied until delayRemove is returned to `false`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isCurrentItem-prop"></span><span class="name">.isCurrentItem</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This attached property is true if this delegate is the current item; otherwise false.

It is attached to each instance of the delegate.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="view-prop"></span><span class="name">.view</span> : <span class="type">GridView</span></p></td>
</tr>
</tbody>
</table>

This attached property holds the view that manages this delegate instance.

It is attached to each instance of the delegate and also to the header, the footer and the highlight delegates.

``` qml
GridView {
    width: 300; height: 200
    cellWidth: 80; cellHeight: 80
    Component {
        id: contactsDelegate
        Rectangle {
            id: wrapper
            width: 80
            height: 80
            color: GridView.isCurrentItem ? "black" : "red"
            Text {
                id: contactInfo
                text: name + ": " + number
                color: wrapper.GridView.isCurrentItem ? "red" : "black"
            }
        }
    }
    model: ContactModel {}
    delegate: contactsDelegate
    focus: true
}
```

Attached Signal Documentation
-----------------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="add-signal"></span><span class="name">add</span>()</p></td>
</tr>
</tbody>
</table>

This attached signal is emitted immediately after an item is added to the view.

The corresponding handler is `onAdd`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="remove-signal"></span><span class="name">remove</span>()</p></td>
</tr>
</tbody>
</table>

This attached signal is emitted immediately before an item is removed from the view.

If a [remove](index.html#remove-prop) transition has been specified, it is applied after this signal is handled, providing that [delayRemove](index.html#delayRemove-prop) is false.

The corresponding handler is `onRemove`.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="forceLayout-method"></span><span class="name">forceLayout</span>()</p></td>
</tr>
</tbody>
</table>

Responding to changes in the model is usually batched to happen only once per frame. This means that inside script blocks it is possible for the underlying model to have changed, but the [GridView](index.html) has not caught up yet.

This method forces the [GridView](index.html) to immediately respond to any outstanding changes in the model.

**Note**: methods should only be called after the Component has completed.

This QML method was introduced in Qt 5.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="indexAt-method"></span><span class="type">int</span> <span class="name">indexAt</span>(<span class="type">int</span> <em>x</em>, <span class="type">int</span> <em>y</em>)</p></td>
</tr>
</tbody>
</table>

Returns the index of the visible item containing the point *x*, *y* in content coordinates. If there is no item at the point specified, or the item is not visible -1 is returned.

If the item is outside the visible area, -1 is returned, regardless of whether an item will exist at that point when scrolled into view.

**Note**: methods should only be called after the Component has completed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemAt-method"></span><span class="type"><a href="../QtQuick.Item/index.html">Item</a></span> <span class="name">itemAt</span>(<span class="type">int</span> <em>x</em>, <span class="type">int</span> <em>y</em>)</p></td>
</tr>
</tbody>
</table>

Returns the visible item containing the point *x*, *y* in content coordinates. If there is no item at the point specified, or the item is not visible null is returned.

If the item is outside the visible area, null is returned, regardless of whether an item will exist at that point when scrolled into view.

**Note**: methods should only be called after the Component has completed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="moveCurrentIndexDown-method"></span><span class="name">moveCurrentIndexDown</span>()</p></td>
</tr>
</tbody>
</table>

Move the [currentIndex](index.html#currentIndex-prop) down one item in the view. The current index will wrap if [keyNavigationWraps](index.html#keyNavigationWraps-prop) is true and it is currently at the end. This method has no effect if the [count](index.html#count-prop) is zero.

**Note**: methods should only be called after the Component has completed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="moveCurrentIndexLeft-method"></span><span class="name">moveCurrentIndexLeft</span>()</p></td>
</tr>
</tbody>
</table>

Move the [currentIndex](index.html#currentIndex-prop) left one item in the view. The current index will wrap if [keyNavigationWraps](index.html#keyNavigationWraps-prop) is true and it is currently at the end. This method has no effect if the [count](index.html#count-prop) is zero.

**Note**: methods should only be called after the Component has completed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="moveCurrentIndexRight-method"></span><span class="name">moveCurrentIndexRight</span>()</p></td>
</tr>
</tbody>
</table>

Move the [currentIndex](index.html#currentIndex-prop) right one item in the view. The current index will wrap if [keyNavigationWraps](index.html#keyNavigationWraps-prop) is true and it is currently at the end. This method has no effect if the [count](index.html#count-prop) is zero.

**Note**: methods should only be called after the Component has completed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="moveCurrentIndexUp-method"></span><span class="name">moveCurrentIndexUp</span>()</p></td>
</tr>
</tbody>
</table>

Move the [currentIndex](index.html#currentIndex-prop) up one item in the view. The current index will wrap if [keyNavigationWraps](index.html#keyNavigationWraps-prop) is true and it is currently at the end. This method has no effect if the [count](index.html#count-prop) is zero.

**Note**: methods should only be called after the Component has completed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="positionViewAtBeginning-method"></span><span class="name">positionViewAtBeginning</span>()</p></td>
</tr>
</tbody>
</table>

Positions the view at the beginning or end, taking into account any header or footer.

It is not recommended to use [contentX](../QtQuick.Flickable/index.html#contentX-prop) or [contentY](../QtQuick.Flickable/index.html#contentY-prop) to position the view at a particular index. This is unreliable since removing items from the start of the list does not cause all other items to be repositioned, and because the actual start of the view can vary based on the size of the delegates.

**Note**: methods should only be called after the Component has completed. To position the view at startup, this method should be called by Component.onCompleted. For example, to position the view at the end on startup:

``` cpp
Component.onCompleted: positionViewAtEnd()
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="positionViewAtEnd-method"></span><span class="name">positionViewAtEnd</span>()</p></td>
</tr>
</tbody>
</table>

Positions the view at the beginning or end, taking into account any header or footer.

It is not recommended to use [contentX](../QtQuick.Flickable/index.html#contentX-prop) or [contentY](../QtQuick.Flickable/index.html#contentY-prop) to position the view at a particular index. This is unreliable since removing items from the start of the list does not cause all other items to be repositioned, and because the actual start of the view can vary based on the size of the delegates.

**Note**: methods should only be called after the Component has completed. To position the view at startup, this method should be called by Component.onCompleted. For example, to position the view at the end on startup:

``` cpp
Component.onCompleted: positionViewAtEnd()
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="positionViewAtIndex-method"></span><span class="name">positionViewAtIndex</span>(<span class="type">int</span> <em>index</em>, <span class="type">PositionMode</span> <em>mode</em>)</p></td>
</tr>
</tbody>
</table>

Positions the view such that the *index* is at the position specified by *mode*:

-   [GridView](index.html).Beginning - position item at the top (or left for `GridView.FlowTopToBottom` flow) of the view.
-   [GridView](index.html).Center - position item in the center of the view.
-   [GridView](index.html).End - position item at bottom (or right for horizontal orientation) of the view.
-   [GridView](index.html).Visible - if any part of the item is visible then take no action, otherwise bring the item into view.
-   [GridView](index.html).Contain - ensure the entire item is visible. If the item is larger than the view the item is positioned at the top (or left for `GridView.FlowTopToBottom` flow) of the view.
-   [GridView](index.html).SnapPosition - position the item at [preferredHighlightBegin](index.html#preferredHighlightBegin-prop). This mode is only valid if [highlightRangeMode](index.html#highlightRangeMode-prop) is StrictlyEnforceRange or snapping is enabled via [snapMode](index.html#snapMode-prop).

If positioning the view at the index would cause empty space to be displayed at the beginning or end of the view, the view will be positioned at the boundary.

It is not recommended to use [contentX](../QtQuick.Flickable/index.html#contentX-prop) or [contentY](../QtQuick.Flickable/index.html#contentY-prop) to position the view at a particular index. This is unreliable since removing items from the start of the view does not cause all other items to be repositioned. The correct way to bring an item into view is with `positionViewAtIndex`.

**Note**: methods should only be called after the Component has completed. To position the view at startup, this method should be called by Component.onCompleted. For example, to position the view at the end:

``` cpp
Component.onCompleted: positionViewAtIndex(count - 1, GridView.Beginning)
```

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