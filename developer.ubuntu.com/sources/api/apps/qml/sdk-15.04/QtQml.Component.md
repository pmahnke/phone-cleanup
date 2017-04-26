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
-   [SDK 15.04](../index.html) ›
-   [QtQml](../QtQml/index.html) ›

<!-- -->

-   Component

Component
=========

<span class="subtitle"></span>
Encapsulates a QML component definition More...

|                   |                  |
|-------------------|------------------|
| Import Statement: | import QtQml 2.2 |
| Instantiates:     | QQmlComponent    |

<span id="properties"></span>
Properties
----------

-   ****[progress](index.html#progress-prop)**** : real
-   ****[status](index.html#status-prop)**** : enumeration
-   ****[url](index.html#url-prop)**** : url

<span id="attached-signals"></span>
Attached Signals
----------------

-   ****[completed](index.html#completed-signal)****()
-   ****[destruction](index.html#destruction-signal)****()

<span id="methods"></span>
Methods
-------

-   object ****[createObject](index.html#createObject-method)****(Item *parent*, object *properties*)
-   string ****[errorString](index.html#errorString-method)****()
-   object ****[incubateObject](index.html#incubateObject-method)****(Item *parent*, object *properties*, enumeration *mode*)

<span id="details"></span>
Detailed Description
--------------------

Components are reusable, encapsulated QML types with well-defined interfaces.

Components are often defined by [component files](../QtQml.qtqml-documents-topic/index.html) - that is, `.qml` files. The *Component* type essentially allows QML components to be defined inline, within a [QML document](../QtQml.qtqml-documents-topic/index.html), rather than as a separate QML file. This may be useful for reusing a small component within a QML file, or for defining a component that logically belongs with other QML components within a file.

For example, here is a component that is used by multiple Loader objects. It contains a single item, a Rectangle:

``` qml
import QtQuick 2.0
Item {
    width: 100; height: 100
    Component {
        id: redSquare
        Rectangle {
            color: "red"
            width: 10
            height: 10
        }
    }
    Loader { sourceComponent: redSquare }
    Loader { sourceComponent: redSquare; x: 20 }
}
```

Notice that while a Rectangle by itself would be automatically rendered and displayed, this is not the case for the above rectangle because it is defined inside a `Component`. The component encapsulates the QML types within, as if they were defined in a separate QML file, and is not loaded until requested (in this case, by the two Loader objects). Because Component is not derived from Item, you cannot anchor anything to it.

Defining a `Component` is similar to defining a [QML document](../QtQml.qtqml-documents-topic/index.html). A QML document has a single top-level item that defines the behavior and properties of that component, and cannot define properties or behavior outside of that top-level item. In the same way, a `Component` definition contains a single top level item (which in the above example is a Rectangle) and cannot define any data outside of this item, with the exception of an *id* (which in the above example is *redSquare*).

The `Component` type is commonly used to provide graphical components for views. For example, the ListView::delegate property requires a `Component` to specify how each list item is to be displayed.

`Component` objects can also be created dynamically using [Qt.createComponent()](../QtQml.Qt/index.html#createComponent-method).

<span id="creation-context"></span>
### Creation Context

The creation context of a Component corresponds to the context where the Component was declared. This context is used as the parent context (creating a [context hierarchy](../QtQml.qtqml-documents-scope/index.html#component-instance-hierarchy)) when the component is instantiated by an object such as a ListView or a Loader.

In the following example, `comp1` is created within the root context of MyItem.qml, and any objects instantiated from this component will have access to the ids and properties within that context, such as `internalSettings.color`. When `comp1` is used as a ListView delegate in another context (as in main.qml below), it will continue to have access to the properties of its creation context (which would otherwise be private to external users).

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>MyItem.qml</td>
<td>main.qml</td>
</tr>
<tr class="even">
<td><pre class="qml"><code>Item {
    property Component mycomponent: comp1
    QtObject {
        id: internalSettings
        property color color: &quot;green&quot;
    }
    Component {
        id: comp1
        Rectangle { color: internalSettings.color; width: 400; height: 50 }
    }
}</code></pre></td>
<td><pre class="qml"><code>ListView {
    width: 400; height: 400
    model: 5
    delegate: myItem.mycomponent    //will create green Rectangles
    MyItem { id: myItem }
}</code></pre></td>
</tr>
</tbody>
</table>

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="progress-prop"></span><span class="name">progress</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The progress of loading the component, from 0.0 (nothing loaded) to 1.0 (finished).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="status-prop"></span><span class="name">status</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the status of component loading. The status can be one of the following:

-   Component.Null - no data is available for the component
-   Component.Ready - the component has been loaded, and can be used to create instances.
-   Component.Loading - the component is currently being loaded
-   Component.Error - an error occurred while loading the component. Calling [errorString()](index.html#errorString-method) will provide a human-readable description of any errors.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="url-prop"></span><span class="name">url</span> : <span class="type"><a href="index.html#url-prop">url</a></span></p></td>
</tr>
</tbody>
</table>

The component URL. This is the URL that was used to construct the component.

Attached Signal Documentation
-----------------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="completed-signal"></span><span class="name">completed</span>()</p></td>
</tr>
</tbody>
</table>

Emitted after the object has been instantiated. This can be used to execute script code at startup, once the full QML environment has been established.

The corresponding handler is `onCompleted`. It can be declared on any object. The order of running the `onCompleted` handlers is undefined.

``` qml
Rectangle {
    Component.onCompleted: console.log("Completed Running!")
    Rectangle {
        Component.onCompleted: console.log("Nested Completed Running!")
    }
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="destruction-signal"></span><span class="name">destruction</span>()</p></td>
</tr>
</tbody>
</table>

Emitted as the object begins destruction. This can be used to undo work done in response to the [completed()](index.html#completed-signal) signal, or other imperative code in your application.

The corresponding handler is `onDestruction`. It can be declared on any object. The order of running the `onDestruction` handlers is undefined.

``` qml
Rectangle {
    Component.onDestruction: console.log("Destruction Beginning!")
    Rectangle {
        Component.onDestruction: console.log("Nested Destruction Beginning!")
    }
}
```

**See also** [Qt QML](../QtQml.qtqml-index/index.html).

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="createObject-method"></span><span class="type">object</span> <span class="name">createObject</span>(<span class="type">Item</span> <em>parent</em>, <span class="type">object</span> <em>properties</em>)</p></td>
</tr>
</tbody>
</table>

Creates and returns an object instance of this component that will have the given *parent* and *properties*. The *properties* argument is optional. Returns null if object creation fails.

The object will be created in the same context as the one in which the component was created. This function will always return null when called on components which were not created in QML.

If you wish to create an object without setting a parent, specify `null` for the *parent* value. Note that if the returned object is to be displayed, you must provide a valid *parent* value or set the returned object's parent property, otherwise the object will not be visible.

If a *parent* is not provided to createObject(), a reference to the returned object must be held so that it is not destroyed by the garbage collector. This is true regardless of whether Item::parent is set afterwards, because setting the Item parent does not change object ownership. Only the graphical parent is changed.

As of `QtQuick 1.1`, this method accepts an optional *properties* argument that specifies a map of initial property values for the created object. These values are applied before the object creation is finalized. This is more efficient than setting property values after object creation, particularly where large sets of property values are defined, and also allows property bindings to be set up (using [Qt.binding](../QtQml.Qt/index.html#binding-method)) before the object is created.

The *properties* argument is specified as a map of property-value items. For example, the code below creates an object with initial `x` and `y` values of 100 and 100, respectively:

``` js
var component = Qt.createComponent("Button.qml");
if (component.status == Component.Ready)
    component.createObject(parent, {"x": 100, "y": 100});
```

Dynamically created instances can be deleted with the `destroy()` method. See [Dynamic QML Object Creation from JavaScript](../QtQml.qtqml-javascript-dynamicobjectcreation/index.html) for more information.

**See also** [incubateObject()](index.html#incubateObject-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="errorString-method"></span><span class="type">string</span> <span class="name">errorString</span>()</p></td>
</tr>
</tbody>
</table>

Returns a human-readable description of any error.

The string includes the file, location, and description of each error. If multiple errors are present, they are separated by a newline character.

If no errors are present, an empty string is returned.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="incubateObject-method"></span><span class="type">object</span> <span class="name">incubateObject</span>(<span class="type">Item</span> <em>parent</em>, <span class="type">object</span> <em>properties</em>, <span class="type">enumeration</span> <em>mode</em>)</p></td>
</tr>
</tbody>
</table>

Creates an incubator for an instance of this component. Incubators allow new component instances to be instantiated asynchronously and do not cause freezes in the UI.

The *parent* argument specifies the parent the created instance will have. Omitting the parameter or passing null will create an object with no parent. In this case, a reference to the created object must be held so that it is not destroyed by the garbage collector.

The *properties* argument is specified as a map of property-value items which will be set on the created object during its construction. *mode* may be Qt.Synchronous or Qt.Asynchronous, and controls whether the instance is created synchronously or asynchronously. The default is asynchronous. In some circumstances, even if Qt.Synchronous is specified, the incubator may create the object asynchronously. This happens if the component calling incubateObject() is itself being created asynchronously.

All three arguments are optional.

If successful, the method returns an incubator, otherwise null. The incubator has the following properties:

-   status The status of the incubator. Valid values are Component.Ready, Component.Loading and Component.Error.
-   object The created object instance. Will only be available once the incubator is in the Ready status.
-   onStatusChanged Specifies a callback function to be invoked when the status changes. The status is passed as a parameter to the callback.
-   forceCompletion() Call to complete incubation synchronously.

The following example demonstrates how to use an incubator:

``` js
var component = Qt.createComponent("Button.qml");
var incubator = component.incubateObject(parent, { x: 10, y: 10 });
if (incubator.status != Component.Ready) {
    incubator.onStatusChanged = function(status) {
        if (status == Component.Ready) {
            print ("Object", incubator.object, "is now ready!");
        }
    }
} else {
    print ("Object", incubator.object, "is ready immediately!");
}
```

Dynamically created instances can be deleted with the `destroy()` method. See [Dynamic QML Object Creation from JavaScript](../QtQml.qtqml-javascript-dynamicobjectcreation/index.html) for more information.

**See also** [createObject()](index.html#createObject-method).

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
