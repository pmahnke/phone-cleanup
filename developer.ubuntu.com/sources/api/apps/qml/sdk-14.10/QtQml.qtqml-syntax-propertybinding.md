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
-   <a href="../index.html" class="sub-nav-item">SDK 14.10</a> ›
-   <a href="../QtQml/index.html" class="sub-nav-item">QtQml</a> ›

<!-- -->

-   Property Binding

Property Binding
================

<span class="subtitle"></span>
<span id="details"></span>
To make the fullest use of QML and its built-in support for implementing dynamic object behavioral changes, most QML objects will use *property binding*. This is a core feature of QML that allows objects to automatically update their properties in response to changing attributes in other objects or the occurrence of some external event.

When an object's property is assigned a value, it can either be assigned a static value, or *bound* to a JavaScript expression. In the first case, the property's value will not change unless a new value is assigned to the property. In the latter case, a *property binding* is created and the property's value is automatically updated by the QML engine whenever the value of the evaluated expression changes.

<span id="overview"></span>
Overview
--------

To create a property binding, a property is assigned an expression that evaluates to the desired value. At its simplest, an expression may simply be a reference to another object's property. Take the following example, where the blue Rectangle's `height` is bound to the height of its parent:

``` qml
Rectangle {
    width: 200; height: 200
    Rectangle {
        width: 100; height: parent.height
        color: "blue"
    }
}
```

Whenever the `height` of the parent item changes, the `height` of the blue rectangle will update to be of the same value.

Furthermore, a binding can contain any valid JavaScript expression or statement, as QML uses a standards compliant JavaScript engine. Below are valid bindings that could be substituted for the `height` binding from the above example:

``` cpp
height: parent.height / 2
height: Math.min(parent.width, parent.height)
height: parent.height > 100 ? parent.height : parent.height/2
height: {
    if (parent.height > 100)
        return parent.height
    else
        return parent.height / 2
}
height: someMethodThatReturnsHeight()
```

Whenever the value of `parent.height` changes, the QML engine will re-evaluate the above expression and assign the blue rectangle's `width` property with the appropriate updated value.

Bindings can access object properties, call methods and use built-in JavaScript objects such as `Date` and `Math`. Here is an example with various valid bindings:

``` qml
Column {
    width: 200
    height: 200
    Rectangle {
        width: Math.max(bottomRect.width, parent.width/2)
        height: (parent.height / 3) + 10
        color: "yellow"
        TextInput {
            id: myTextInput
            text: "Hello QML!"
        }
    }
    Rectangle {
        id: bottomRect
        width: 100
        height: 50
        color: myTextInput.text.length <= 10 ? "red" : "blue"
    }
}
```

While syntactically bindings can be of arbitrary complexity, if a binding starts to become overly complex - such as involving multiple lines, or imperative loops - it may be better to refactor the component entirely, or at least factor the binding out into a separate function.

<span id="qml-javascript-assignment"></span><span id="creating-property-bindings-from-javascript"></span>
Creating Property Bindings from JavaScript
------------------------------------------

Once a property has been bound to an expression, the property is set to be automatically updated as necessary. However, be aware that if the property is later assigned a static value from a JavaScript statement, this will remove the binding.

For example, the `height` of the Rectangle below is initially bound to be twice its `width`. However, when the space key is pressed, the `height` value is changed to be three times its `width`. At this point, the `height` is assigned the currently evaluated result of `width*3` and *the height will no longer be automatically updated whenever the width changes*. The assignment of the static value removes the binding.

``` qml
import QtQuick 2.0
Rectangle {
    width: 100
    height: width * 2
    focus: true
    Keys.onSpacePressed: {
        height = width * 3
    }
}
```

If the intention is to remove the binding, then this is not a problem. However if the intention is to create a new binding of `width*3` then the property must be assigned a Qt.[binding](../QtQml.Binding/index.html)() value instead. This is done by passing a function to Qt.[binding](../QtQml.Binding/index.html)() that returns the desired result:

``` qml
import QtQuick 2.0
Rectangle {
    width: 100
    height: width * 2
    focus: true
    Keys.onSpacePressed: {
        height = Qt.binding(function() { return width * 3 })
    }
}
```

Now when the space key is pressed, a new binding of `width*3` is assigned, instead of simply removing the initial binding.

<span id="using-keyword-this-keyword-with-property-binding"></span>
### Using `this` with Property Binding

When creating a property binding from JavaScript, QML allows the use of the `this` keyword to refer to the object to which the property binding will be assigned. This allows one to explicitly refer to a property within an object when there may be ambiguity about the exact property that should be used for the binding.

For example, the `Component.onCompleted` handler below is defined within the scope of the Item, and references to `width` within this scope would refer to the Item's width, rather than that of the Rectangle. To bind the Rectangle's `height` to its own `width`, the function passed to Qt.[binding](../QtQml.Binding/index.html)() needs to explicitly refer to `this.width` rather than just `width`.

``` qml
Item {
    width: 500
    height: 500
    Rectangle {
        id: rect
        width: 100
        color: "yellow"
    }
    Component.onCompleted: {
        rect.height = Qt.binding(function() { return this.width * 2 })
        console.log("rect.height = " + rect.height) // prints 200, not 1000
    }
}
```

In this case, the function could also have referred to `rect.width` rather than `this.width`.

Note that the value of `this` is not defined outside of its use in property binding. See [JavaScript Environment Restrictions](../QtQml.qtqml-javascript-hostenvironment/index.html#javascript-environment-restrictions) for details.

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
