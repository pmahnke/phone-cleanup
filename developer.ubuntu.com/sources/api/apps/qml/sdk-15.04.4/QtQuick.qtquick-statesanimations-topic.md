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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.4</a> ›
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   Important Concepts in Qt Quick - States, Transitions and Ani...

Important Concepts in Qt Quick - States, Transitions and Ani...
===============================================================

<span class="subtitle"></span>
<span id="details"></span>
In any modern user-interface, transitioning between states and animating the user-interface is highly beneficial. These are first-class concepts in Qt Quick.

This page describes the concept of states, state transitions, and property animations. It details which concepts are important and why, and how those concepts interrelate. It also provides links to in-depth detail about the QML types that Qt Quick provides to implement those concepts.

<span id="states"></span>
States
------

The state of a particular visual item is the set of information which describes how and where the individual component parts of the visual item are displayed within it, and all the data associated with that state. Most visual items in a user-interface will have a limited number of states, each with well-defined properties.

For example, an element in a list may be either selected or not, and if selected, it may either be the currently active single selection or it may be part of a selection group.

Each of those states may have certain associated visual appearance (neutral, highlighted, expanded, and so forth).

Qt Quick provides a `State` type with properties which define its semantics and can be used to trigger behavior or animations. See the documentation about [Qt Quick States](../QtQuick.qtquick-statesanimations-states/index.html) for more information.

<span id="transitions"></span>
Transitions
-----------

When a visual item transitions from one state to another, the appearance of that item will change. A transition is an "edge" between two states. It may trigger other events to occur, as other parts of the application may have behavior which is triggered when a certain state is entered or left.

Qt Quick provides the `Transition` type which has properties which define what will occur when the application changes from one state to another. See the documentation on [Transitions during State Changes](../QtQuick.qtquick-statesanimations-animations/index.html#transitions-during-state-changes) for more information about transitions.

<span id="animations"></span>
Animations
----------

When transitioning between states, a fluid animation can be used to aid the user during the transition. Abrupt and unexpected changes to the visual canvas result in a suboptimal user-experience and should be avoided.

If an element in a list becomes selected, the color change (from neutral to highlighted) can be animated. If the position of the element in the list is changed, it can be moved in an fluidly animated fashion so that the eye of the user can track the change.

These types of animations are supported in Qt Quick through various animation and transition types. See the documentation on [Animations and Transitions In Qt Quick](../QtQuick.qtquick-statesanimations-animations/index.html) for information about these types and how to use them.

<span id="animating-property-assignments"></span>
Animating Property Assignments
------------------------------

Animations are not only related to states and transitions between states. For example, an animation might be triggered by other events, which are not associated with a distinct state.

It is often beneficial to always animate changes to certain properties of visual items, regardless of the cause of the change (for example, opacity effects). Qt Quick provides the [Behavior](../QtQuick.Behavior/index.html) type which allows the client to specify animation behavior for changes to properties. The [Behavior](../QtQuick.Behavior/index.html) type is an example of a QML object property modifier.

Please see the documentation about [default property animations](../QtQuick.qtquick-statesanimations-animations/index.html#default-animation-as-behaviors) for more information about using the [Behavior](../QtQuick.Behavior/index.html) type to provide default property change animations.

It is important to note, that using default property animations (via the [Behavior](../QtQuick.Behavior/index.html) type) in combination with state-transition animations can sometimes result in undefined behavior occurring. Please see the documentation about [using Qt Quick Behaviors with States](../QtQuick.qtquick-statesanimations-behaviors/index.html) for more information about this topic.

<span id="animators"></span>
Animators
---------

The [Animator](../QtQuick.Animator/index.html) types are a special type of animation which bypass the QML objects and operate directly on the primitives in the [scene graph](../QtQuick.qtquick-visualcanvas-scenegraph/index.html). This has the benefit that the Animator based animations can be run on the scene graph's rendering thread (when applicable) and can continue to animate even when UI is otherwise blocked.

Qt Quick provides the following Animator types:

-   [XAnimator](../QtQuick.XAnimator/index.html) - Animates the horizontal position of an [Item](../QtQuick.Item/index.html).
-   [YAnimator](../QtQuick.YAnimator/index.html) - Animates the vertical position of an [Item](../QtQuick.Item/index.html).
-   [ScaleAnimator](../QtQuick.ScaleAnimator/index.html) - Animates the scale factor of an [Item](../QtQuick.Item/index.html).
-   [RotationAnimator](../QtQuick.RotationAnimator/index.html) - Animates the rotation of an [Item](../QtQuick.Item/index.html).
-   [OpacityAnimator](../QtQuick.OpacityAnimator/index.html) - Animates the opacity of an [Item](../QtQuick.Item/index.html).
-   [UniformAnimator](../QtQuick.UniformAnimator/index.html) - Animates a uniform in a [ShaderEffect](../QtQuick.ShaderEffect/index.html).

<span id="animated-sprites"></span>
Animated Sprites
----------------

The concept of animated sprites is separate to the concept of animations as used elsewhere on this page. If you want to create or use an animated image or sprite, please see the documentation about [sprite animations](../QtQuick.qtquick-effects-sprites/index.html).

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
