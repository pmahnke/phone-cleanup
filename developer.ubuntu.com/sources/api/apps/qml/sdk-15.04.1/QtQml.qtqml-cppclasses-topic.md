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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.1</a> ›
-   <a href="../QtQml/index.html" class="sub-nav-item">QtQml</a> ›

<!-- -->

-   Important C++ Classes Provided By The Qt QML Module

Important C++ Classes Provided By The Qt QML Module
===================================================

<span class="subtitle"></span>
<span id="details"></span>
The [Qt QML](../QtQml.qtqml-index/index.html) module provides C++ classes which implement the QML framework. Clients can use these classes to interact with the QML run-time (for example, by injecting data or invoking methods on objects), and to instantiate a hierarchy of objects from a QML document. The Qt QML module provides more C++ API than just the classes listed here, however the classes listed here provide the foundations of the QML runtime and the core concepts of QML.

<span id="qml-runtime"></span>
QML Runtime
-----------

A typical QML application with a C++ entry-point will instantiate a QQmlEngine and then use a QQmlComponent to load a QML document. The engine provides a default QQmlContext which will be the top-level evaluation context used for evaluating functions and expressions defined in the QML document. The object hierarchy defined in the QML document will be instantiated by calling the create() function of the QQmlComponent instance, assuming that no errors were encountered during document loading.

The client may wish to modify the QQmlContext provided by the engine, by injecting properties or objects into the context. They can call the QQmlEngine::rootContext() function to access the top-level context.

After instantiating the object, the client will usually pass control to the application event loop so that user input events (like mouse-clicks) can be delivered and handled by the application.

**Note:** The Qt Quick module provides a convenience class, QQuickView, which provides a QML runtime and visual window for displaying a QML application.

<span id="the-qqmlengine-class"></span>
### The QQmlEngine Class

The QQmlEngine class provides an engine which can manage a hierarchy of objects which is defined in a QML document. It provides a root QML context within which expressions are evaluated, and ensures that properties of objects are updated correctly when required.

A QQmlEngine allows the configuration of global settings that apply to all of the objects it manages; for example, the QNetworkAccessManager to be used for network communications, and the file path to be used for persistent storage.

See the QQmlEngine class documentation for in-depth information about what the QQmlEngine class provides, and how it can be used in an application.

<span id="the-qqmlcontext-class"></span>
### The QQmlContext Class

The QQmlContext class provides a context for object instantiation and expression evaluation. All objects are instantiated in a particular context, and all of the expressions which are evaluated while an application is running are evaluated within a particular context. This context defines how symbols are resolved, and thus which values the expression operates on.

See the QQmlContext class documentation for in-depth information about how to modify the evaluation context of an object by adding or removing properties of a QQmlContext, and how to access the context for an object.

<span id="dynamic-object-instantiation-and-expression-evaluation"></span>
Dynamic Object Instantiation and Expression Evaluation
------------------------------------------------------

Dynamic object instantiation and dynamic expression evaluation are both core concepts in QML. QML documents define object types which can be instantiated at run-time using a QQmlComponent. An instance of the QQmlComponent class can be created in C++ directly, or via the Qt.createComponent() function in imperative QML code. Arbitrary expressions can be calculated in C++ via the QQmlExpression class, and such expressions can interact directly the QML context.

<span id="the-qqmlcomponent-class"></span>
### The QQmlComponent Class

The QQmlComponent class can be used to load a QML document. It requires a QQmlEngine in order to instantiate the hierarchy of objects defined in the QML document.

See the QQmlComponent class documentation for in-depth information about how to use QQmlComponent.

<span id="the-qqmlexpression-class"></span>
### The QQmlExpression Class

The QQmlExpression class provides a way for clients to evaluate JavaScript expressions from C++, using a particular QML evaluation context. This allows clients to access QML objects by id, for example. The result of evaluation is returned as a QVariant, and the conversion rules are defined by the QML engine.

See the QQmlExpression class documentation for in depth information about how to use QQmlExpression in an application.

<span id="usage-of-the-classes-within-qml-applications"></span>
Usage of the Classes within QML Applications
--------------------------------------------

These pages describe how to create QML applications which interact with the C++ classes:

-   [Integrating QML and C++](../QtQml.qtqml-cppintegration-topic/index.html)
    -   [Exposing Attributes of C++ Classes to QML](../QtQml.qtqml-cppintegration-exposecppattributes/index.html)
    -   [Defining QML Types from C++](../QtQml.qtqml-cppintegration-definetypes/index.html)
    -   [Embedding C++ Objects into QML with Context Properties](../QtQml.qtqml-cppintegration-contextproperties/index.html)
    -   [Interacting with QML Objects from C++](../QtQml.qtqml-cppintegration-interactqmlfromcpp/index.html)
    -   [Data Type Conversion Between QML and C++](../QtQml.qtqml-cppintegration-data/index.html)

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
