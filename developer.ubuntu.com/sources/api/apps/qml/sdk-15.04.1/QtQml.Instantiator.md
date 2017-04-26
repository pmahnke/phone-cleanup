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
-   [SDK 15.04.1](../index.html) ›
-   [QtQml](../QtQml/index.html) ›

<!-- -->

-   Instantiator

Instantiator
============

<span class="subtitle"></span>
Dynamically creates objects More...

|                   |                  |
|-------------------|------------------|
| Import Statement: | import QtQml 2.2 |

<span id="properties"></span>
Properties
----------

-   ****[active](index.html#active-prop)**** : bool
-   ****[asynchronous](index.html#asynchronous-prop)**** : bool
-   ****[count](index.html#count-prop)**** : int
-   ****[delegate](index.html#delegate-prop)**** : QtQml::Component
-   ****[model](index.html#model-prop)**** : variant
-   ****[object](index.html#object-prop)**** : QtQml::QtObject

<span id="signals"></span>
Signals
-------

-   ****[objectAdded](index.html#objectAdded-signal)****(int *index*, QtObject *object*)
-   ****[objectRemoved](index.html#objectRemoved-signal)****(int *index*, QtObject *object*)

<span id="details"></span>
Detailed Description
--------------------

A Instantiator can be used to control the dynamic creation of objects, or to dynamically create multiple objects from a template.

The Instantiator element will manage the objects it creates. Those objects are parented to the Instantiator and can also be deleted by the Instantiator if the Instantiator's properties change. Objects can also be destroyed dynamically through other means, and the Instantiator will not recreate them unless the properties of the Instantiator change.

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

When active is true, and the delegate component is ready, the Instantiator will create objects according to the model. When active is false, no objects will be created and any previously created objects will be destroyed.

Default is true.

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

When asynchronous is true the Instantiator will attempt to create objects asynchronously. This means that objects may not be available immediately, even if active is set to true.

You can use the [objectAdded](index.html#objectAdded-signal) signal to respond to items being created.

Default is false.

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

The number of objects the Instantiator is currently managing.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="delegate-prop"></span><span class="qmldefault">default</span><span class="name">delegate</span> : <span class="type"><a href="../QtQml.Component/index.html">QtQml::Component</a></span></p></td>
</tr>
</tbody>
</table>

The component used to create all objects.

Note that an extra variable, index, will be available inside instances of the delegate. This variable refers to the index of the instance inside the Instantiator, and can be used to obtain the object through the itemAt method of the Instantiator.

If this property is changed, all instances using the old delegate will be destroyed and new instances will be created using the new delegate.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="model-prop"></span><span class="name">model</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property can be set to any of the supported data models:

-   A number that indicates the number of delegates to be created by the repeater
-   A model (e.g. a [ListModel](../QtQml.ListModel/index.html) item, or a QAbstractItemModel subclass)
-   A string list
-   An object list

The type of model affects the properties that are exposed to the [delegate](index.html#delegate-prop).

Default value is 1, which creates a single delegate instance.

**See also** Data Models.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="object-prop"></span><span class="name">object</span> : <span class="type"><a href="../QtQml.QtObject/index.html">QtQml::QtObject</a></span></p></td>
</tr>
</tbody>
</table>

This is a reference to the first created object, intended as a convenience for the case where only one object has been created.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="objectAdded-signal"></span><span class="name">objectAdded</span>(<span class="type">int</span> <em>index</em>, <span class="type"><a href="../QtQml.QtObject/index.html">QtObject</a></span> <em>object</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when an object is added to the Instantiator. The *index* parameter holds the index which the object has been given, and the *object* parameter holds the [QtObject](../QtQml.QtObject/index.html) that has been added.

The corresponding handler is `onObjectAdded`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="objectRemoved-signal"></span><span class="name">objectRemoved</span>(<span class="type">int</span> <em>index</em>, <span class="type"><a href="../QtQml.QtObject/index.html">QtObject</a></span> <em>object</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when an object is removed from the Instantiator. The *index* parameter holds the index which the object had been given, and the *object* parameter holds the [QtObject](../QtQml.QtObject/index.html) that has been removed.

Do not keep a reference to *object* if it was created by this Instantiator, as in these cases it will be deleted shortly after the signal is handled.

The corresponding handler is `onObjectRemoved`.

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
