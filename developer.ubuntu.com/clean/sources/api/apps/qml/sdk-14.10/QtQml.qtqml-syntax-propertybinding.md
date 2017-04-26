---
Title: QtQml.qtqml-syntax-propertybinding
---
        
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

If the intention is to remove the binding, then this is not a problem. However if the intention is to create a new binding of `width*3` then the property must be assigned a Qt.[binding](../QtQml.Binding.md)() value instead. This is done by passing a function to Qt.[binding](../QtQml.Binding.md)() that returns the desired result:

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

For example, the `Component.onCompleted` handler below is defined within the scope of the Item, and references to `width` within this scope would refer to the Item's width, rather than that of the Rectangle. To bind the Rectangle's `height` to its own `width`, the function passed to Qt.[binding](../QtQml.Binding.md)() needs to explicitly refer to `this.width` rather than just `width`.

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

Note that the value of `this` is not defined outside of its use in property binding. See [JavaScript Environment Restrictions](../QtQml.qtqml-javascript-hostenvironment.md#javascript-environment-restrictions) for details.

