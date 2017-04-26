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

-   Qt QML Release Notes

Qt QML Release Notes
====================

<span class="subtitle"></span>
<span id="details"></span> <span id="qt-qml-in-qt-5-1"></span>
Qt QML in Qt 5.1
----------------

Qt 5.1 introduces several bug fixes and new functionalities to Qt QML. This is a summary of the new changes:

-   New QQmlApplicationEngine convenience class for QML applications.
-   New Instantiatior type for generic, dynamic object creation.
-   New properties for [Qt.application](../QtQml.Qt/index.html#application-prop): arguments, name, and version.
-   The 'with' statement has been deprecated and is slated for removal in a future version of the language.
-   New [Qt.platform](../QtQml.Qt/index.html#platform-prop) object with an `os` property
-   New qmlClearTypeRegistrations() function drops all data from qmlRegisterType() calls
-   New qmlRegisterType() function for registering composite types.

<span id="new-submodule"></span>
### New Submodule

The Qt QML Models is a new submodule in Qt 5.1 and provides several QML types for handling data with models and lists. These types replace types such as VisualItemModel, VisualDataModel, and VisualDataGroup.

-   Models

The What's New in Qt 5.1 has more information about the Qt 5.1 release.

<span id="qt-qml-in-qt-5-0"></span>
Qt QML in Qt 5.0
----------------

The [Qt QML](../QtQml.qtqml-index/index.html) module is new in Qt 5.0. It provides the QML engine and implements the QML language supporting infrastructure.

(Prior to Qt 5, this functionality was provided by the QtDeclarative module, which has now been replaced by the new [Qt QML](../QtQml.qtqml-index/index.html) and Qt Quick modules. See the Porting QML Applications to Qt 5 page for more information.)

<span id="qml-engine"></span>
### QML Engine

-   JavaScript engine has changed to V8.
-   Various parser and compiler optimizations have been implemented, as well as a new bindings optimizer.
-   New QQmlEngine::trimComponentCache() method safely discards unused data in the engine's component cache to free memory.

<span id="component-and-object-creation"></span>
### Component and Object Creation

-   QML objects can now be created asynchronously to improve application performance.
    -   New QQmlIncubator and QQmlIncubationController C++ classes can be used to create objects asynchronously.
    -   From QML code, this behavior can enabled by:
        -   Calling the new Component [Component::incubateObject](../QtQml.Component/index.html#incubateObject-method) method
        -   Passing the `Component.Asynchronous` parameter to `Qt.createComponent()`
        -   Loading a Loader object asynchronously using the asynchronous property
-   The component returned by `Qt.createComponent()` is no longer parented to the engine. Be sure to hold a reference, or provide a parent.

<span id="type-system"></span>
### Type System

-   New var property type. This is a general-purpose property type which obsoletes the variant type. Properties of the var type may hold JavaScript references.
-   QML properties of type var and variant can now hold pixmaps. See Scarce Resources in JavaScript for more information.
-   Value type improvements:
    -   QML now supports defining properties of value type basic types within QML documents. Supported types include QSizeF, QPointF and QRectF as `size`, `point` and `rect` respectively.
    -   QColor is now a value type provided by the `QtQuick` module. The red, green, blue and alpha channels of a color property can be accessed via `r`, `g`, `b` and `a` properties.
    -   Factory functions for various value types have been added to the `Qt` object exposed to QML. Some of those functions require the `QtQuick` module to be imported in order to return valid values. See the Qt Quick Release Notes for more information about these functions.
-   Support for sequence types QList&lt;int&gt;, QList&lt;qreal&gt;, QList&lt;bool&gt;, QList&lt;QUrl&gt;, QList&lt;QString&gt; and QStringList has been improved. QObjects can define Q\_PROPERTYs of these types which can be accessed transparently from JavaScript.

<span id="modules-and-imports"></span>
### Modules and Imports

-   Arbitrary functionality may be provided in a namespace through a singleton type. See qmlRegisterSingletonType() for more information.
-   JavaScript (.js) files may now import QML modules and other JavaScript files using the ".import" syntax.
-   Plugins may now use QQmlExtensionPlugin::baseUrl to get the directory from which the plugin is loaded. This will be useful if the plugin needs to load QML or other assets from the same directory.

<span id="other"></span>
### Other

-   QQmlExpression can now be constructed directly (and more efficiently) from a QQmlScriptString.
-   The [Qt](../QtQml.Qt/index.html) global object now provides an [inputMethod](../QtQml.Qt/index.html#inputMethod-prop) property to access the active text input method for an application.

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
