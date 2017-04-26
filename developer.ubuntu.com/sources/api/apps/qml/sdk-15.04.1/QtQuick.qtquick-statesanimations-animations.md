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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.1</a> ›
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   Animation and Transitions in Qt Quick

Animation and Transitions in Qt Quick
=====================================

<span class="subtitle"></span>
<span id="details"></span> <span id="animation-and-transitions-types"></span>
Animation and Transitions Types
-------------------------------

-   [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition) - Animates transitions during state changes
-   [SequentialAnimation](../QtQuick.SequentialAnimation/index.html) - Runs animations sequentially
-   [ParallelAnimation](../QtQuick.ParallelAnimation/index.html) - Runs animations in parallel
-   [Behavior](../QtQuick.Behavior/index.html) - Specifies a default animation for property changes
-   [PropertyAction](../QtQuick.PropertyAction/index.html) - Sets immediate property changes during animation
-   [PauseAnimation](../QtQuick.PauseAnimation/index.html) - Introduces a pause in an animation
-   [SmoothedAnimation](../QtQuick.SmoothedAnimation/index.html) - Allows a property to smoothly track a value
-   [SpringAnimation](../QtQuick.SpringAnimation/index.html) - Allows a property to track a value in a spring-like motion
-   [ScriptAction](../QtQuick.ScriptAction/index.html) - Runs scripts during an animation

Types that animate properties based on data types

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../QtQuick.AnchorAnimation/index.html">AnchorAnimation</a></p></td>
<td><p>Animates changes in anchor values</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtQuick.ColorAnimation/index.html">ColorAnimation</a></p></td>
<td><p>Animates changes in color values</p></td>
</tr>
<tr class="odd">
<td><p><a href="../QtQuick.NumberAnimation/index.html">NumberAnimation</a></p></td>
<td><p>Animates changes in qreal-type values</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtQuick.ParentAnimation/index.html">ParentAnimation</a></p></td>
<td><p>Animates changes in parent values</p></td>
</tr>
<tr class="odd">
<td><p><a href="../QtQuick.PathAnimation/index.html">PathAnimation</a></p></td>
<td><p>Animates an item along a path</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtQuick.PropertyAnimation/index.html">PropertyAnimation</a></p></td>
<td><p>Animates changes in property values</p></td>
</tr>
<tr class="odd">
<td><p><a href="../QtQuick.RotationAnimation/index.html">RotationAnimation</a></p></td>
<td><p>Animates changes in rotation values</p></td>
</tr>
<tr class="even">
<td><p><a href="../QtQuick.Vector3dAnimation/index.html">Vector3dAnimation</a></p></td>
<td><p>Animates changes in QVector3d values</p></td>
</tr>
</tbody>
</table>

Animations are created by applying animation types to property values. Animation types will interpolate property values to create smooth transitions. As well, state transitions may assign animations to state changes.

To create an animation, use an appropriate animation type for the type of the property that is to be animated, and apply the animation depending on the type of behavior that is required.

<span id="triggering-animations"></span>
Triggering Animations
---------------------

There are several ways of setting animation to an object.

<span id="direct-property-animation"></span>
### Direct Property Animation

Animations are created by applying animation objects to property values to gradually change the properties over time. These *property animations* apply smooth movements by interpolating values between property value changes. Property animations provide timing controls and allows different interpolations through [easing curves](index.html#qml-easing-animation).

``` qml
Rectangle {
    id: flashingblob
    width: 75; height: 75
    color: "blue"
    opacity: 1.0
    MouseArea {
        anchors.fill: parent
        onClicked: {
            animateColor.start()
            animateOpacity.start()
        }
    }
    PropertyAnimation {id: animateColor; target: flashingblob; properties: "color"; to: "green"; duration: 100}
    NumberAnimation {
        id: animateOpacity
        target: flashingblob
        properties: "opacity"
        from: 0.99
        to: 1.0
        loops: Animation.Infinite
        easing {type: Easing.OutBack; overshoot: 500}
   }
}
```

Specialized property animation types have more efficient implementations than the [PropertyAnimation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtQuick.animation/#propertyanimation) type. They are for setting animations to different QML types such as `int`, `color`, and rotations. Similarly, the [ParentAnimation](../QtQuick.ParentAnimation/index.html) can animate parent changes.

See the [Controlling Animations](index.html#qml-controlling-animations) section for more information about the different animation properties.

<span id="using-predefined-targets-and-properties"></span>
### Using Predefined Targets and Properties

In the previous example, the [PropertyAnimation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtQuick.animation/#propertyanimation) and [NumberAnimation](../QtQuick.NumberAnimation/index.html) objects needed to specify particular [target](../QtQuick.PropertyAnimation/index.html#target-prop) and [properties](../QtQuick.PropertyAnimation/index.html#properties-prop) values to specify the objects and properties that should be animated. This can be avoided by using the *&lt;Animation&gt; on &lt;Property&gt;* syntax, which specifies the animation is to be applied as a *property value source*.

Below are two [PropertyAnimation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtQuick.animation/#propertyanimation) objects that are specified using this syntax:

``` qml
import QtQuick 2.0
Rectangle {
    id: rect
    width: 100; height: 100
    color: "red"
    PropertyAnimation on x { to: 100 }
    PropertyAnimation on y { to: 100 }
}
```

The animation starts as soon as the rectangle is loaded, and will automatically be applied to its `x` and `y` values. Since the *&lt;Animation&gt; on &lt;Property&gt;* syntax has been used, it is not necessary to set the [target](../QtQuick.PropertyAnimation/index.html#target-prop) value of the [PropertyAnimation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtQuick.animation/#propertyanimation) objects to `rect`, and neither is it necessary to set the [property](../QtQuick.PropertyAnimation/index.html#property-prop) values to `x` and `y`.

This can also be used by [grouped animations](index.html#playing-animations-in-parallel-or-in-sequence) to ensure that all animations within a group are applied to the same property. For example, the previous example could instead use [SequentialAnimation](../QtQuick.SequentialAnimation/index.html) to animate the rectangle's `color` first to yellow, then to blue:

``` qml
import QtQuick 2.0
Rectangle {
    width: 100; height: 100
    color: "red"
    SequentialAnimation on color {
        ColorAnimation { to: "yellow"; duration: 1000 }
        ColorAnimation { to: "blue"; duration: 1000 }
    }
}
```

Since the [SequentialAnimation](../QtQuick.SequentialAnimation/index.html) object has been specified on the `color` property using the *&lt;Animation&gt; on &lt;Property&gt;* syntax, its child [ColorAnimation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtQuick.animation/#coloranimation) objects are also automatically applied to this property and do not need to specify [target](../QtQuick.PropertyAnimation/index.html#target-prop) or [property](../QtQuick.PropertyAnimation/index.html#property-prop) animation values.

<span id="qml-transition-animations"></span><span id="transitions-during-state-changes"></span>
### Transitions during State Changes

[Qt Quick States](../QtQuick.State/index.html) are property configurations where a property may have different values to reflect different states. State changes introduce abrupt property changes; animations smooth transitions to produce visually appealing state changes.

The [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition) type can contain animation types to interpolate property changes caused by state changes. To assign the transition to an object, bind it to the `transitions` property.

A button might have two states, the `pressed` state when the user clicks on the button and a `released` state when the user releases the button. We can assign different property configurations for each state. A transition would animate the change from the `pressed` state to the `released` state. Likewise, there would be an animation during the change from the `released` state to the `pressed` state.

``` qml
Rectangle {
    width: 75; height: 75
    id: button
    state: "RELEASED"
    MouseArea {
        anchors.fill: parent
        onPressed: button.state = "PRESSED"
        onReleased: button.state = "RELEASED"
    }
    states: [
        State {
            name: "PRESSED"
            PropertyChanges { target: button; color: "lightblue"}
        },
        State {
            name: "RELEASED"
            PropertyChanges { target: button; color: "lightsteelblue"}
        }
    ]
    transitions: [
        Transition {
            from: "PRESSED"
            to: "RELEASED"
            ColorAnimation { target: button; duration: 100}
        },
        Transition {
            from: "RELEASED"
            to: "PRESSED"
            ColorAnimation { target: button; duration: 100}
        }
    ]
}
```

Binding the `to` and `from` properties to the state's name will assign that particular transition to the state change. For simple or symmetric transitions, setting the to `to` property to the wild card symbol, "`*`", denotes that the transition applies to any state change.

``` qml
    transitions:
        Transition {
            to: "*"
            ColorAnimation { target: button; duration: 100}
        }
```

<span id="default-animation-as-behaviors"></span>
### Default Animation as Behaviors

Default property animations are set using *behavior animations*. Animations declared in [Behavior](../QtQuick.Behavior/index.html) types apply to the property and animates any property value changes. However, Behavior types have an `enabled` property to purposely enable or disable the behavior animations.

A ball component might have a behavior animation assigned to its `x`, `y`, and `color` properties. The behavior animation could be set up to simulate an elastic effect. In effect, this behavior animation would apply the elastic effect to the properties whenever the ball moves.

``` qml
Rectangle {
    width: 75; height: 75; radius: width
    id: ball
    color: "salmon"
    Behavior on x {
        NumberAnimation {
            id: bouncebehavior
            easing {
                type: Easing.OutElastic
                amplitude: 1.0
                period: 0.5
            }
        }
    }
    Behavior on y {
        animation: bouncebehavior
    }
    Behavior {
        ColorAnimation { target: ball; duration: 100 }
    }
}
```

There are several methods of assigning behavior animations to properties. The `Behavior on <property>` declaration is a convenient way of assigning a behavior animation onto a property.

See the [Qt Quick Examples - Animation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtQuick.animation/) for a demonstration of behavioral animations.

<span id="playing-animations-in-parallel-or-in-sequence"></span>
Playing Animations in Parallel or in Sequence
---------------------------------------------

Animations can run *in parallel* or *in sequence*. Parallel animations will play a group of animations at the same time while sequential animations play a group of animations in order: one after the other. Grouping animations in [SequentialAnimation](../QtQuick.SequentialAnimation/index.html) and [ParallelAnimation](../QtQuick.ParallelAnimation/index.html) will play the animations in sequence or in parallel.

A banner component may have several icons or slogans to display, one after the other. The `opacity` property could transform to `1.0` denoting an opaque object. Using the [SequentialAnimation](../QtQuick.SequentialAnimation/index.html) type, the opacity animations will play after the preceding animation finishes. The [ParallelAnimation](../QtQuick.ParallelAnimation/index.html) type will play the animations at the same time.

``` qml
Rectangle {
    id: banner
    width: 150; height: 100; border.color: "black"
    Column {
        anchors.centerIn: parent
        Text {
            id: code
            text: "Code less."
            opacity: 0.01
        }
        Text {
            id: create
            text: "Create more."
            opacity: 0.01
        }
        Text {
            id: deploy
            text: "Deploy everywhere."
            opacity: 0.01
        }
    }
    MouseArea {
        anchors.fill: parent
        onPressed: playbanner.start()
    }
    SequentialAnimation {
        id: playbanner
        running: false
        NumberAnimation { target: code; property: "opacity"; to: 1.0; duration: 200}
        NumberAnimation { target: create; property: "opacity"; to: 1.0; duration: 200}
        NumberAnimation { target: deploy; property: "opacity"; to: 1.0; duration: 200}
    }
}
```

Once individual animations are placed into a [SequentialAnimation](../QtQuick.SequentialAnimation/index.html) or [ParallelAnimation](../QtQuick.ParallelAnimation/index.html), they can no longer be started and stopped independently. The sequential or parallel animation must be started and stopped as a group.

The [SequentialAnimation](../QtQuick.SequentialAnimation/index.html) type is also useful for playing [transition animations](index.html#qml-transition-animations) because animations are played in parallel inside transitions.

<span id="qml-controlling-animations"></span><span id="controlling-animations"></span>
Controlling Animations
----------------------

There are different methods to control animations.

<span id="animation-playback"></span>
### Animation Playback

All animation types inherit from the [Animation](../QtQuick.Animation/index.html) type. It is not possible to create [Animation](../QtQuick.Animation/index.html) objects; instead, this type provides the essential properties and methods for animation types. Animation types have `start()`, `stop()`, `resume()`, `pause()`, `restart()`, and `complete()` -- all of these methods control the execution of animations.

<span id="qml-easing-animation"></span><span id="easing"></span>
### Easing

Easing curves define how the animation will interpolate between the start value and the end value. Different easing curves might go beyond the defined range of interpolation. The easing curves simplify the creation of animation effects such as bounce effects, acceleration, deceleration, and cyclical animations.

A QML object may have different easing curve for each property animation. There are also different parameters to control the curve, some of which are exclusive to a particular curve. For more information about the easing curves, visit the [easing](../QtQuick.PropertyAnimation/index.html#easing.type-prop) documentation.

The easing example visually demonstrates each of the different easing types.

<span id="other-animation-types"></span>
### Other Animation Types

In addition, QML provides several other types useful for animation:

-   [PauseAnimation](../QtQuick.PauseAnimation/index.html): enables pauses during animations
-   [ScriptAction](../QtQuick.ScriptAction/index.html): allows JavaScript to be executed during an animation, and can be used together with [StateChangeScript](../QtQuick.StateChangeScript/index.html) to reused existing scripts
-   [PropertyAction](../QtQuick.PropertyAction/index.html): changes a property *immediately* during an animation, without animating the property change

These are specialized animation types that animate different property types

-   [SmoothedAnimation](../QtQuick.SmoothedAnimation/index.html): a specialized [NumberAnimation](../QtQuick.NumberAnimation/index.html) that provides smooth changes in animation when the target value changes
-   [SpringAnimation](../QtQuick.SpringAnimation/index.html): provides a spring-like animation with specialized attributes such as [mass](../QtQuick.SpringAnimation/index.html#mass-prop), [damping](../QtQuick.SpringAnimation/index.html#damping-prop) and [epsilon](../QtQuick.SpringAnimation/index.html#epsilon-prop)
-   [ParentAnimation](../QtQuick.ParentAnimation/index.html): used for animating a parent change (see [ParentChange](../QtQuick.ParentChange/index.html))
-   [AnchorAnimation](../QtQuick.AnchorAnimation/index.html): used for animating an anchor change (see [AnchorChanges](../QtQuick.AnchorChanges/index.html))

<span id="sharing-animation-instances"></span>
Sharing Animation Instances
---------------------------

Sharing animation instances between Transitions or Behaviors is not supported, and may lead to undefined behavior. In the following example, changes to the Rectangle's position will most likely not be correctly animated.

``` qml
Rectangle {
    // NOT SUPPORTED: this will not work correctly as both Behaviors
    // try to control a single animation instance
    NumberAnimation { id: anim; duration: 300; easing.type: Easing.InBack }
    Behavior on x { animation: anim }
    Behavior on y { animation: anim }
}
```

The easiest fix is to repeat the [NumberAnimation](../QtQuick.NumberAnimation/index.html) for both Behaviors. If the repeated animation is rather complex, you might also consider creating a custom animation component and assigning an instance to each Behavior, for example:

``` qml
// MyNumberAnimation.qml
NumberAnimation { id: anim; duration: 300; easing.type: Easing.InBack }
```

``` qml
// main.qml
Rectangle {
    Behavior on x { MyNumberAnimation {} }
    Behavior on y { MyNumberAnimation {} }
}
```

**See also** [Qt Quick Examples - Animation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtQuick.animation/).

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
