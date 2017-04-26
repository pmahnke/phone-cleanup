---
Title: QtQml.qtqml-releasenotes
---
        
Qt QML Release Notes
====================

<span class="subtitle"></span>
details
Qt QML in Qt 5.1
----------------

Qt 5.1 introduces several bug fixes and new functionalities to Qt QML. This is a summary of the new changes:

-   New QQmlApplicationEngine convenience class for QML applications.
-   New Instantiatior type for generic, dynamic object creation.
-   New properties for [Qt.application](../QtQml.Qt.md#application-prop): arguments, name, and version.
-   The 'with' statement has been deprecated and is slated for removal in a future version of the language.
-   New [Qt.platform](../QtQml.Qt.md#platform-prop) object with an `os` property
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

The [Qt QML](../QtQml.qtqml-index.md) module is new in Qt 5.0. It provides the QML engine and implements the QML language supporting infrastructure.

(Prior to Qt 5, this functionality was provided by the QtDeclarative module, which has now been replaced by the new [Qt QML](../QtQml.qtqml-index.md) and Qt Quick modules. See the Porting QML Applications to Qt 5 page for more information.)

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
        -   Calling the new Component [Component::incubateObject](../QtQml.Component.md#incubateObject-method) method
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
-   The [Qt](../QtQml.Qt.md) global object now provides an [inputMethod](../QtQml.Qt.md#inputMethod-prop) property to access the active text input method for an application.

