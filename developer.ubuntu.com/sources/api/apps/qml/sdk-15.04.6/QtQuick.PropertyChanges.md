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
-   [SDK 15.04.6](../index.html) ›
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   PropertyChanges

PropertyChanges
===============

<span class="subtitle"></span>
Describes new property bindings or values for a state More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[explicit](index.html#explicit-prop)**** : bool
-   ****[restoreEntryValues](index.html#restoreEntryValues-prop)**** : bool
-   ****[target](index.html#target-prop)**** : Object

<span id="details"></span>
Detailed Description
--------------------

[PropertyChanges](index.html) is used to define the property values or bindings in a [State](../QtQuick.State/index.html). This enables an item's property values to be changed when it [changes between states](../QtQuick.qtquick-statesanimations-states/index.html).

To create a [PropertyChanges](index.html) object, specify the [target](index.html#target-prop) item whose properties are to be modified, and define the new property values or bindings. For example:

``` qml
import QtQuick 2.0
Item {
    id: container
    width: 300; height: 300
    Rectangle {
        id: rect
        width: 100; height: 100
        color: "red"
        MouseArea {
           id: mouseArea
           anchors.fill: parent
        }
        states: State {
           name: "resized"; when: mouseArea.pressed
           PropertyChanges { target: rect; color: "blue"; height: container.height }
        }
    }
}
```

When the mouse is pressed, the [Rectangle](../QtQuick.Rectangle/index.html) changes to the *resized* state. In this state, the [PropertyChanges](index.html) object sets the rectangle's color to blue and the `height` value to that of `container.height`.

Note this automatically binds `rect.height` to `container.height` in the *resized* state. If a property binding should not be established, and the height should just be set to the value of `container.height` at the time of the state change, set the [explicit](index.html#explicit-prop) property to `true`.

A [PropertyChanges](index.html) object can also override the default signal handler for an object to implement a signal handler specific to the new state:

``` qml
PropertyChanges {
    target: myMouseArea
    onClicked: doSomethingDifferent()
}
```

**Note:** [PropertyChanges](index.html) can be used to change anchor margins, but not other anchor values; use [AnchorChanges](../QtQuick.AnchorChanges/index.html) for this instead. Similarly, to change an [Item](../QtQuick.Item/index.html)'s [parent](../QtQuick.Item/index.html#parent-prop) value, use [ParentChange](../QtQuick.ParentChange/index.html) instead.

<span id="resetting-property-values"></span>
### Resetting property values

The `undefined` value can be used to reset the property value for a state. In the following example, when `myText` changes to the *widerText* state, its `width` property is reset, giving the text its natural width and displaying the whole string on a single line.

``` qml
Rectangle {
    width: 300; height: 200
    Text {
        id: myText
        width: 50
        wrapMode: Text.WordWrap
        text: "a text string that is longer than 50 pixels"
        states: State {
            name: "widerText"
            PropertyChanges { target: myText; width: undefined }
        }
    }
    MouseArea {
        anchors.fill: parent
        onClicked: myText.state = "widerText"
    }
}
```

<span id="immediate-property-changes-in-transitions"></span>
### Immediate property changes in transitions

When [Transitions](../QtQuick.qtquick-statesanimations-animations/index.html) are used to animate state changes, they animate properties from their values in the current state to those defined in the new state (as defined by [PropertyChanges](index.html) objects). However, it is sometimes desirable to set a property value *immediately* during a [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition), without animation; in these cases, the [PropertyAction](../QtQuick.PropertyAction/index.html) type can be used to force an immediate property change.

See the [PropertyAction](../QtQuick.PropertyAction/index.html) documentation for more details.

**Note:** The [visible](../QtQuick.Item/index.html#visible-prop) and [enabled](../QtQuick.Item/index.html#enabled-prop) properties of [Item](../QtQuick.Item/index.html) do not behave exactly the same as other properties in [PropertyChanges](index.html). Since these properties can be changed implicitly through their parent's state, they should be set explicitly in all [PropertyChanges](index.html). An item will still not be enabled/visible if one of its parents is not enabled or visible.

**See also** [States example](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.6/QtQuick.animation/#states), [Qt Quick States](../QtQuick.qtquick-statesanimations-states/index.html), and Qt QML.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="explicit-prop"></span><span class="name">explicit</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If explicit is set to true, any potential bindings will be interpreted as once-off assignments that occur when the state is entered.

In the following example, the addition of explicit prevents `myItem.width` from being bound to `parent.width`. Instead, it is assigned the value of `parent.width` at the time of the state change.

``` qml
PropertyChanges {
    target: myItem
    explicit: true
    width: parent.width
}
```

By default, explicit is false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="restoreEntryValues-prop"></span><span class="name">restoreEntryValues</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the previous values should be restored when leaving the state.

The default value is `true`. Setting this value to `false` creates a temporary state that has permanent effects on property values.

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

This property holds the object which contains the properties to be changed.

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
