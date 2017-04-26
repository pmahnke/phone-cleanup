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
-   <a href="../QtQml/index.html" class="sub-nav-item">QtQml</a> ›

<!-- -->

-   Dynamic QML Object Creation from JavaScript

Dynamic QML Object Creation from JavaScript
===========================================

<span class="subtitle"></span>
<span id="details"></span>
QML supports the dynamic creation of objects from within JavaScript. This is useful to delay instantiation of objects until necessary, thereby improving application startup time. It also allows visual objects to be dynamically created and added to the scene in reaction to user input or other events.

See the [Dynamic Scene example](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/QtQml.dynamicscene/) for a demonstration of the concepts discussed on this page.

<span id="creating-objects-dynamically"></span>
Creating Objects Dynamically
----------------------------

There are two ways to create objects dynamically from JavaScript. You can either call [Qt.createComponent()](../QtQml.Qt/index.html#createComponent-method) to dynamically create a [Component](../QtQml.Component/index.html) object, or use [Qt.createQmlObject()](../QtQml.Qt/index.html#createQmlObject-method) to create an object from a string of QML. Creating a component is better if you have an existing component defined in a QML document and you want to dynamically create instances of that component. Otherwise, creating an object from a string of QML is useful when the object QML itself is generated at runtime.

<span id="creating-a-component-dynamically"></span>
### Creating a Component Dynamically

To dynamically load a component defined in a QML file, call the [Qt.createComponent()](../QtQml.Qt/index.html#createComponent-method) function in the [Qt object](../QtQml.Qt/index.html#qmlglobalqtobject). This function takes the URL of the QML file as its only argument and creates a [Component](../QtQml.Component/index.html) object from this URL.

Once you have a [Component](../QtQml.Component/index.html), you can call its [createObject()](../QtQml.Component/index.html#createObject-method) method to create an instance of the component. This function can take one or two arguments:

-   The first is the parent for the new object. The parent can be a graphical object (i.e. of the Item type) or non-graphical object (i.e. of the [QtObject](../QtQml.QtObject/index.html) or C++ QObject type). Only graphical objects with graphical parent objects will be rendered to the Qt Quick visual canvas. If you wish to set the parent later you can safely pass `null` to this function.
-   The second is optional and is a map of property-value pairs that define initial any property values for the object. Property values specified by this argument are applied to the object before its creation is finalized, avoiding binding errors that may occur if particular properties must be initialized to enable other property bindings. Additionally, there are small performance benefits when compared to defining property values and bindings after the object is created.

Here is an example. First there is `Sprite.qml`, which defines a simple QML component:

``` qml
import QtQuick 2.0
Rectangle { width: 80; height: 50; color: "red" }
```

Our main application file, `main.qml`, imports a `componentCreation.js` JavaScript file that will create `Sprite` objects:

``` qml
import QtQuick 2.0
import "componentCreation.js" as MyScript
Rectangle {
    id: appWindow
    width: 300; height: 300
    Component.onCompleted: MyScript.createSpriteObjects();
}
```

Here is `componentCreation.js`. Notice it checks whether the component [status](../QtQml.Component/index.html#status-prop) is `Component.Ready` before calling [createObject()](../QtQml.Component/index.html#createObject-method) in case the QML file is loaded over a network and thus is not ready immediately.

``` js
var component;
var sprite;
function createSpriteObjects() {
    component = Qt.createComponent("Sprite.qml");
    if (component.status == Component.Ready)
        finishCreation();
    else
        component.statusChanged.connect(finishCreation);
}
function finishCreation() {
    if (component.status == Component.Ready) {
        sprite = component.createObject(appWindow, {"x": 100, "y": 100});
        if (sprite == null) {
            // Error Handling
            console.log("Error creating object");
        }
    } else if (component.status == Component.Error) {
        // Error Handling
        console.log("Error loading component:", component.errorString());
    }
}
```

If you are certain the QML file to be loaded is a local file, you could omit the `finishCreation()` function and call [createObject()](../QtQml.Component/index.html#createObject-method) immediately:

``` js
function createSpriteObjects() {
    component = Qt.createComponent("Sprite.qml");
    sprite = component.createObject(appWindow, {"x": 100, "y": 100});
    if (sprite == null) {
        // Error Handling
        console.log("Error creating object");
    }
}
```

Notice in both instances, [createObject()](../QtQml.Component/index.html#createObject-method) is called with `appWindow` passed as the parent argument, since the dynamically created object is a visual (Qt Quick) object. The created object will become a child of the `appWindow` object in `main.qml`, and appear in the scene.

When using files with relative paths, the path should be relative to the file where [Qt.createComponent()](../QtQml.Qt/index.html#createComponent-method) is executed.

To connect signals to (or receive signals from) dynamically created objects, use the signal `connect()` method. See [Connecting Signals to Methods and Signals](../QtQml.qtqml-syntax-signals/index.html#connecting-signals-to-methods-and-signals) for more information.

It is also possible to instantiate components without blocking via the [incubateObject()](../QtQml.Component/index.html#incubateObject-method) function.

<span id="creating-an-object-from-a-string-of-qml"></span>
### Creating an Object from a String of QML

If the QML is not defined until runtime, you can create a QML object from a string of QML using the [Qt.createQmlObject()](../QtQml.Qt/index.html#createQmlObject-method) function, as in the following example:

``` qml
var newObject = Qt.createQmlObject('import QtQuick 2.0; Rectangle {color: "red"; width: 20; height: 20}',
    parentItem, "dynamicSnippet1");
```

The first argument is the string of QML to create. Just like in a new file, you will need to import any types you wish to use. The second argument is the parent object for the new object, and the parent argument semantics which apply to components are similarly applicable for `createQmlObject()`. The third argument is the file path to associate with the new object; this is used for error reporting.

If the string of QML imports files using relative paths, the path should be relative to the file in which the parent object (the second argument to the method) is defined.

<span id="maintaining-dynamically-created-objects"></span>
Maintaining Dynamically Created Objects
---------------------------------------

When managing dynamically created objects, you must ensure the creation context outlives the created object. Otherwise, if the creation context is destroyed first, the bindings in the dynamic object will no longer work.

The actual creation context depends on how an object is created:

-   If Qt.createComponent() is used, the creation context is the QQmlContext in which this method is called
-   If [Qt.createQmlObject()](../QtQml.Qt/index.html#createQmlObject-method) is called, the creation context is the context of the parent object passed to this method
-   If a `Component{}` object is defined and [createObject()](../QtQml.Component/index.html#createObject-method) or [incubateObject()](../QtQml.Component/index.html#incubateObject-method) is called on that object, the creation context is the context in which the `Component` is defined

Also, note that while dynamically created objects may be used the same as other objects, they do not have an id in QML.

<span id="deleting-objects-dynamically"></span>
Deleting Objects Dynamically
----------------------------

In many user interfaces, it is sufficient to set a visual object's opacity to 0 or to move the visual object off the screen instead of deleting it. If you have lots of dynamically created objects, however, you may receive a worthwhile performance benefit if unused objects are deleted.

Note that you should never manually delete objects that were dynamically created by convenience QML object factories (such as Loader and Repeater). Also, you should avoid deleting objects that you did not dynamically create yourself.

Items can be deleted using the `destroy()` method. This method has an optional argument (which defaults to 0) that specifies the approximate delay in milliseconds before the object is to be destroyed.

Here is an example. The `application.qml` creates five instances of the `SelfDestroyingRect.qml` component. Each instance runs a NumberAnimation, and when the animation has finished, calls `destroy()` on its root object to destroy itself:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code>application.qml</code></td>
<td><code>SelfDestroyingRect.qml</code></td>
</tr>
<tr class="even">
<td><pre class="qml"><code>import QtQuick 2.0
Item {
    id: container
    width: 500; height: 100
    Component.onCompleted: {
        var component = Qt.createComponent(&quot;SelfDestroyingRect.qml&quot;);
        for (var i=0; i&lt;5; i++) {
            var object = component.createObject(container);
            object.x = (object.width + 10) * i;
        }
    }
}</code></pre></td>
<td><pre class="qml"><code>import QtQuick 2.0
Rectangle {
    id: rect
    width: 80; height: 80
    color: &quot;red&quot;
    NumberAnimation on opacity {
        to: 0
        duration: 1000
        onRunningChanged: {
            if (!running) {
                console.log(&quot;Destroying...&quot;)
                rect.destroy();
            }
        }
    }
}</code></pre></td>
</tr>
</tbody>
</table>

Alternatively, the `application.qml` could have destroyed the created object by calling `object.destroy()`.

Note that it is safe to call destroy() on an object within that object. Objects are not destroyed the instant destroy() is called, but are cleaned up sometime between the end of that script block and the next frame (unless you specified a non-zero delay).

Note also that if a `SelfDestroyingRect` instance was created statically like this:

``` qml
Item {
    SelfDestroyingRect {
        // ...
    }
}
```

This would result in an error, since objects can only be dynamically destroyed if they were dynamically created.

Objects created with [Qt.createQmlObject()](../QtQml.Qt/index.html#createQmlObject-method) can similarly be destroyed using `destroy()`:

``` qml
var newObject = Qt.createQmlObject('import QtQuick 2.0; Rectangle {color: "red"; width: 20; height: 20}',
    parentItem, "dynamicSnippet1");
newObject.destroy(1000);
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
