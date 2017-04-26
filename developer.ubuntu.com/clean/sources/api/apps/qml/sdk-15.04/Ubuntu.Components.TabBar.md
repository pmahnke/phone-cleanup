---
Title: Ubuntu.Components.TabBar
---
        
TabBar
======

<span class="subtitle"></span>
Tab bar that will be shown in the header when Tabs is active. This component does not need to be instantiated by the developer, it is automatically created by the Tabs. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components 1.2</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p></td>
</tr>
</tbody>
</table>

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[activeFocusOnPress](#activeFocusOnPress-prop)**** : bool
-   ****[alwaysSelectionMode](#alwaysSelectionMode-prop)**** : bool
-   ****[animate](#animate-prop)**** : bool
-   ****[model](#model-prop)**** : var
-   ****[pressed](#pressed-prop)**** : bool
-   ****[selectedIndex](#selectedIndex-prop)**** : int
-   ****[selectionMode](#selectionMode-prop)**** : bool
-   ****[style](#style-prop)**** : Component

<span id="details"></span>
Detailed Description
--------------------

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="activeFocusOnPress-prop"></span><span class="name">activeFocusOnPress</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property specifies whether the [StyledItem](../Ubuntu.Components.StyledItem.md) can gain focus on a mouse press/touch or not. When the value is true, the focus will be set on the component when the mouse is pressed over it or touched. However if one of the component's ancestor [StyledItem](../Ubuntu.Components.StyledItem.md) or derived is having the property value false, the focus will not be gained automatically.

In the following example the [TextField](../Ubuntu.Components.TextField.md) will stay focused when clicked on the red rectangle.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
Column {
    width: units.gu(50)
    height: units.gu(100)
    StyledItem {
        objectName: "passiveScope"
        width: parent.width
        height: units.gu(30)
        Rectangle {
            anchors.fill: parent
            color: "red"
            StyledItem {
                objectName: "activeScope"
                activeFocusOnPress: true
                anchors.fill: parent
            }
        }
    }
    TextField {
        id: input
        text: "The input stays focus even if red box is clicked"
    }
    Component.onCompleted: input.forceActiveFocus()
    Connections {
        target: window
        onActiveFocusItemChanged: console.debug("focus on", window.activeFocusItem)
    }
}
```

The default value is `false`.

This QML property was introduced in Ubuntu.Components 1.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="alwaysSelectionMode-prop"></span><span class="name">alwaysSelectionMode</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Do not deactivate the tab bar after a specified idle time or when the user selects a new tab. Off by default.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="animate-prop"></span><span class="name">animate</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Show animations when the state changes. Default: true.

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

The model containing the tabs to be controlled by the [TabBar](index.html). The tabs are visualized by the style, displaying controlling elements based on the data specified by the roles. The default style mandates the existence of either the **title** or **tab** role, but different styles may require to have other roles (e.g. image, color). The order the role existence is checked is also determined by the style component, Default style checks the existence of the **tab** role first, and if not defined will use the **title** role.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pressed-prop"></span><span class="qmlreadonly">read-only</span><span class="name">pressed</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The user is interacting with the tab bar. Depends on the style pressed property.

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

The property holds the index of the selected Tab item. Note: Setting this property is DEPRECATED. Set the selectedIndex of the model instead.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectionMode-prop"></span><span class="name">selectionMode</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

An inactive tab bar only displays the currently selected tab, and an active tab bar can be interacted with to select a tab.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="style-prop"></span><span class="name">style</span> : <span class="type"><a href="../sdk-14.10/QtQml.Component.md">Component</a></span></p></td>
</tr>
</tbody>
</table>

Component instantiated immediately and placed below everything else.

