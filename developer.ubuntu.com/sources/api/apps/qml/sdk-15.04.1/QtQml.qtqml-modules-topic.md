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

-   QML Modules

QML Modules
===========

<span class="subtitle"></span>
<span id="details"></span>
A QML module provides versioned types and JavaScript resources in a type namespace which may be used by clients who import the module. The types which a module provides may be defined in C++ within a plugin, or in QML documents. Modules make use of the QML versioning system which allows modules to be independently updated.

Defining of a QML module allows:

-   The sharing of common QML types within a project - for example, a group of UI components that are used by different windows
-   The distribution of QML-based libraries
-   The modularization of distinct features, so that applications only load the libraries necessary for their individual needs
-   Versioning of types and resources so that the module can be updated safely without breaking client code

<span id="defining-a-qml-module"></span>
Defining a QML Module
---------------------

A module is defined by a [module definition qmldir file](../QtQml.qtqml-modules-qmldir/index.html). Each module has an associated type namespace, which is the module's identifier. A module can provide QML object types (defined either by QML documents or via a C++ plugin) and JavaScript resources, and may be imported by clients.

To define a module, a developer should gather together the various QML documents, JavaScript resources and C++ plugins which belong in the module into a single directory, and write an appropriate [module definition qmldir file](../QtQml.qtqml-modules-qmldir/index.html) which should also be placed into the directory. The directory can then be installed into the [QML import path](../QtQml.qtqml-syntax-imports/index.html#qml-import-path) as a module.

Note that defining a module is not the only way to share common QML types within a project - a simple [QML document directory import](../QtQml.qtqml-syntax-directoryimports/index.html) may also be used for this purpose.

<span id="supported-qml-module-types"></span>
Supported QML Module Types
--------------------------

There are two different types of modules supported by QML:

-   [Identified Modules](../QtQml.qtqml-modules-identifiedmodules/index.html)
-   [Legacy Modules](../QtQml.qtqml-modules-legacymodules/index.html) (deprecated)

Identified modules explicitly define their identifier and are installed into QML import path. Identified modules are more maintainable (due to type versioning) and are provided with type registration guarantees by the QML engine which are not provided to legacy modules. Legacy modules are only supported to allow legacy code to continue to work with the latest version of QML, and should be avoided by clients if possible.

Clients may import a QML module from within QML documents or JavaScript files. Please see the documentation about [importing a QML module](../QtQml.qtqml-syntax-imports/index.html#module-namespace-imports) for more information on the topic.

<span id="providing-types-and-functionality-in-a-c-plugin"></span>
Providing Types and Functionality in a C++ Plugin
-------------------------------------------------

An application which has a lot of logic implemented in C++, or which defines types in C++ and exposes them to QML, may wish to implement a QML plugin. A QML extension module developer may wish to implement some types in a C++ plugin (as opposed to defining them via QML documents) to achieve better performance or for greater flexibility.

Every C++ plugin for QML has an initialiatization function which is called by the QML engine when it loads the plugin. This initialization function must register any types that the plugin provides, but must not do anything else (for example, instantiating QObjects is not allowed).

See [Creating C++ Plugins For QML](../QtQml.qtqml-modules-cppplugins/index.html) for more information.

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
