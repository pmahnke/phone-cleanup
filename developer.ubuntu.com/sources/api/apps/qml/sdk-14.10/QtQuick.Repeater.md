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
-   [SDK 14.10](../index.html) ›
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   Repeater

Repeater
========

<span class="subtitle"></span>
Instantiates a number of Item-based components using a provided model More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td><code>import QtQuick 2.2</code></td>
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

-   ****[count](index.html#count-prop)**** : int
-   ****[delegate](index.html#delegate-prop)**** : Component
-   ****[model](index.html#model-prop)**** : any

<span id="signals"></span>
Signals
-------

-   ****[itemAdded](index.html#itemAdded-signal)****(int *index*, Item *item*)
-   ****[itemRemoved](index.html#itemRemoved-signal)****(int *index*, Item *item*)

<span id="methods"></span>
Methods
-------

-   Item ****[itemAt](index.html#itemAt-method)****(index)

<span id="details"></span>
Detailed Description
--------------------

The Repeater type is used to create a large number of similar items. Like other view types, a Repeater has a [model](index.html#model-prop) and a [delegate](index.html#delegate-prop): for each entry in the model, the delegate is instantiated in a context seeded with data from the model. A Repeater item is usually enclosed in a positioner type such as [Row](../QtQuick.Row/index.html) or [Column](../QtQuick.Column/index.html) to visually position the multiple delegate items created by the Repeater.

The following Repeater creates three instances of a [Rectangle](../QtQuick.Rectangle/index.html) item within a [Row](../QtQuick.Row/index.html):

``` qml
import QtQuick 2.0
Row {
    Repeater {
        model: 3
        Rectangle {
            width: 100; height: 40
            border.width: 1
            color: "yellow"
        }
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/2a2c7c30-69f6-443b-9ea1-72cf2f914796-api/apps/qml/sdk-14.10/QtQuick.Repeater/images/repeater-simple.png)

A Repeater's [model](index.html#model-prop) can be any of the supported [data models](../QtQuick.qtquick-modelviewsdata-modelview/index.html#qml-data-models). Additionally, like delegates for other views, a Repeater delegate can access its index within the repeater, as well as the model data relevant to the delegate. See the [delegate](index.html#delegate-prop) property documentation for details.

Items instantiated by the Repeater are inserted, in order, as children of the Repeater's parent. The insertion starts immediately after the repeater's position in its parent stacking list. This allows a Repeater to be used inside a layout. For example, the following Repeater's items are stacked between a red rectangle and a blue rectangle:

``` qml
Row {
    Rectangle { width: 10; height: 20; color: "red" }
    Repeater {
        model: 10
        Rectangle { width: 20; height: 20; radius: 10; color: "green" }
    }
    Rectangle { width: 10; height: 20; color: "blue" }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/d4193027-f928-48e1-9292-3840d7ba3cb5-api/apps/qml/sdk-14.10/QtQuick.Repeater/images/repeater.png)

**Note:** A Repeater item owns all items it instantiates. Removing or dynamically destroying an item created by a Repeater results in unpredictable behavior.

<span id="considerations-when-using-repeater"></span>
### Considerations when using Repeater

The Repeater type creates all of its delegate items when the repeater is first created. This can be inefficient if there are a large number of delegate items and not all of the items are required to be visible at the same time. If this is the case, consider using other view types like [ListView](../QtQuick.ListView/index.html) (which only creates delegate items when they are scrolled into view) or use the Dynamic Object Creation methods to create items as they are required.

Also, note that Repeater is [Item](../QtQuick.Item/index.html)-based, and can only repeat [Item](../QtQuick.Item/index.html)-derived objects. For example, it cannot be used to repeat QtObjects:

``` cpp
//bad code
Item {
    Can't repeat QtObject as it doesn't derive from Item.
    Repeater {
        model: 10
        QtObject {}
    }
}
```

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="count-prop"></span><span class="name">count</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the number of items in the repeater.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="delegate-prop"></span><span class="qmldefault">default</span><span class="name">delegate</span> : <span class="type">Component</span></p></td>
</tr>
</tbody>
</table>

The delegate provides a template defining each item instantiated by the repeater.

Delegates are exposed to a read-only `index` property that indicates the index of the delegate within the repeater. For example, the following [Text](../QtQuick.Text/index.html) delegate displays the index of each repeated item:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><pre class="qml"><code>Column {
    Repeater {
        model: 10
        Text { text: &quot;I&#39;m item &quot; + index }
    }
}</code></pre></td>
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/16e1509a-10c3-4656-92a3-4d05fd1cd6e7-api/apps/qml/sdk-14.10/QtQuick.Repeater/images/repeater-index.png" /></p></td>
</tr>
</tbody>
</table>

If the [model](index.html#model-prop) is a [string list](../QtQuick.qtquick-modelviewsdata-cppmodels/index.html#qstringlist-based-model) or [object list](../QtQuick.qtquick-modelviewsdata-cppmodels/index.html#qobjectlist-based-model), the delegate is also exposed to a read-only `modelData` property that holds the string or object data. For example:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><pre class="qml"><code>Column {
    Repeater {
        model: [&quot;apples&quot;, &quot;oranges&quot;, &quot;pears&quot;]
        Text { text: &quot;Data: &quot; + modelData }
    }
}</code></pre></td>
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/a0881591-31cf-40ef-a71b-ab7d2ac91e87-api/apps/qml/sdk-14.10/QtQuick.Repeater/images/repeater-modeldata.png" /></p></td>
</tr>
</tbody>
</table>

If the [model](index.html#model-prop) is a model object (such as a [ListModel](../QtQuick.qtquick-modelviewsdata-modelview/index.html#listmodel)) the delegate can access all model roles as named properties, in the same way that delegates do for view classes like [ListView](../QtQuick.ListView/index.html).

**See also** [QML Data Models](../QtQuick.qtquick-modelviewsdata-modelview/index.html#qml-data-models).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="model-prop"></span><span class="name">model</span> : <span class="type">any</span></p></td>
</tr>
</tbody>
</table>

The model providing data for the repeater.

This property can be set to any of the supported [data models](../QtQuick.qtquick-modelviewsdata-modelview/index.html#qml-data-models):

-   A number that indicates the number of delegates to be created by the repeater
-   A model (e.g. a [ListModel](../QtQuick.qtquick-modelviewsdata-modelview/index.html#listmodel) item, or a [QAbstractItemModel](../QtQuick.qtquick-modelviewsdata-cppmodels/index.html#qabstractitemmodel) subclass)
-   A string list
-   An object list

The type of model affects the properties that are exposed to the [delegate](index.html#delegate-prop).

**See also** [Data Models](../QtQuick.qtquick-modelviewsdata-modelview/index.html#qml-data-models).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemAdded-signal"></span><span class="name">itemAdded</span>(<span class="type">int</span> <em>index</em>, <span class="type"><a href="../QtQuick.Item/index.html">Item</a></span> <em>item</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when an item is added to the repeater. The *index* parameter holds the index at which the item has been inserted within the repeater, and the *item* parameter holds the [Item](../QtQuick.Item/index.html) that has been added.

The corresponding handler is `onItemAdded`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemRemoved-signal"></span><span class="name">itemRemoved</span>(<span class="type">int</span> <em>index</em>, <span class="type"><a href="../QtQuick.Item/index.html">Item</a></span> <em>item</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when an item is removed from the repeater. The *index* parameter holds the index at which the item was removed from the repeater, and the *item* parameter holds the [Item](../QtQuick.Item/index.html) that was removed.

Do not keep a reference to *item* if it was created by this repeater, as in these cases it will be deleted shortly after the signal is handled.

The corresponding handler is `onItemRemoved`.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemAt-method"></span><span class="type"><a href="../QtQuick.Item/index.html">Item</a></span> <span class="name">itemAt</span>(<span class="type">index</span>)</p></td>
</tr>
</tbody>
</table>

Returns the [Item](../QtQuick.Item/index.html) that has been created at the given *index*, or `null` if no item exists at *index*.

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
