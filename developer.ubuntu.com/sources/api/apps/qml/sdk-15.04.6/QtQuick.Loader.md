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

-   Loader

Loader
======

<span class="subtitle"></span>
Allows dynamic loading of a subtree from a URL or Component More...

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
<td><p><a href="../QtQuick.Item/index.html">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[active](index.html#active-prop)**** : bool
-   ****[asynchronous](index.html#asynchronous-prop)**** : bool
-   ****[item](index.html#item-prop)**** : object
-   ****[progress](index.html#progress-prop)**** : real
-   ****[source](index.html#source-prop)**** : url
-   ****[sourceComponent](index.html#sourceComponent-prop)**** : Component
-   ****[status](index.html#status-prop)**** : enumeration

<span id="signals"></span>
Signals
-------

-   ****[loaded](index.html#loaded-signal)****()

<span id="methods"></span>
Methods
-------

-   object ****[setSource](index.html#setSource-method)****(url *source*, object *properties*)

<span id="details"></span>
Detailed Description
--------------------

Loader is used to dynamically load QML components.

Loader can load a QML file (using the [source](index.html#source-prop) property) or a Component object (using the [sourceComponent](index.html#sourceComponent-prop) property). It is useful for delaying the creation of a component until it is required: for example, when a component should be created on demand, or when a component should not be created unnecessarily for performance reasons.

Here is a Loader that loads "Page1.qml" as a component when the [MouseArea](../QtQuick.MouseArea/index.html) is clicked:

``` qml
import QtQuick 2.0
Item {
    width: 200; height: 200
    Loader { id: pageLoader }
    MouseArea {
        anchors.fill: parent
        onClicked: pageLoader.source = "Page1.qml"
    }
}
```

The loaded object can be accessed using the [item](index.html#item-prop) property.

If the [source](index.html#source-prop) or [sourceComponent](index.html#sourceComponent-prop) changes, any previously instantiated items are destroyed. Setting [source](index.html#source-prop) to an empty string or setting [sourceComponent](index.html#sourceComponent-prop) to `undefined` destroys the currently loaded object, freeing resources and leaving the Loader empty.

<span id="loader-sizing-behavior"></span>
### Loader sizing behavior

If the source component is not an Item type, Loader does not apply any special sizing rules. When used to load visual types, Loader applies the following sizing rules:

-   If an explicit size is not specified for the Loader, the Loader is automatically resized to the size of the loaded item once the component is loaded.
-   If the size of the Loader is specified explicitly by setting the width, height or by anchoring, the loaded item will be resized to the size of the Loader.

In both scenarios the size of the item and the Loader are identical. This ensures that anchoring to the Loader is equivalent to anchoring to the loaded item.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>sizeloader.qml</td>
<td>sizeitem.qml</td>
</tr>
<tr class="even">
<td><pre class="qml"><code>import QtQuick 2.0
Item {
    width: 200; height: 200
    Loader {
        // Explicitly set the size of the Loader to the parent item&#39;s size
        anchors.fill: parent
        sourceComponent: rect
    }
    Component {
        id: rect
        Rectangle {
            width: 50
            height: 50
            color: &quot;red&quot;
        }
    }
}</code></pre></td>
<td><pre class="qml"><code>import QtQuick 2.0
Item {
    width: 200; height: 200
    Loader {
        // position the Loader in the center of the parent
        anchors.centerIn: parent
        sourceComponent: rect
    }
    Component {
        id: rect
        Rectangle {
            width: 50
            height: 50
            color: &quot;red&quot;
        }
    }
}</code></pre></td>
</tr>
<tr class="odd">
<td>The red rectangle will be sized to the size of the root item.</td>
<td>The red rectangle will be 50x50, centered in the root item.</td>
</tr>
</tbody>
</table>

<span id="receiving-signals-from-loaded-objects"></span>
### Receiving signals from loaded objects

Any signals emitted from the loaded object can be received using the Connections type. For example, the following `application.qml` loads `MyItem.qml`, and is able to receive the `message` signal from the loaded item through a Connections object:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>application.qml</td>
<td>MyItem.qml</td>
</tr>
<tr class="even">
<td><pre class="qml"><code>import QtQuick 2.0
Item {
    width: 100; height: 100
    Loader {
       id: myLoader
       source: &quot;MyItem.qml&quot;
    }
    Connections {
        target: myLoader.item
        onMessage: console.log(msg)
    }
}</code></pre></td>
<td><pre class="qml"><code>import QtQuick 2.0
Rectangle {
   id: myItem
   signal message(string msg)
   width: 100; height: 100
   MouseArea {
       anchors.fill: parent
       onClicked: myItem.message(&quot;clicked!&quot;)
   }
}</code></pre></td>
</tr>
</tbody>
</table>

Alternatively, since `MyItem.qml` is loaded within the scope of the Loader, it could also directly call any function defined in the Loader or its parent [Item](../QtQuick.Item/index.html).

<span id="focus-and-key-events"></span>
### Focus and key events

Loader is a focus scope. Its [focus](../QtQuick.Item/index.html#focus-prop) property must be set to `true` for any of its children to get the *active focus*. (See [Keyboard Focus in Qt Quick](../QtQuick.qtquick-input-focus/index.html) for more details.) Any key events received in the loaded item should likely also be [accepted](../QtQuick.KeyEvent/index.html#accepted-prop) so they are not propagated to the Loader.

For example, the following `application.qml` loads `KeyReader.qml` when the [MouseArea](../QtQuick.MouseArea/index.html) is clicked. Notice the [focus](../QtQuick.Item/index.html#focus-prop) property is set to `true` for the Loader as well as the [Item](../QtQuick.Item/index.html) in the dynamically loaded object:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>application.qml</td>
<td>KeyReader.qml</td>
</tr>
<tr class="even">
<td><pre class="qml"><code>import QtQuick 2.0
Rectangle {
    width: 200; height: 200
    Loader {
        id: loader
        focus: true
    }
    MouseArea {
        anchors.fill: parent
        onClicked: loader.source = &quot;KeyReader.qml&quot;
    }
    Keys.onPressed: {
        console.log(&quot;Captured:&quot;, event.text);
    }
}</code></pre></td>
<td><pre class="qml"><code>import QtQuick 2.0
Item {
    Item {
        focus: true
        Keys.onPressed: {
            console.log(&quot;Loaded item captured:&quot;, event.text);
            event.accepted = true;
        }
    }
}</code></pre></td>
</tr>
</tbody>
</table>

Once `KeyReader.qml` is loaded, it accepts key events and sets `event.accepted` to `true` so that the event is not propagated to the parent [Rectangle](../QtQuick.Rectangle/index.html).

Since `QtQuick 2.0`, Loader can also load non-visual components.

<span id="using-a-loader-within-a-view-delegate"></span>
### Using a Loader within a view delegate

In some cases you may wish to use a Loader within a view delegate to improve delegate loading performance. This works well in most cases, but there is one important issue to be aware of related to the creation context of a Component.

In the following example, the `index` context property inserted by the [ListView](../QtQuick.ListView/index.html) into `delegateComponent`'s context will be inaccessible to Text, as the Loader will use the creation context of `myComponent` as the parent context when instantiating it, and `index` does not refer to anything within that context chain.

``` qml
Item {
    width: 400
    height: 400
    Component {
        id: myComponent
        Text { text: index }    //fails
    }
    ListView {
        anchors.fill: parent
        model: 5
        delegate: Component {
            id: delegateComponent
            Loader {
                sourceComponent: myComponent
            }
        }
    }
}
```

In this situation we can either move the component inline,

``` qml
        delegate: Component {
            Loader {
                sourceComponent: Component {
                    Text { text: index }    //okay
                }
            }
        }
```

into a separate file,

``` qml
        delegate: Component {
            Loader {
                source: "MyComponent.qml" //okay
            }
        }
```

or explicitly set the required information as a property of the Loader (this works because the Loader sets itself as the context object for the component it is loading).

``` qml
Item {
    width: 400
    height: 400
    Component {
        id: myComponent
        Text { text: modelIndex }    //okay
    }
    ListView {
        anchors.fill: parent
        model: 5
        delegate: Component {
            Loader {
                property int modelIndex: index
                sourceComponent: myComponent
            }
        }
    }
}
```

**See also** Dynamic Object Creation.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="active-prop"></span><span class="name">active</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property is `true` if the Loader is currently active. The default value for this property is `true`.

If the Loader is inactive, changing the [source](index.html#source-prop) or [sourceComponent](index.html#sourceComponent-prop) will not cause the item to be instantiated until the Loader is made active.

Setting the value to inactive will cause any [item](index.html#item-prop) loaded by the loader to be released, but will not affect the [source](index.html#source-prop) or [sourceComponent](index.html#sourceComponent-prop).

The [status](index.html#status-prop) of an inactive loader is always `Null`.

**See also** [source](index.html#source-prop) and [sourceComponent](index.html#sourceComponent-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="asynchronous-prop"></span><span class="name">asynchronous</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the component will be instantiated asynchronously.

When used in conjunction with the [source](index.html#source-prop) property, loading and compilation will also be performed in a background thread.

Loading asynchronously creates the objects declared by the component across multiple frames, and reduces the likelihood of glitches in animation. When loading asynchronously the status will change to Loader.Loading. Once the entire component has been created, the [item](index.html#item-prop) will be available and the status will change to Loader.Ready.

To avoid seeing the items loading progressively set `visible` appropriately, e.g.

``` cpp
Loader {
    source: "mycomponent.qml"
    asynchronous: true
    visible: status == Loader.Ready
}
```

Note that this property affects object instantiation only; it is unrelated to loading a component asynchronously via a network.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="item-prop"></span><span class="name">item</span> : <span class="type">object</span></p></td>
</tr>
</tbody>
</table>

This property holds the top-level object that is currently loaded.

Since `QtQuick 2.0`, Loader can load any object type.

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

This property holds the progress of loading QML data from the network, from 0.0 (nothing loaded) to 1.0 (finished). Most QML files are quite small, so this value will rapidly change from 0 to 1.

**See also** [status](index.html#status-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="source-prop"></span><span class="name">source</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

This property holds the URL of the QML component to instantiate.

Since `QtQuick 2.0`, Loader is able to load any type of object; it is not restricted to Item types.

To unload the currently loaded object, set this property to an empty string, or set [sourceComponent](index.html#sourceComponent-prop) to `undefined`. Setting `source` to a new URL will also cause the item created by the previous URL to be unloaded.

**See also** [sourceComponent](index.html#sourceComponent-prop), [status](index.html#status-prop), and [progress](index.html#progress-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sourceComponent-prop"></span><span class="name">sourceComponent</span> : <span class="type">Component</span></p></td>
</tr>
</tbody>
</table>

This property holds the Component to instantiate.

``` qml
Item {
    Component {
        id: redSquare
        Rectangle { color: "red"; width: 10; height: 10 }
    }
    Loader { sourceComponent: redSquare }
    Loader { sourceComponent: redSquare; x: 10 }
}
```

To unload the currently loaded object, set this property to `undefined`.

Since `QtQuick 2.0`, Loader is able to load any type of object; it is not restricted to Item types.

**See also** [source](index.html#source-prop) and [progress](index.html#progress-prop).

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

This property holds the status of QML loading. It can be one of:

-   Loader.Null - the loader is inactive or no QML source has been set
-   Loader.Ready - the QML source has been loaded
-   Loader.Loading - the QML source is currently being loaded
-   Loader.Error - an error occurred while loading the QML source

Use this status to provide an update or respond to the status change in some way. For example, you could:

-   Trigger a state change:

    ``` qml
    State { name: 'loaded'; when: loader.status == Loader.Ready }
    ```

-   Implement an `onStatusChanged` signal handler:

    ``` qml
    Loader {
        id: loader
        onStatusChanged: if (loader.status == Loader.Ready) console.log('Loaded')
    }
    ```

-   Bind to the status value:

    ``` qml
    Text { text: loader.status == Loader.Ready ? 'Loaded' : 'Not loaded' }
    ```

Note that if the source is a local file, the status will initially be Ready (or Error). While there will be no onStatusChanged signal in that case, the onLoaded will still be invoked.

**See also** [progress](index.html#progress-prop).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="loaded-signal"></span><span class="name">loaded</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the [status](index.html#status-prop) becomes `Loader.Ready`, or on successful initial load.

The corresponding handler is `onLoaded`.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="setSource-method"></span><span class="type">object</span> <span class="name">setSource</span>(<span class="type">url</span> <em>source</em>, <span class="type">object</span> <em>properties</em>)</p></td>
</tr>
</tbody>
</table>

Creates an object instance of the given *source* component that will have the given *properties*. The *properties* argument is optional. The instance will be accessible via the [item](index.html#item-prop) property once loading and instantiation is complete.

If the [active](index.html#active-prop) property is `false` at the time when this function is called, the given *source* component will not be loaded but the *source* and initial *properties* will be cached. When the loader is made [active](index.html#active-prop), an instance of the *source* component will be created with the initial *properties* set.

Setting the initial property values of an instance of a component in this manner will **not** trigger any associated [Behavior](../QtQuick.Behavior/index.html)s.

Note that the cached *properties* will be cleared if the [source](index.html#source-prop) or [sourceComponent](index.html#sourceComponent-prop) is changed after calling this function but prior to setting the loader [active](index.html#active-prop).

Example:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><pre class="qml"><code>// ExampleComponent.qml
import QtQuick 2.0
Rectangle {
    id: rect
    color: &quot;red&quot;
    width: 10
    height: 10
    Behavior on color {
        NumberAnimation {
            target: rect
            property: &quot;width&quot;
            to: (rect.width + 20)
            duration: 0
        }
    }
}</code></pre></td>
<td><pre class="qml"><code>// example.qml
import QtQuick 2.0
Item {
    Loader {
        id: squareLoader
        onLoaded: console.log(squareLoader.item.width); // prints [10], not [30]
    }
    Component.onCompleted: {
        squareLoader.setSource(&quot;ExampleComponent.qml&quot;, { &quot;color&quot;: &quot;blue&quot; });
        // will trigger the onLoaded code when complete.
    }
}</code></pre></td>
</tr>
</tbody>
</table>

**See also** [source](index.html#source-prop) and [active](index.html#active-prop).

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
