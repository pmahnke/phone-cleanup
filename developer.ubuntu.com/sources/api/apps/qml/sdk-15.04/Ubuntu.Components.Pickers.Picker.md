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
-   [Ubuntu.Components.Pickers](../Ubuntu.Components.Pickers/index.html) ›

<!-- -->

-   Picker

Picker
======

<span class="subtitle"></span>
Picker is a slot-machine style value selection component. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components.Pickers 1.0</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="../Ubuntu.Components.StyledItem/index.html">StyledItem</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[activeFocusOnPress](index.html#activeFocusOnPress-prop)**** : bool
-   ****[circular](index.html#circular-prop)**** : bool
-   ****[delegate](index.html#delegate-prop)**** : Component
-   ****[live](index.html#live-prop)**** : bool
-   ****[model](index.html#model-prop)**** : var
-   ****[moving](index.html#moving-prop)**** : bool
-   ****[selectedIndex](index.html#selectedIndex-prop)**** : int
-   ****[style](index.html#style-prop)**** : Component

<span id="methods"></span>
Methods
-------

-   ****[positionViewAtIndex](index.html#positionViewAtIndex-method)****(*index*)

<span id="details"></span>
Detailed Description
--------------------

The Picker lists the elements specified by the [model](index.html#model-prop) using the [delegate](index.html#delegate-prop) vertically using a slot-machine tumbler-like list. The selected item is always the one in the center of the component, and it is represented by the [selectedIndex](index.html#selectedIndex-prop) property.

The elements can be either in a circular list or in a normal list.

Delegates must be composed using [PickerDelegate](../Ubuntu.Components.Pickers.PickerDelegate/index.html).

Example:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
import Ubuntu.Components.Pickers 1.0
Picker {
    model: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sept", "Oct", "Nov", "Dec"]
    delegate: PickerDelegate {
        Label {
            text: modelData
        }
    }
    selectedIndex: 5
    onSelectedIndexChanged: {
        print("selected month: " + selectedIndex);
    }
}
```

**Note**: the [selectedIndex](index.html#selectedIndex-prop) must be set explicitly to the desired index if the model is set, filled or changed after the component is complete. In the following example the selected item must be set after the model is set.

``` qml
Picker {
    selectedIndex: 5 // this will be set to 0 at the model completion
    delegate: PickerDelegate {
        Label {
            text: modelData
        }
    }
    Component.onCompleted: {
        var stack = [];
        for (var i = 0; i < 10; i++) {
            stack.push("Line " + i);
        }
        model = stack;
        // selectedIndex must be set explicitly
        selectedIndex = 3;
    }
}
```

<span id="known-issues"></span>
#### Known issues

-   \[1\] Circular picker does not react on touch generated flicks (on touch enabled devices) when nested into a Flickable - <https://bugreports.qt-project.org/browse/QTBUG-13690> and <https://bugreports.qt-project.org/browse/QTBUG-30840>
-   \[2\] Circular picker sets [selectedIndex](index.html#selectedIndex-prop) to 0 when the model is cleared, contrary to linear one, which sets it to -1 - <https://bugreports.qt-project.org/browse/QTBUG-35400>

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

The property specifies whether the [StyledItem](../Ubuntu.Components.StyledItem/index.html) can gain focus on a mouse press/touch or not. When the value is true, the focus will be set on the component when the mouse is pressed over it or touched. However if one of the component's ancestor [StyledItem](../Ubuntu.Components.StyledItem/index.html) or derived is having the property value false, the focus will not be gained automatically.

In the following example the [TextField](../Ubuntu.Components.TextField/index.html) will stay focused when clicked on the red rectangle.

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
<td><p><span id="circular-prop"></span><span class="name">circular</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Property specifying whether the tumbler list is wrap-around (*true*), or normal (*false*). Default value is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="delegate-prop"></span><span class="name">delegate</span> : <span class="type"><a href="../../sdk-14.10/QtQml.Component/index.html">Component</a></span></p></td>
</tr>
</tbody>
</table>

The delegate visualizing the model elements. Any kind of component can be used as delegate, however it is recommended to use [PickerDelegate](../Ubuntu.Components.Pickers.PickerDelegate/index.html), which integrates selection functionality into the Picker.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="live-prop"></span><span class="name">live</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Defines whether the [selectedIndex](index.html#selectedIndex-prop) should be updated while the tumbler changes the selected item during draggingm or only when the tumbler's motion ends. The default behavior is non-live update.

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

Specifies the model listing the content of the picker.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="moving-prop"></span><span class="qmlreadonly">read-only</span><span class="name">moving</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property holds whether the picker's view is moving due to the user interaction either by dragging, flicking or due to the manual change of the [selectedIndex](index.html#selectedIndex-prop) property.

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

The property holds the index of the selected item

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="style-prop"></span><span class="name">style</span> : <span class="type"><a href="../../sdk-14.10/QtQml.Component/index.html">Component</a></span></p></td>
</tr>
</tbody>
</table>

Component instantiated immediately and placed below everything else.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="positionViewAtIndex-method"></span><span class="name">positionViewAtIndex</span>( <em>index</em>)</p></td>
</tr>
</tbody>
</table>

The function positions the picker's view to the given index without animating the view. The component must be ready when calling the function, e.g. to make sure the Picker shows up at the given index, do the following:

``` qml
Picker {
    model: 120
    delegate: PickerDelegate {
        Label {
            anchors.fill: parent
            verticalCenter: Text.AlignVCenter
            text: modelData
        }
    }
    Component.onCompleted: positionViewAtIndex(10)
}
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
