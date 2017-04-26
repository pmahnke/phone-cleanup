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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04</a> ›
-   <a href="../QtQml/index.html" class="sub-nav-item">QtQml</a> ›

<!-- -->

-   Property Binding

Property Binding
================

<span class="subtitle"></span>
<span id="details"></span>
An object's property can be assigned a static value which stays constant until it is explicitly assigned a new value. However, to make the fullest use of QML and its built-in support for dynamic object behaviors, most QML objects use *property bindings*.

Property bindings are a core feature of QML that lets developers specify relationships between different object properties. When a property's *dependencies* change in value, the property is automatically updated according to the specified relationship.

Behind the scenes, the QML engine monitors the property's dependencies (that is, the variables in the binding expression). When a change is detected, the QML engine re-evaluates the binding expression and applies the new result to the property.

<span id="overview"></span>
Overview
--------

To create a property binding, a property is assigned a JavaScript expression that evaluates to the desired value. At its simplest, a binding may be a reference to another property. Take the following example, where the blue Rectangle's height is bound to the height of its parent:

``` qml
Rectangle {
    width: 200; height: 200
    Rectangle {
        width: 100
        height: parent.height
        color: "blue"
    }
}
```

Whenever the height of the parent rectangle changes, the height of the blue rectangle automatically updates to be of the same value.

A binding can contain any valid JavaScript expression or statement, as QML uses a standards compliant JavaScript engine. Bindings can access object properties, call methods and use built-in JavaScript objects such as `Date` and `Math`. Below are other possible bindings for the previous example:

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

Below is a more complex example involving more objects and types:

``` qml
Column {
    id: column
    width: 200
    height: 200
    Rectangle {
        id: topRect
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

In the previous example,

-   `topRect.width` depends on `bottomRect.width` and `column.width`
-   `topRect.height` depends on `column.height`
-   `bottomRect.color` depends on `myTextInput.text.length`

Syntactically, bindings are allowed to be of arbitrary complexity. However, if a binding is overly complex - such as involving multiple lines, or imperative loops - it could indicate that the binding is being used for more than describing property relationships. Complex bindings can reduce code performance, readability, and maintainability. It may be a good idea to redesign components that have complex bindings, or at least factor the binding out into a separate function.

<span id="qml-javascript-assignment"></span><span id="creating-property-bindings-from-javascript"></span>
Creating Property Bindings from JavaScript
------------------------------------------

A property with a binding is automatically updated as necessary. However, if the property is later assigned a static value from a JavaScript statement, the binding will be removed.

For example, the Rectangle below initially ensures that its `height` is always twice its `width`. However, when the space key is pressed, the current value of `width*3` will be assigned to `height` as a *static* value. After that, *the `height` will remain fixed at this value, even if the `width` changes*. The assignment of the static value removes the binding.

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

If the intention is to give the rectangle a fixed height and stop automatic updates, then this is not a problem. However, if the intention is to establish a new relationship between `width` and `height`, then the new binding expression must be wrapped in the Qt.binding() function instead:

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

Now, after the space key is pressed, the rectangle's height will continue auto-updating to always be three times its width.

<span id="using-keyword-this-keyword-with-property-binding"></span>
### Using `this` with Property Binding

When creating a property binding from JavaScript, the `this` keyword can be used to refer to the object which receives the binding. This is helpful for resolving ambiguities with property names.

For example, the `Component.onCompleted` handler below is defined within the scope of the Item. In this scope, `width` refers to the Item's width, not the Rectangle's width. To bind the Rectangle's `height` to its own `width`, the binding expression must explicitly refer to `this.width` (or alternatively, `rect.width`):

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

**Note:** The value of `this` is not defined outside of property bindings. See [JavaScript Environment Restrictions](../QtQml.qtqml-javascript-hostenvironment/index.html#javascript-environment-restrictions) for details.

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
