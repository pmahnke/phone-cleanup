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

-   ViewItems

ViewItems
=========

<span class="subtitle"></span>
A set of properties attached to the ListItem's parent item or ListView. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |
| Since:            | Ubuntu.Components 1.2        |

<span id="attached-properties"></span>
Attached Properties
-------------------

-   ****[dragMode](index.html#dragMode-attached-prop)**** : bool
-   ****[expandedIndices](index.html#expandedIndices-attached-prop)**** : list&lt;int&gt;
-   ****[expansionFlags](index.html#expansionFlags-attached-prop)**** : ExpansionFlags
-   ****[selectMode](index.html#selectMode-attached-prop)**** : bool
-   ****[selectedIndices](index.html#selectedIndices-attached-prop)**** : list&lt;int&gt;

<span id="attached-signals"></span>
Attached Signals
----------------

-   ****[dragUpdated](index.html#dragUpdated-signal)****(ListItemDrag *event*)

<span id="details"></span>
Detailed Description
--------------------

These properties are automatically attached to the parent item of the [ListItem](../Ubuntu.Components.ListItem/index.html), or to [ListView](../../sdk-14.10/QtQuick.ListView/index.html), when the component is used as delegate.

Attached Property Documentation
-------------------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dragMode-attached-prop"></span><span class="name">ViewItems.dragMode</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property drives the dragging mode of the ListItems within a [ListView](../../sdk-14.10/QtQuick.ListView/index.html). It has no effect on any other parent of the [ListItem](../Ubuntu.Components.ListItem/index.html).

When set, [ListItem](../Ubuntu.Components.ListItem/index.html) content will be disabled and a panel will be shown enabling the dragging mode. The items can be dragged by dragging this handler only. The feature can be activated same time with [ListItem::selectMode](../Ubuntu.Components.ListItem/index.html#selectMode-prop).

The panel is configured by the style.

**See also** [ListItemStyle](../Ubuntu.Components.Styles.ListItemStyle/index.html) and [dragUpdated](index.html#dragUpdated-signal).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="expandedIndices-attached-prop"></span><span class="name">ViewItems.expandedIndices</span> : <span class="type">list</span>&lt;<span class="type">int</span>&gt;</p></td>
</tr>
</tbody>
</table>

The property contains the indexes of the ListItems marked as expanded. The indexes are model indexes when used in [ListView](../../sdk-14.10/QtQuick.ListView/index.html), and child indexes in other components. The property being writable, initial expansion configuration can be provided for a view, and provides ability to save the expansion state.

**Note:** If the [ViewItems::expansionFlags](index.html#expansionFlags-attached-prop) is having `ViewItems.Exclusive` flags set, only the last item from the list will be considered and set as expanded.

This QML property was introduced in Ubuntu.Components 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="expansionFlags-attached-prop"></span><span class="name">ViewItems.expansionFlags</span> : <span class="type">ExpansionFlags</span></p></td>
</tr>
</tbody>
</table>

Flags driving the expansion behavior.

| Flag                                           | description                                                                                                                                                                                    |
|------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [ViewItems](index.html).Exclusive              | When set, only one [ListItem](../Ubuntu.Components.ListItem/index.html) can be expanded at a time. **Set by default**.                                                                         |
| [ViewItems](index.html).UnlockExpanded         | When set, the [ListItem](../Ubuntu.Components.ListItem/index.html)'s leading/trailing actions can be swiped in.                                                                                |
| [ViewItems](index.html).CollapseOnOutsidePress | When set, the active expaned [ListItem](../Ubuntu.Components.ListItem/index.html) collapses automatically when clicked outside of its area. The flag also turns `ViewItems.Exclusive` flag on. |

This QML property was introduced in Ubuntu.Components 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectMode-attached-prop"></span><span class="name">ViewItems.selectMode</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property drives whether list items are selectable or not.

When set, the ListItems of the Item the property is attached to will enter into selection state. ListItems provide a visual clue which can be used to toggle the selection state of each, which in order will be reflected in the [ViewItems.selectedIndices](index.html#selectedIndices-attached-prop) list.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectedIndices-attached-prop"></span><span class="name">ViewItems.selectedIndices</span> : <span class="type">list</span>&lt;<span class="type">int</span>&gt;</p></td>
</tr>
</tbody>
</table>

The property contains the indexes of the ListItems marked as selected. The indexes are model indexes when used in [ListView](../../sdk-14.10/QtQuick.ListView/index.html), and child indexes in other components. The property being writable, initial selection configuration can be provided for a view, and provides ability to save the selection state.

Attached Signal Documentation
-----------------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dragUpdated-signal"></span><span class="name">dragUpdated</span>(<span class="type"><a href="../Ubuntu.Components.ListItemDrag/index.html">ListItemDrag</a></span> <em>event</em>)</p></td>
</tr>
</tbody>
</table>

The signal is emitted whenever a dragging related event occurrs. The **event.status** specifies the dragging event type. Depending on the type, the [ListItemDrag](../Ubuntu.Components.ListItemDrag/index.html) event properties will have the following meaning:

| status  | from                                          | to                                                 | minimumIndex                                           | maximumIndex                                           |
|---------|-----------------------------------------------|----------------------------------------------------|--------------------------------------------------------|--------------------------------------------------------|
| Started | the index of the item to be dragged           | -1                                                 | default (-1), can be changed to restrict moves         | default (-1), can be changed to restrict moves         |
| Moving  | source index from where the item dragged from | destination index where the item can be dragged to | the same value set at *Started*, can be changed        | the same value set at *Started*, can be changed        |
| Dropped | source index from where the item dragged from | destination index where the item can be dragged to | the value set at *Started/Moving*, changes are omitted | the value set at *Started/Moving*, changes are omitted |

Implementations **must move the model data** in order to re-order the [ListView](../../sdk-14.10/QtQuick.ListView/index.html) content. If the move is not acceptable, it must be cancelled by setting **event.accept** to *false*, in which case the dragged index (**from**) will not be updated and next time the signal is emitted will be the same.

An example implementation of a live dragging with restrictions:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
ListView {
    width: units.gu(40)
    height: units.gu(40)
    model: ListModel {
        // initiate with random data
    }
    delegate: ListItem {
        // content
    }
    ViewItems.dragMode: true
    ViewItems.onDragUpdated: {
        if (event.status == ListViewDrag.Started) {
            if (event.from < 5) {
                // deny dragging on the first 5 element
                event.accept = false;
            } else if (event.from >= 5 && event.from <= 10 &&
                       event.to >= 5 && event.to <= 10) {
                // specify the interval
                event.minimumIndex = 5;
                event.maximumIndex = 10;
            } else if (event.from > 10) {
                // prevent dragging to the first 11 items area
                event.minimumIndex = 11;
            }
        } else {
            model.move(event.from, event.to, 1);
        }
    }
}
```

A drag'n'drop implementation might be required when model changes are too expensive, and continuously updating while dragging would cause lot of traffic. The following example illustrates how to implement such a scenario:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
ListView {
   width: units.gu(40)
   height: units.gu(40)
   model: ListModel {
       // initiate with random data
   }
   delegate: ListItem {
       // content
   }
   ViewItems.dragMode: true
   ViewItems.onDragUpdated: {
       if (event.direction == ListItemDrag.Dropped) {
           // this is the last event, so drop the item
           model.move(event.from, event.to, 1);
       } else if (event.direction != ListItemDrag.Started) {
           // do not accept the moving events, so drag.from will
           // always contain the original drag index
           event.accept = false;
       }
   }
}
```

**Note:** Do not forget to set **event.accept** to false in **dragUpdated** in case the drag event handling is not accepted, otherwise the system will not know whether the move has been performed or not, and selected indexes will not be synchronized properly.

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
