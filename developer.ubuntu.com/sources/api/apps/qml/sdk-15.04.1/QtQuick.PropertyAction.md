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
-   [SDK 15.04.1](../index.html) ›
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   PropertyAction

PropertyAction
==============

<span class="subtitle"></span>
Specifies immediate property changes during animation More...

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
<td><p><a href="../QtQuick.Animation/index.html">Animation</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[exclude](index.html#exclude-prop)**** : list&lt;Object&gt;
-   ****[properties](index.html#properties-prop)**** : string
-   ****[property](index.html#property-prop)**** : string
-   ****[target](index.html#target-prop)**** : Object
-   ****[targets](index.html#targets-prop)**** : list&lt;Object&gt;
-   ****[value](index.html#value-prop)**** : any

<span id="details"></span>
Detailed Description
--------------------

[PropertyAction](index.html) is used to specify an immediate property change during an animation. The property change is not animated.

It is useful for setting non-animated property values during an animation.

For example, here is a [SequentialAnimation](../QtQuick.SequentialAnimation/index.html) that sets the image's [opacity](../QtQuick.Item/index.html#opacity-prop) property to `.5`, animates the width of the image, then sets [opacity](../QtQuick.Item/index.html#opacity-prop) back to `1`:

``` qml
SequentialAnimation {
    PropertyAction { target: img; property: "opacity"; value: .5 }
    NumberAnimation { target: img; property: "width"; to: 300; duration: 1000 }
    PropertyAction { target: img; property: "opacity"; value: 1 }
}
```

[PropertyAction](index.html) is also useful for setting the exact point at which a property change should occur during a [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition). For example, if [PropertyChanges](../QtQuick.PropertyChanges/index.html) was used in a [State](../QtQuick.State/index.html) to rotate an item around a particular [transformOrigin](../QtQuick.Item/index.html#transformOrigin-prop), it might be implemented like this:

``` qml
Item {
    width: 400; height: 400
    Rectangle {
        id: rect
        width: 200; height: 100
        color: "red"
        states: State {
            name: "rotated"
            PropertyChanges { target: rect; rotation: 180; transformOrigin: Item.BottomRight }
        }
        transitions: Transition {
            RotationAnimation { duration: 1000; direction: RotationAnimation.Counterclockwise }
        }
        MouseArea {
            anchors.fill: parent
            onClicked: rect.state = "rotated"
        }
    }
}
```

However, with this code, the `transformOrigin` is not set until *after* the animation, as a [State](../QtQuick.State/index.html) is taken to define the values at the *end* of a transition. The animation would rotate at the default `transformOrigin`, then jump to `Item.BottomRight`. To fix this, insert a [PropertyAction](index.html) before the [RotationAnimation](../QtQuick.RotationAnimation/index.html) begins:

``` qml
transitions: Transition {
    SequentialAnimation {
        PropertyAction { target: rect; property: "transformOrigin" }
        RotationAnimation { duration: 1000; direction: RotationAnimation.Counterclockwise }
    }
}
```

This immediately sets the `transformOrigin` property to the value defined in the end state of the [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition) (i.e. the value defined in the [PropertyAction](index.html) object) so that the rotation animation begins with the correct transform origin.

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations/index.html) and Qt QML.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="exclude-prop"></span><span class="name">exclude</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the objects that should not be affected by this action.

**See also** [targets](index.html#targets-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="properties-prop"></span><span class="name">properties</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

These properties determine the items and their properties that are affected by this action.

The details of how these properties are interpreted in different situations is covered in the [corresponding](../QtQuick.PropertyAnimation/index.html#properties-prop) [PropertyAnimation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtQuick.animation/#propertyanimation) documentation.

**See also** [exclude](index.html#exclude-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="property-prop"></span><span class="name">property</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

These properties determine the items and their properties that are affected by this action.

The details of how these properties are interpreted in different situations is covered in the [corresponding](../QtQuick.PropertyAnimation/index.html#properties-prop) [PropertyAnimation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtQuick.animation/#propertyanimation) documentation.

**See also** [exclude](index.html#exclude-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="target-prop"></span><span class="name">target</span> : <span class="type">Object</span></p></td>
</tr>
</tbody>
</table>

These properties determine the items and their properties that are affected by this action.

The details of how these properties are interpreted in different situations is covered in the [corresponding](../QtQuick.PropertyAnimation/index.html#properties-prop) [PropertyAnimation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtQuick.animation/#propertyanimation) documentation.

**See also** [exclude](index.html#exclude-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="targets-prop"></span><span class="name">targets</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td>
</tr>
</tbody>
</table>

These properties determine the items and their properties that are affected by this action.

The details of how these properties are interpreted in different situations is covered in the [corresponding](../QtQuick.PropertyAnimation/index.html#properties-prop) [PropertyAnimation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtQuick.animation/#propertyanimation) documentation.

**See also** [exclude](index.html#exclude-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="value-prop"></span><span class="name">value</span> : <span class="type">any</span></p></td>
</tr>
</tbody>
</table>

This property holds the value to be set on the property.

If the [PropertyAction](index.html) is defined within a [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition) or [Behavior](../QtQuick.Behavior/index.html), this value defaults to the value defined in the end state of the [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition), or the value of the property change that triggered the [Behavior](../QtQuick.Behavior/index.html).

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
