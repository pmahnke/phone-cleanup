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

-   Qt QML

Qt QML
======

<span class="subtitle"></span>
<span id="details"></span>
The Qt QML module provides a framework for developing applications and libraries with the QML language. It defines and implements the language and engine infrastructure, and provides an API to enable application developers to extend the QML language with custom types and integrate QML code with JavaScript and C++. The Qt QML module provides both a QML API and a C++ API.

Note that while the Qt QML module provides the language and infrastructure for QML applications, the Qt Quick module provides many visual components, model-view support, an animation framework, and much more for building user interfaces.

For those new to QML and Qt Quick, please see QML Applications for an introduction to writing QML applications.

<span id="getting-started"></span>
Getting Started
---------------

To include the definitions of the module's classes, use the following directive:

``` cpp
#include <QtQml>
```

The QML types in Qt QML are available through the `QtQML` import. To use the types, add the following import statement to your .qml file:

``` cpp
import QtQml 2.0
```

To link against the module, add this line to your qmake `.pro` file:

``` cpp
QT += qml
```

<span id="qml-and-qml-types"></span>
QML and QML Types
-----------------

The Qt QML module contains the QML framework and important QML types used in applications. The constructs of QML are described in the [The QML Reference](../QtQml.qmlreference/index.html).

In addition to the [QML Basic Types](../QtQml.qtqml-typesystem-basictypes/index.html), the module comes with the following QML object types:

-   [Component](../QtQml.Component/index.html)
-   [QtObject](../QtQml.QtObject/index.html)
-   [Binding](../QtQml.Binding/index.html)
-   [Connections](../QtQml.Connections/index.html)
-   [Timer](../QtQml.Timer/index.html)

The [Qt](../QtQml.Qt/index.html) global object provides useful enums and functions for various QML types.

<span id="lists-and-models"></span>
### Lists and Models

New in Qt 5.1, the model types are moved to a submodule, `QtQml.Models`. The Qt QML Models page has more information.

-   [DelegateModel](../QtQml.DelegateModel/index.html)
-   [DelegateModelGroup](../QtQml.DelegateModelGroup/index.html)
-   [ListElement](../QtQml.ListElement/index.html)
-   [ListModel](../QtQml.ListModel/index.html)
-   [ObjectModel](../QtQml.ObjectModel/index.html)

<span id="javascript-environment-for-qml-applications"></span>
JavaScript Environment for QML Applications
-------------------------------------------

JavaScript expressions allow QML code to contain application logic. Qt QML provides the framework for running JavaScript expressions in QML and from C++.

These sections are from [The QML Reference](../QtQml.qmlreference/index.html). [Integrating QML and JavaScript](../QtQml.qtqml-javascript-topic/index.html)

-   [Using JavaScript Expressions with QML](../QtQml.qtqml-javascript-expressions/index.html)
-   [Dynamic QML Object Creation from JavaScript](../QtQml.qtqml-javascript-dynamicobjectcreation/index.html)
-   [Defining JavaScript Resources In QML](../QtQml.qtqml-javascript-resources/index.html)
-   [Importing JavaScript Resources In QML](../QtQml.qtqml-javascript-imports/index.html)
-   [JavaScript Host Environment](../QtQml.qtqml-javascript-hostenvironment/index.html)

<span id="integrating-qml-with-c-applications"></span>
Integrating QML with C++ Applications
-------------------------------------

The module also provides the framework for running QML applications. The QML framework allows QML code to contain JavaScript expressions and for the QML code to interact with C++ code.

-   [Important C++ Classes Provided By The Qt QML Module](../QtQml.qtqml-cppclasses-topic/index.html)
-   [Integrating QML and C++](../QtQml.qtqml-cppintegration-topic/index.html)

<span id="additional-frameworks"></span>
Additional Frameworks
---------------------

-   [The Declarative State Machine Framework](../QtQml.qmlstatemachine/index.html)

<span id="guides-and-other-information"></span>
Guides and Other Information
----------------------------

Further information for writing QML applications:

-   [The QML Reference](../QtQml.qmlreference/index.html)
-   QML Applications - essential information for application development with QML and Qt Quick
-   Qt Quick - a module which provides a set of QML types and C++ classes for building user interfaces and applications with QML
-   [Qt QML Release Notes](../QtQml.qtqml-releasenotes/index.html) - list of changes and additions in the Qt QML module

<span id="reference"></span>
### Reference

-   C++ Classes
-   QML Types

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
