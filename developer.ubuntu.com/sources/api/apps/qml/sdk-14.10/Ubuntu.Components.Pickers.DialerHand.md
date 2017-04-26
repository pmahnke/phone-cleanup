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
-   [Ubuntu.Components.Pickers](../Ubuntu.Components.Pickers/index.html) ›

<!-- -->

-   DialerHand

DialerHand
==========

<span class="subtitle"></span>
DialerHand represents a value selector on a Dialer. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td><code>import Ubuntu.Components.Pickers 1.0</code></td>
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
-   ****[dialer](index.html#dialer-prop)**** : Dialer
-   ****[hand](index.html#hand-prop)**** : DialerHandGroup
-   ****[hand.draggable](index.html#hand.draggable-prop)**** : bool
-   ****[hand.height](index.html#hand.height-prop)**** : real
-   ****[hand.toCenterItem](index.html#hand.toCenterItem-prop)**** : bool
-   ****[hand.visible](index.html#hand.visible-prop)**** : bool
-   ****[hand.width](index.html#hand.width-prop)**** : real
-   ****[index](index.html#index-prop)**** : int
-   ****[overlay](index.html#overlay-prop)**** : list&lt;QtObject&gt;
-   ****[style](index.html#style-prop)**** : Component
-   ****[value](index.html#value-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

DialerHand components have meaning only if those are placed inside Dialer components. The dialer hand presents a value selection from the given dialer's minimum and maximum values.

By default all hands are placed on the dialer's hand space, on the outer dialer disk. By default all hands have teh same size, 0.5GU width and height same as the handSpace specified in [Dialer](../Ubuntu.Components.Pickers.Dialer/index.html), however themes can specify preset values for each hand.

Hands can also be placed onto the inner disk by setting *hand.toCenterItem* property to true.

``` qml
Dialer {
    DialerHand {
        // this dialer hand will take the space as defined by the theme.
    }
    DialerHand {
        hand.height: units.gu(3)
        // this hand will have its width as defined by the theme
        // but height as 3 GU
    }
}
```

Items declared as children will be placed over the hands. These items will not be rotated togehther with the hand, these will always be shown horizontally. The hand can be hidden by setting false to *hand.visible* property, but that does not hide the overlay content.

The following example demonstrates how to create a hidden dialer hand having an overlay component on the hand.

``` qml
Dialer {
    DialerHand {
        id: selector
        hand.visible: false
        Rectangle {
            anchors.centerIn: parent
            width: height
            height: units.gu(3)
            radius: width / 2
            color: Theme.palette.normal.background
            antialiasing: true
            Label {
                text: Math.round(selector.value)
                anchors.centerIn: parent
            }
        }
    }
}
```

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

The property specifies whether the [StyledItem](../Ubuntu.Components.StyledItem/index.html) can gain focus on a mouse press/touch or not. When the value is true, the focus will be set on the component when the mouse is pressed over it or touched. However if one of the component's ancestor [StyledItem](../Ubuntu.Components.StyledItem/index.html) or derived is having the property value false, the focus will not be gained automatically.

In the following example the [TextField](../Ubuntu.Components.TextField/index.html) will stay focused when clicked on the red rectangle.

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
<td><p><span id="dialer-prop"></span><span class="qmlreadonly">read-only</span><span class="name">dialer</span> : <span class="type"><a href="../Ubuntu.Components.Pickers.Dialer/index.html">Dialer</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the dialer instance the hand is assigned to. This is a helper property to enable access to the dialer component hosting the hand.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hand-prop"></span><span class="name">hand</span> : <span class="type"><a href="https://developer.ubuntu.com/api/apps/qml/sdk-14.10/Ubuntu.Components.DialerHandGroup/">DialerHandGroup</a></span></p></td>
</tr>
</tbody>
</table>

The **hand.width** and **hand.height** properties define the size of the hand. The height of the hand must be in the \[0..dialer.handSpace\] range in order to have the hand displayed in the hand area, however there is no restriction applied on the size of the dialer hand. If no value is set, the width and height will be defined by the style.

**draggable** property specifies whether the hand is draggable or not. When set to not draggable, the hand is used only to indicate the given value. The default value is true.

**toCenterItem** property specifies whether the hand should be placed on the hand space (on the outer disk - false) or onto the center disk (inner disk - true). The default value is false, meaning the hand will be placed onto the hand space disk.

**visible** property specifies whether to show the hand marker or not. The default value is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hand.draggable-prop"></span><span class="name">hand.draggable</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td>
</tr>
</tbody>
</table>

The **hand.width** and **hand.height** properties define the size of the hand. The height of the hand must be in the \[0..dialer.handSpace\] range in order to have the hand displayed in the hand area, however there is no restriction applied on the size of the dialer hand. If no value is set, the width and height will be defined by the style.

**draggable** property specifies whether the hand is draggable or not. When set to not draggable, the hand is used only to indicate the given value. The default value is true.

**toCenterItem** property specifies whether the hand should be placed on the hand space (on the outer disk - false) or onto the center disk (inner disk - true). The default value is false, meaning the hand will be placed onto the hand space disk.

**visible** property specifies whether to show the hand marker or not. The default value is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hand.height-prop"></span><span class="name">hand.height</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span></p></td>
</tr>
</tbody>
</table>

The **hand.width** and **hand.height** properties define the size of the hand. The height of the hand must be in the \[0..dialer.handSpace\] range in order to have the hand displayed in the hand area, however there is no restriction applied on the size of the dialer hand. If no value is set, the width and height will be defined by the style.

**draggable** property specifies whether the hand is draggable or not. When set to not draggable, the hand is used only to indicate the given value. The default value is true.

**toCenterItem** property specifies whether the hand should be placed on the hand space (on the outer disk - false) or onto the center disk (inner disk - true). The default value is false, meaning the hand will be placed onto the hand space disk.

**visible** property specifies whether to show the hand marker or not. The default value is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hand.toCenterItem-prop"></span><span class="name">hand.toCenterItem</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td>
</tr>
</tbody>
</table>

The **hand.width** and **hand.height** properties define the size of the hand. The height of the hand must be in the \[0..dialer.handSpace\] range in order to have the hand displayed in the hand area, however there is no restriction applied on the size of the dialer hand. If no value is set, the width and height will be defined by the style.

**draggable** property specifies whether the hand is draggable or not. When set to not draggable, the hand is used only to indicate the given value. The default value is true.

**toCenterItem** property specifies whether the hand should be placed on the hand space (on the outer disk - false) or onto the center disk (inner disk - true). The default value is false, meaning the hand will be placed onto the hand space disk.

**visible** property specifies whether to show the hand marker or not. The default value is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hand.visible-prop"></span><span class="name">hand.visible</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td>
</tr>
</tbody>
</table>

The **hand.width** and **hand.height** properties define the size of the hand. The height of the hand must be in the \[0..dialer.handSpace\] range in order to have the hand displayed in the hand area, however there is no restriction applied on the size of the dialer hand. If no value is set, the width and height will be defined by the style.

**draggable** property specifies whether the hand is draggable or not. When set to not draggable, the hand is used only to indicate the given value. The default value is true.

**toCenterItem** property specifies whether the hand should be placed on the hand space (on the outer disk - false) or onto the center disk (inner disk - true). The default value is false, meaning the hand will be placed onto the hand space disk.

**visible** property specifies whether to show the hand marker or not. The default value is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hand.width-prop"></span><span class="name">hand.width</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span></p></td>
</tr>
</tbody>
</table>

The **hand.width** and **hand.height** properties define the size of the hand. The height of the hand must be in the \[0..dialer.handSpace\] range in order to have the hand displayed in the hand area, however there is no restriction applied on the size of the dialer hand. If no value is set, the width and height will be defined by the style.

**draggable** property specifies whether the hand is draggable or not. When set to not draggable, the hand is used only to indicate the given value. The default value is true.

**toCenterItem** property specifies whether the hand should be placed on the hand space (on the outer disk - false) or onto the center disk (inner disk - true). The default value is false, meaning the hand will be placed onto the hand space disk.

**visible** property specifies whether to show the hand marker or not. The default value is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="index-prop"></span><span class="qmlreadonly">read-only</span><span class="name">index</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-int.html">int</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the index of the hand. Note that this is not the child index of the dialer children, this represents the index of the [DialerHand](index.html) component added to the [dialer](index.html#dialer-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="overlay-prop"></span><span class="qmldefault">default</span><span class="name">overlay</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-list.html">list</a></span>&lt;<span class="type"><a href="../QtQml.QtObject/index.html">QtObject</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

The property holds the items that can be added on top of the hand. Note that these items will not be rotated together with the hand pointer and pointer visibility does not affect the overlay items visibility.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="style-prop"></span><span class="name">style</span> : <span class="type"><a href="../QtQml.Component/index.html">Component</a></span></p></td>
</tr>
</tbody>
</table>

Component instantiated immediately and placed below everything else.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="value-prop"></span><span class="name">value</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the selected value the dialer hand points to.

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
