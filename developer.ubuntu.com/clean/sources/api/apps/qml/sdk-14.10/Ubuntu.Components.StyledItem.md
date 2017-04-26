---
Title: Ubuntu.Components.StyledItem
---
        
StyledItem
==========

<span class="subtitle"></span>
The StyledItem class allows items to be styled by the theme. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td><code>import Ubuntu.Components 1.1</code></td>
</tr>
<tr class="even">
<td>Inherited By:</td>
<td><p><a href="Ubuntu.Components.ActionItem.md">ActionItem</a>, <a href="https://developer.ubuntu.comapps/qml/sdk-14.10/Ubuntu.Components.AppHeader/">AppHeader</a>, <a href="Ubuntu.Components.Pickers.DatePicker.md">DatePicker</a>, <a href="Ubuntu.Components.Pickers.Dialer.md">Dialer</a>, <a href="Ubuntu.Components.Pickers.DialerHand.md">DialerHand</a>, <a href="https://developer.ubuntu.comapps/qml/sdk-14.10/Ubuntu.Components.PageTreeNode/">PageTreeNode</a>, <a href="Ubuntu.Components.Pickers.Picker.md">Picker</a>, <a href="Ubuntu.Components.PullToRefresh.md">PullToRefresh</a>, <a href="Ubuntu.Components.Scrollbar.md">Scrollbar</a>, <a href="Ubuntu.Components.Slider.md">Slider</a>, <a href="Ubuntu.Components.TabBar.md">TabBar</a>, and <a href="Ubuntu.Components.TextArea.md">TextArea</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[activeFocusOnPress](#activeFocusOnPress-prop)**** : bool
-   ****[style](#style-prop)**** : Component

<span id="details"></span>
Detailed Description
--------------------

StyledItem provides facilities for making an Item stylable by the theme.

In order to make an Item stylable by the theme, it is enough to make the Item inherit from StyledItem and set its [style](#style-prop) property to be the result of the appropriate call to Theme.createStyleComponent().

Example definition of a custom Item MyItem.qml:

``` qml
StyledItem {
    id: myItem
    style: Theme.createStyleComponent("MyItemStyle.qml", myItem)
}
```

The Component set on [style](#style-prop) is instantiated and placed below everything else that the Item contains.

A reference to the Item being styled is accessible from the style and named 'styledItem'.

**See also** [Theme](../Ubuntu.Components.Theme.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="activeFocusOnPress-prop"></span><span class="name">activeFocusOnPress</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td>
</tr>
</tbody>
</table>

The property specifies whether the [StyledItem](index.html) can gain focus on a mouse press/touch or not. When the value is true, the focus will be set on the component when the mouse is pressed over it or touched. However if one of the component's ancestor [StyledItem](index.html) or derived is having the property value false, the focus will not be gained automatically.

In the following example the [TextField](../Ubuntu.Components.TextField.md) will stay focused when clicked on the red rectangle.

``` qml
import QtQuick 2.2
import Ubuntu.Components 1.1
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
<td><p><span id="style-prop"></span><span class="name">style</span> : <span class="type"><a href="QtQml.Component.md">Component</a></span></p></td>
</tr>
</tbody>
</table>

Component instantiated immediately and placed below everything else.

