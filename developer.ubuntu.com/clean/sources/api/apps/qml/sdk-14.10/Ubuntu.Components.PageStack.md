---
Title: Ubuntu.Components.PageStack
---
        
PageStack
=========

<span class="subtitle"></span>
A stack of Page items that is used for inter-Page navigation. Pages on the stack can be popped, and new Pages can be pushed. The page on top of the stack is the visible one. More...

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
<td>Inherits:</td>
<td><p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[currentPage](#currentPage-prop)**** : Item` (preliminary)`
-   ****[data](#data-prop)**** : list&lt;Object&gt;
-   ****[depth](#depth-prop)**** : int` (preliminary)`

<span id="methods"></span>
Methods
-------

-   ****[clear](#clear-method)****()` (preliminary)`
-   ****[pop](#pop-method)****()` (preliminary)`
-   ****[push](#push-method)****(*page*, *properties*)` (preliminary)`

<span id="details"></span>
Detailed Description
--------------------

PageStack should be used inside a [MainView](../Ubuntu.Components.MainView.md) in order to automatically add a header and toolbar to control the stack. The PageStack will automatically set the header title to the title of the [Page](../Ubuntu.Components.Page.md) that is currently on top of the stack, and the tools of the toolbar to the tools of the [Page](../Ubuntu.Components.Page.md) on top of the stack. When more than one Pages are on the stack, the toolbar will automatically feature a back-button that pop the stack when triggered.

The anchors of the PageStack are set to fill its parent by default. To use left/right/top/bottom anchors, explicitly set anchors.fill of the PageStack to undefined:

``` qml
import QtQuick 2.2
import Ubuntu.Components 1.1
MainView {
    width: units.gu(40)
    height: units.gu(71)
    PageStack {
        id: mainStack
        anchors {
            fill: undefined // unset the default to make the other anchors work
            left: parent.left
            right: parent.right
            top: parent.top
            bottom: rect.top
        }
    }
    Rectangle {
        id: rect
        color: UbuntuColors.red
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
        height: units.gu(10)
    }
    Component.onCompleted: mainStack.push(Qt.resolvedUrl("MyPage.qml"))
}
```

Pages that are defined inside the PageStack must initially set their visibility to false to avoid the pages occluding the PageStack before they are pushed. When pushing a [Page](../Ubuntu.Components.Page.md), its visibility is automatically updated.

Example:

``` qml
import QtQuick 2.0
import Ubuntu.Components 1.1
import Ubuntu.Components.ListItems 1.0 as ListItem
MainView {
    width: units.gu(48)
    height: units.gu(60)
    PageStack {
        id: pageStack
        Component.onCompleted: push(page0)
        Page {
            id: page0
            title: i18n.tr("Root page")
            visible: false
            Column {
                anchors.fill: parent
                ListItem.Standard {
                    text: i18n.tr("Page one")
                    onClicked: pageStack.push(page1, {color: UbuntuColors.orange})
                    progression: true
                }
                ListItem.Standard {
                    text: i18n.tr("External page")
                    onClicked: pageStack.push(Qt.resolvedUrl("MyCustomPage.qml"))
                    progression: true
                }
            }
        }
        Page {
            title: "Rectangle"
            id: page1
            visible: false
            property alias color: rectangle.color
            Rectangle {
                id: rectangle
                anchors {
                    fill: parent
                    margins: units.gu(5)
                }
            }
        }
    }
}
```

As shown in the example above, the [push()](#push-method) function can take an Item, Component or URL as input.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="currentPage-prop"></span><span class="name">currentPage</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

The currently active page

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="data-prop"></span><span class="qmldefault">default</span><span class="name">data</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-list.html">list</a></span>&lt;<span class="type"><a href="https://developer.ubuntu.comapps/qml/sdk-14.10/Ubuntu.Components.Object/">Object</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

Children of [PageStack](index.html) are placed in a separate item such that they are not active by default until they are pushed on the [PageStack](index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="depth-prop"></span><span class="name">depth</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-int.html">int</a></span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

The current size of the stack

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="clear-method"></span><span class="name">clear</span>()</p></td>
</tr>
</tbody>
</table>

**This QML method is under development and is subject to change.**

Deactivate the active page and clear the stack.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pop-method"></span><span class="name">pop</span>()</p></td>
</tr>
</tbody>
</table>

**This QML method is under development and is subject to change.**

Pop the top item from the stack if the stack size is at least 1. Do not do anything if 0 or 1 items are on the stack.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="push-method"></span><span class="name">push</span>( <em>page</em>, <em>properties</em>)</p></td>
</tr>
</tbody>
</table>

**This QML method is under development and is subject to change.**

Push a page to the stack, and apply the given (optional) properties to the page. The pushed page may be an Item, Component or URL. The function returns the Item that was pushed, or the Item that was created from the Component or URL. Depending on the animation of the header, the returned Page may or may not be active and on top of the [PageStack](index.html) yet.

