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

-   QML Object Types

QML Object Types
================

<span class="subtitle"></span>
<span id="details"></span>
A QML object type is a type from which a QML object can be instantiated.

In syntactic terms, a QML object type is one which can be used to declare an object by specifying the *type name* followed by a set of curly braces that encompasses the attributes of that object. This differs from *basic types*, which cannot be used in the same way. For example, Rectangle is a QML object type: it can be used to create `Rectangle` type objects. This cannot be done with primitive types such as `int` and `bool`, which are used to hold simple data types rather than objects.

Custom QML object types can be defined by creating a .qml file that defines the type, as discussed in [Documents as QML object type definitions](../QtQml.qtqml-documents-definetypes/index.html), or by defining a QML type from C++ and registering the type with the QML engine, as discussed in [Defining QML Types from C++](../QtQml.qtqml-cppintegration-definetypes/index.html).

<span id="defining-object-types-from-qml"></span>
Defining Object Types from QML
------------------------------

<span id="defining-object-types-through-qml-documents"></span>
### Defining Object Types through QML Documents

Plugin writers and application developers may provide types defined as QML documents. A QML document, when visible to the QML import system, defines a type identified by the name of the file minus the file extensions.

Thus, if a QML document named "MyButton.qml" exists, it provides the definition of the "MyButton" type, which may be used in a QML application.

See the documentation about [QML Documents](../QtQml.qtqml-documents-topic/index.html) for information on how to define a QML document, and the syntax of the QML language. Once you are familiar with the QML language and how to define QML documents, see the documentation which explains how to [define and use your own reusable QML types in QML documents](../QtQml.qtqml-documents-definetypes/index.html).

See [Defining Object Types through QML Documents](../QtQml.qtqml-documents-definetypes/index.html) for more information.

<span id="defining-anonymous-types-with-component"></span>
### Defining Anonymous Types with Component

Another method of creating object types from within QML is to use the [Component](../QtQml.Component/index.html) type. This allows a type to be defined inline within a QML document, instead of using a separate document in a `.qml` file.

``` qml
Item {
    id: root
    width: 500; height: 500
    Component {
        id: myComponent
        Rectangle { width: 100; height: 100; color: "red" }
    }
    Component.onCompleted: {
        myComponent.createObject(root)
        myComponent.createObject(root, {"x": 200})
    }
}
```

Here the `myComponent` object essentially defines an anonymous type that can be instantiated using [Component::createObject](../QtQml.Component/index.html#createObject-method) to create objects of this anonymous type.

Inline components share all the characteristics of regular top-level components and use the same `import` list as their containing QML document.

Note that each [Component](../QtQml.Component/index.html) object declaration creates its own *component scope*. Any *id* values used and referred to from within a [Component](../QtQml.Component/index.html) object declaration must be unique within that scope, but do not need to be unique within the document within which the inline component is declared. So, the Rectangle declared in the `myComponent` object declaration could have an *id* of `root` without conflicting with the `root` declared for the Item object in the same document, as these two *id* values are declared within different component scopes.

See [Scope and Naming Resolution](../QtQml.qtqml-documents-scope/index.html) for more details.

<span id="defining-object-types-from-c"></span>
Defining Object Types from C++
------------------------------

C++ plugin writers and application developers may register types defined in C++ through API provided by the Qt QML module. There are various registration functions which each allow different use-cases to be fulfilled. For more information about those registration functions, and the specifics of exposing custom C++ types to QML, see the documentation regarding [Defining QML Types from C++](../QtQml.qtqml-cppintegration-definetypes/index.html).

The QML type-system relies on imports, plugins and extensions being installed into a known import path. Plugins may be provided by third-party developers and reused by client application developers. Please see the documentation about [QML modules](../QtQml.qtqml-modules-topic/index.html) for more information about how to create and deploy a QML extension module.

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
