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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.3</a> ›
-   <a href="../QtQml/index.html" class="sub-nav-item">QtQml</a> ›

<!-- -->

-   Integrating QML and C++

Integrating QML and C++
=======================

<span class="subtitle"></span>
<span id="details"></span>
QML is designed to be easily extensible through C++ code. The classes in the [Qt QML](../QtQml.qtqml-index/index.html) module enables QML objects to be loaded and manipulated from C++, and the nature of QML engine's integration with Qt's meta object system enables C++ functionality to be invoked directly from QML. This allows the development of hybrid applications which are implemented with a mixture of QML, JavaScript and C++ code.

Integrating QML and C++ provides a variety of opportunities, including the ability to:

-   Separate the user interface code from the application logic code, by implementing the former with QML and JavaScript within [QML documents](../QtQml.qtqml-documents-topic/index.html), and the latter with C++
-   Use and invoke some C++ functionality from QML (for example, to invoke your application logic, use a data model implemented in C++, or call some functions in a third-party C++ library)
-   Access functionality in the [Qt QML](../QtQml.qtqml-index/index.html) or Qt Quick C++ API (for example, to dynamically generate images using QQuickImageProvider)
-   Implement your own [QML object types](../QtQml.qtqml-typesystem-objecttypes/index.html) from C++ — whether for use within your own specific application, or for distribution to others

To provide some C++ data or functionality to QML, it must be made available from a QObject-derived class. Due to the QML engine's integration with the meta object system, the properties, methods and signals of any QObject-derived class are accessible from QML, as described in [Exposing Attributes of C++ Types to QML](../QtQml.qtqml-cppintegration-exposecppattributes/index.html). Once the required functionality is provided by such a class, it can be exposed to QML in a variety of ways:

-   The class can be [registered as an instantiable QML type](../QtQml.qtqml-cppintegration-definetypes/index.html#registering-an-instantiable-object-type), so that it can be instantiated and used like any ordinary [QML object type](../QtQml.qtqml-typesystem-objecttypes/index.html) from QML code
-   The class can be registered as a [Singleton Type](../QtQml.qtqml-cppintegration-definetypes/index.html#registering-singleton-objects-with-a-singleton-type) so that a single instance of the class may be imported from QML code, allowing the instance's properties, methods and signals to be accessed from QML
-   An instance of the class can be [embedded into QML code](../QtQml.qtqml-cppintegration-contextproperties/index.html) as a *context property* or *context object*, allowing the instance's properties, methods and signals to be accessed from QML

These are the most common methods of accessing C++ functionality from QML code; for more options and details, see the main documentation pages that are described in the sections further below. Additionally, aside from the ability to access C++ functionality from QML, the [Qt QML](../QtQml.qtqml-index/index.html) module also provides ways to do the reverse and manipulate QML objects from C++ code. See [Interacting with QML Objects from C++](../QtQml.qtqml-cppintegration-interactqmlfromcpp/index.html) for more details.

Finally, the C++ code may be integrated into either a C++ application or a C++ plugin depending on whether it is to be distributed as a standalone application or a library. A plugin can be integrated with a QML module that can then be imported and used by QML code in other applications; see [Providing Types and Functionality in a C++ Plugin](../QtQml.qtqml-modules-cppplugins/index.html) for more information.

<span id="exposing-attributes-of-c-classes-to-qml"></span>
Exposing Attributes of C++ Classes to QML
-----------------------------------------

QML can easily be extended from C++ due to the QML engine's integration with the Qt meta object system. This integration allows the properties, methods and signals of any QObject-derived class to be accessible from QML: properties can be read and modified, methods can be invoked from JavaScript expressions and signal handlers are automatically created for signals as necessary. Additionally, enumeration values of a QObject-derived class are accessible from QML.

See [Exposing Attributes of C++ Types to QML](../QtQml.qtqml-cppintegration-exposecppattributes/index.html) for more information.

<span id="defining-qml-types-from-c"></span>
Defining QML Types from C++
---------------------------

QML types can be defined in C++ and then registered with the [QML type system](../QtQml.qtqml-typesystem-topic/index.html). This allows a C++ class to be instantiated as a [QML object type](../QtQml.qtqml-typesystem-objecttypes/index.html), enabling custom object types to be implemented in C++ and integrated into existing QML code. A C++ class may be also registered for other purposes: for example, it could be registered as a *Singleton Type* to enable a single class instance to be imported by QML code, or it could be registered to enable the enumeration values of a non-instantiable class to be accessible from QML.

Additionally, the [Qt QML](../QtQml.qtqml-index/index.html) module provides mechanisms to define QML types that integrate with QML concepts like attached properties and default properties.

For more information on registering and creating custom QML types from C++, see the [Defining QML Types from C++](../QtQml.qtqml-cppintegration-definetypes/index.html) documentation.

<span id="embedding-c-objects-into-qml-with-context-properties"></span>
Embedding C++ Objects into QML with Context Properties
------------------------------------------------------

C++ objects and values can be embedded directly into the context (or *scope*) of loaded QML objects using *context properties* and *context objects*. This is achieved through the QQmlContext class provided by the Qt QML module, which exposes data to the context of a QML component, allowing data to be injected from C++ into QML.

See [Embedding C++ Objects into QML with Context Properties](../QtQml.qtqml-cppintegration-contextproperties/index.html) for more information.

<span id="interacting-with-qml-objects-from-c"></span>
Interacting with QML Objects from C++
-------------------------------------

QML object types can be instantiated from C++ and inspected in order to access their properties, invoke their methods and receive their signal notifications. This is possible due to the fact that all QML object types are implemented using QObject-derived classes, enabling the QML engine to dynamically load and introspect objects through the Qt meta object system.

For more information on accessing QML objects from C++, see the documentation on [Interacting with QML Objects from C++](../QtQml.qtqml-cppintegration-interactqmlfromcpp/index.html).

<span id="data-type-conversion-between-qml-and-c"></span>
Data Type Conversion Between QML and C++
----------------------------------------

When data values are exchanged between QML and C++, they are converted by the QML engine to have the correct data types as appropriate for use from QML or C++, providing the data types involved are known to the engine.

See [Data Type Conversion Between QML and C++](../QtQml.qtqml-cppintegration-data/index.html) for information on the built-in types supported by the engine and how these types are converted for use when exchanged between QML and C++.

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
