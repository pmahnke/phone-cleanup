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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.6</a> ›
-   <a href="../QtQml/index.html" class="sub-nav-item">QtQml</a> ›

<!-- -->

-   JavaScript Expressions in QML Documents

JavaScript Expressions in QML Documents
=======================================

<span class="subtitle"></span>
<span id="details"></span>
The [JavaScript Host Environment](../QtQml.qtqml-javascript-hostenvironment/index.html) provided by QML can run valid standard JavaScript constructs such as conditional operators, arrays, variable setting, loops. In addition to the standard JavaScript properties, the [QML Global Object](../QtQml.qtqml-javascript-qmlglobalobject/index.html) includes a number of helper methods that simplify building UIs and interacting with the QML environment.

The JavaScript environment provided by QML is stricter than that in a web browser. For example, in QML you cannot add to, or modify, members of the JavaScript global object. In regular JavaScript, it is possible to do this accidentally by using a variable without declaring it. In QML this will throw an exception, so all local variables must be explicitly declared. See [JavaScript Environment Restrictions](../QtQml.qtqml-javascript-hostenvironment/index.html#javascript-environment-restrictions) for a complete description of the restrictions on JavaScript code executed from QML.

Various parts of [QML documents](../QtQml.qtqml-documents-topic/index.html) can contain JavaScript code:

1.  The body of [property bindings](../QtQml.qtqml-syntax-propertybinding/index.html). These JavaScript expressions describe relationships between QML object [properties](../QtQml.qtqml-syntax-objectattributes/index.html#property-attributes). When any of a property's *dependencies* change, the property is automatically updated too, according to the specified relationship.
2.  The body of [Signal handlers](../QtQml.qtqml-syntax-objectattributes/index.html#signal-attributes). These JavaScript statements are automatically evaluated whenever a QML object emits the associated signal.
3.  The definition of [custom methods](../QtQml.qtqml-syntax-objectattributes/index.html#method-attributes). JavaScript functions that are defined within the body of a QML object become methods of that object.
4.  Standalone [JavaScript resource (.js) files](../QtQml.qtqml-javascript-imports/index.html). These files are actually separate from QML documents, but they can be imported into QML documents. Functions and variables that are defined within the imported files can be used in property bindings, signal handlers, and custom methods.

<span id="javascript-in-property-bindings"></span>
JavaScript in Property Bindings
-------------------------------

In the following example, the Rectangle's `color` depends on the MouseArea's `pressed` property. This relationship is described using a conditional expression:

``` qml
import QtQuick 2.0
Rectangle {
    id: colorbutton
    width: 200; height: 80;
    color: mousearea.pressed ? "steelblue" : "lightsteelblue"
    MouseArea {
        id: mousearea
        anchors.fill: parent
    }
}
```

In fact, any JavaScript expression (no matter how complex) may be used in a property binding definition, as long as the result of the expression is a value whose type can be assigned to the property. This includes side effects. However, complex bindings and side effects are discouraged because they can reduce the performance, readability, and maintainability of the code.

There are two ways to define a property binding: the first (and most common) is, as previously shown, in a [property initialization](../QtQml.qtqml-syntax-objectattributes/index.html#value-assignment-on-initialization). The second (and much rarer) way is to assign the property a function returned from the [Qt.binding()](../QtQml.Qt/index.html#binding-method) function, from within imperative JavaScript code, as shown below:

``` qml
import QtQuick 2.0
Rectangle {
    id: colorbutton
    width: 200; height: 80;
    color: "red"
    MouseArea {
        id: mousearea
        anchors.fill: parent
    }
    Component.onCompleted: {
        color = Qt.binding(function() { return mousearea.pressed ? "steelblue" : "lightsteelblue" });
    }
}
```

See the [property bindings](../QtQml.qtqml-syntax-propertybinding/index.html) documentation for more information about how to define property bindings, and see the documentation about [Property Assignment versus Property Binding](../QtQml.qtqml-syntax-propertybinding/index.html#qml-javascript-assignment) for information about how bindings differ from value assignments.

<span id="javascript-in-signal-handlers"></span>
JavaScript in Signal Handlers
-----------------------------

QML object types can emit signals in reaction to certain events occurring. Those signals can be handled by signal handler functions, which can be defined by clients to implement custom program logic.

Suppose that a button represented by a Rectangle type has a MouseArea and a Text label. The MouseArea will emit its pressed signal when the user presses the defined interactive area, which will automatically trigger the `onPressed` handler, which can be defined by clients. The QML engine will execute the JavaScript expressions defined in the `onPressed` and `onReleased` handlers, as required. Typically, a signal handler is bound to JavaScript expressions to initiate other events or to simply assign property values.

``` qml
import QtQuick 2.0
Rectangle {
    id: button
    width: 200; height: 80; color: "lightsteelblue"
    MouseArea {
        id: mousearea
        anchors.fill: parent
        onPressed: {
            // arbitrary JavaScript expression
            label.text = "I am Pressed!"
        }
        onReleased: {
            // arbitrary JavaScript expression
            label.text = "Click Me!"
        }
    }
    Text {
        id: label
        anchors.centerIn: parent
        text: "Press Me!"
    }
}
```

Please see the [Signal and Handler Event System](../QtQml.qtqml-syntax-signals/index.html) documentation for in-depth discussion of signals and signal handlers, and see the [QML Object Attributes](../QtQml.qtqml-syntax-objectattributes/index.html) documentation for in-depth discussion of how to define the implementation of signal handlers in QML with JavaScript.

<span id="javascript-in-standalone-functions"></span>
JavaScript in Standalone Functions
----------------------------------

Program logic can also be defined in JavaScript functions. These functions can be defined inline in QML documents (as custom methods) or externally in imported JavaScript files.

<span id="javascript-in-custom-object-methods"></span>
### JavaScript in Custom Object Methods

Custom methods can be defined in QML documents and may be called from signal handlers, property bindings, or functions in other QML objects. Methods defined in this way are often referred to as *inline JavaScript functions* because their implementation is included in the QML object type definition (QML document), as opposed to an external JavaScript file.

An example of an inline custom method is as follows:

``` qml
import QtQuick 2.0
Item {
    function factorial(a) {
        a = parseInt(a);
        if (a <= 0)
            return 1;
        else
            return a * factorial(a - 1);
    }
    MouseArea {
        anchors.fill: parent
        onClicked: console.log(factorial(10))
    }
}
```

The factorial function will run whenever the MouseArea detects a `clicked` signal.

Importantly, custom methods defined inline in a QML document are exposed to other objects, and therefore inline functions on the root object in a QML component can be invoked by callers outside the component. If this is not desired, the method can be added to a non-root object or, preferably, written in an external JavaScript file.

See the [QML Object Attributes](../QtQml.qtqml-syntax-objectattributes/index.html) documentation for in-depth discussion of how to define custom methods in QML with JavaScript code implementations.

<span id="functions-in-imported-javascript-files"></span>
### Functions in Imported JavaScript Files

Non-trivial program logic is best separated into external JavaScript files. These files can be imported into QML files using an `import` statement, in the same way that [modules](../QtQml.qtqml-modules-topic/index.html) are imported.

For example, the `factorial()` method in the above example could be moved into an external file named `factorial.js`, and accessed like this:

``` qml
import "factorial.js" as MathFunctions
Item {
    MouseArea {
        anchors.fill: parent
        onClicked: console.log(MathFunctions.factorial(10))
    }
}
```

For more information about loading external JavaScript files into QML, read the section about [Importing JavaScript Resources in QML](../QtQml.qtqml-javascript-imports/index.html).

<span id="connecting-signals-to-javascript-functions"></span>
### Connecting Signals to JavaScript Functions

QML object types which emit signals also provide default signal handlers for their signals, as described in a previous section. Sometimes, however, a client will want to cause a signal emitted from one object to trigger a function defined in another object; and in that case, a signal connection is often preferable.

A signal emitted by a QML object may be connected to a JavaScript function by calling the signal's `connect()` method and passing the JavaScript function as an argument. For example, the following code connects the MouseArea `clicked` signal to the `jsFunction()` in `script.js`:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><pre class="qml"><code>import QtQuick 2.0
import &quot;script.js&quot; as MyScript
Item {
    id: item
    width: 200; height: 200
    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }
    Component.onCompleted: {
        mouseArea.clicked.connect(MyScript.jsFunction)
    }
}</code></pre></td>
<td><pre class="js"><code>// script.js
function jsFunction() {
    console.log(&quot;Called JavaScript function!&quot;)
}</code></pre></td>
</tr>
</tbody>
</table>

The `jsFunction()` will now be called whenever MouseArea's `clicked` signal is emitted.

See [Connecting Signals to Methods and Signals](../QtQml.qtqml-syntax-signals/index.html) for more information.

<span id="javascript-in-application-startup-code"></span>
JavaScript in Application Startup Code
--------------------------------------

It is occasionally necessary to run some imperative code at application (or component instance) startup. While it is tempting to just include the startup script as *global code* in an external script file, this can have severe limitations as the QML environment may not have been fully established. For example, some objects might not have been created or some [property bindings](../QtQml.qtqml-syntax-propertybinding/index.html) may not have been established. See [JavaScript Environment Restrictions](../QtQml.qtqml-javascript-hostenvironment/index.html#javascript-environment-restrictions) for the exact limitations of global script code.

A QML object will emit the `Component.completed` [attached signal](../QtQml.qtqml-syntax-signals/index.html#attached-signal-handlers) when its instantiation is complete. JavaScript code in the corresponding `Component.onCompleted` handler runs after the object is instantiated. Thus, the best place to write application startup code is in the `Component.onCompleted` handler of the top-level object, because this object emits `Component.completed` when the QML environment is fully established.

For example:

``` qml
import QtQuick 2.0
Rectangle {
    function startupFunction() {
        // ... startup code
    }
    Component.onCompleted: startupFunction();
}
```

Any object in a QML file - including nested objects and nested QML component instances - can use this attached property. If there is more than one `onCompleted()` handler to execute at startup, they are run sequentially in an undefined order.

Likewise, every `Component` will emit a [destruction()](../QtQml.Component/index.html#destruction-signal) signal just before being destroyed.

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
