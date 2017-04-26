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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.6</a> ›
-   <a href="../QtQml/index.html" class="sub-nav-item">QtQml</a> ›

<!-- -->

-   Import Statements

Import Statements
=================

<span class="subtitle"></span>
<span id="details"></span> <span id="syntax-of-an-import-statement"></span>
Syntax of an Import Statement
-----------------------------

An import statement allows clients to tell the engine which modules, JavaScript resources and component directories are used within a QML document. The types which may be used within a document depends on which modules, resources and directories are imported by the document.

<span id="import-types"></span>
### Import Types

There are three different types of imports. Each import type has a slightly different syntax, and different semantics apply to different import types.

<span id="module-namespace-imports"></span>
#### Module (Namespace) Imports

The most common type of import is a module import. Clients can import [QML modules](../QtQml.qtqml-modules-identifiedmodules/index.html) which register QML object types and JavaScript resources into a given namespace.

The generic form of a module import is as follows:

``` cpp
import <ModuleIdentifier> <Version.Number> [as <Qualifier>]
```

-   The `<ModuleIdentifier>` is an identifier specified in dotted URI notation, which uniquely identifies the type namespace provided by the module.
-   The `<Version.Number>` is a version of the form `MajorVersion.MinorVersion` which specifies which definitions of various object types and JavaScript resources will be made available due to the import.
-   The `<Qualifier>` is an optional local namespace identifier into which the object types and JavaScript resources provided by the module will be installed, if given. If omitted, the object types and JavaScript resources provided by the module will be installed into the global namespace.

An example of an unqualified module import is as follows:

``` cpp
import QtQuick 2.0
```

This import allows the use of all of the types provided by the `QtQuick` module without needing to specify a qualifier. For example, the client code to create a rectangle is as follows:

``` qml
import QtQuick 2.0
Rectangle {
    width: 200
    height: 100
    color: "red"
}
```

An example of a qualified module import is as follows:

``` cpp
import QtQuick 2.0 as Quick
```

This import allows multiple modules which provide conflicting type names to be imported at the same time, however since each usage of a type provided by a module which was imported into a qualified namespace must be preceded by the qualifier, the conflict is able to be resolved unambiguously by the QML engine.

An example of client code which creates a rectangle after using a qualified module import is as follows:

``` qml
import QtQuick 2.0 as Quick
Quick.Rectangle {
    width: 200
    height: 100
    color: "red"
}
```

For more information about qualified imports, see the upcoming section on [Importing Into A Qualified Local Namespace](index.html#importing-into-a-qualified-local-namespace).

Note that if a QML document does not import a module which provides a particular QML object type, but attempts to use that object type anyway, an error will occur. For example, the following QML document does not import `QtQuick` and thus attempting to use the `Rectangle` type will fail:

``` qml
Rectangle {
    width: 200
    height: 100
    color: "red"
}
```

In this case, the engine will emit an error and refuse to load the file.

<span id="non-module-namespace-imports"></span>
##### Non-module Namespace Imports

Types can also be registered into namespaces directly via the various registration functions in C++ (such as qmlRegisterType()). The types which have been registered into a namespace in this way may be imported by importing the namespace, as if the namespace was a module identifier.

This is most common in client applications which define their own QML object types in C++ and register them with the QML type system manually.

<span id="importing-into-a-qualified-local-namespace"></span>
##### Importing into a Qualified Local Namespace

The `import` statement may optionally use the `as` keyword to specify that the types should be imported into a particular document-local namespace. If a namespace is specified, then any references to the types made available by the import must be prefixed by the local namespace qualifier.

Below, the `QtQuick` module is imported into the namespace "CoreItems". Now, any references to types from the `QtQuick` module must be prefixed with the `CoreItems` name:

``` qml
import QtQuick 2.0 as CoreItems
CoreItems.Rectangle {
    width: 100; height: 100
    CoreItems.Text { text: "Hello, world!" }
    // WRONG! No namespace prefix - the Text type won't be found
    Text { text: "Hello, world!" }
}
```

A namespace acts as an identifier for a module within the scope of the file. The namespace does not become an attribute of the root object that can be referred to externally as can be done with properties, signals and methods.

The namespaced import is useful if there is a requirement to use two QML types that have the same name but are located in different modules. In this case the two modules can be imported into different namespaces to ensure the code is referring to the correct type:

``` qml
import QtQuick 2.0 as CoreItems
import "../textwidgets" as MyModule
CoreItems.Rectangle {
    width: 100; height: 100
    MyModule.Text { text: "Hello from my custom text item!" }
    CoreItems.Text { text: "Hello from Qt Quick!" }
}
```

Note that multiple modules can be imported into the same namespace in the same way that multiple modules can be imported into the global namespace. For example:

``` qml
import QtQuick 2.0 as Project
import QtMultimedia 5.0 as Project
Project.Rectangle {
    width: 100; height: 50
    Project.Audio {
        source: "music.wav"
        autoPlay: true
    }
}
```

<span id="directory-imports"></span>
#### Directory Imports

A directory which contains QML documents may also be imported directly in a QML document. This provides a simple way for QML types to be segmented into reusable groupings: directories on the filesystem.

The generic form of a directory import is as follows:

``` qml
import "<DirectoryPath>" [as <Qualifier>]
```

**Note:** Import paths are network transparent: applications can import documents from remote paths just as simply as documents from local paths. See the general URL resolution rules for [Network Transparency](../QtQml.qtqml-documents-networktransparency/index.html) in QML documents. If the directory is remote, it must contain a [directory import listing qmldir file](../QtQml.qtqml-syntax-directoryimports/index.html#directory-listing-qmldir-files) as the QML engine cannot determine the contents of a remote directory if that `qmldir` file does not exist.

Similar semantics for the `<Qualifier>` apply to directory imports as for module imports; for more information on the topic, please see the previous section about [Importing into a Qualified Local Namespace](index.html#importing-into-a-qualified-local-namespace).

For more information about directory imports, please see the in-depth documentation about [directory imports](../QtQml.qtqml-syntax-directoryimports/index.html).

<span id="javascript-resource-imports"></span>
#### JavaScript Resource Imports

JavaScript resources may be imported directly in a QML document. Every JavaScript resource must have an identifier by which it is accessed.

The generic form of a JavaScript resource import is as follows:

``` cpp
import "<JavaScriptFile>" as <Identifier>
```

Note that the `<Identifier>` must be unique within a QML document, unlike the local namespace qualifier which can be applied to module imports.

<span id="javascript-resources-from-modules"></span>
##### JavaScript Resources from Modules

Javascript files can be provided by modules, by adding identifier definitions to the `qmldir` file which specifies the module.

For example, if the `projects.MyQMLProject.MyFunctions` module is specified with the following `qmldir` file, and installed into the QML import path:

``` cpp
module projects.MyQMLProject.MyFunctions
SystemFunctions 1.0 SystemFunctions.js
UserFunctions 1.0 UserFunctions.js
```

a client application is able to import the JavaScript resources declared in the module by importing the module and using the identifier associated with a declared resource:

``` qml
import QtQuick 2.0
import projects.MyQMLProject.MyFunctions 1.0
Item {
    Component.onCompleted: { SystemFunctions.cleanUp(); }
}
```

If the module was imported into a document-local namespace, the JavaScript resource identifiers must be prefixed with the namespace qualifier in order to be used:

``` qml
import QtQuick 2.0
import projects.MyQMLProject.MyFunctions 1.0 as MyFuncs
import org.example.Functions 1.0 as TheirFuncs
Item {
    Component.onCompleted: {
        MyFuncs.SystemFunctions.cleanUp();
        TheirFuncs.SystemFunctions.shutdown();
    }
}
```

<span id="further-information"></span>
##### Further Information

For more information about JavaScript resources, please see the documentation about [defining JavaScript resources in QML](../QtQml.qtqml-javascript-resources/index.html), and for more information about how to import JavaScript resources, and how imports can be used from within JavaScript resources, please see the in-depth documentation about [importing JavaScript resources in QML](../QtQml.qtqml-javascript-imports/index.html).

<span id="qml-import-path"></span>
QML Import Path
---------------

When an [identified module](../QtQml.qtqml-modules-identifiedmodules/index.html) is imported, the QML engine searches the *import path* for a matching module.

This import path, as returned by QQmlEngine::importPathList(), defines the default locations to be searched by the engine. By default, this list contains:

-   The directory of the current file
-   The location specified by QLibraryInfo::Qml2ImportsPath
-   Paths specified by the `QML2_IMPORT_PATH` environment variable

Additional import paths can be added through QQmlEngine::addImportPath() or the `QML2_IMPORT_PATH` environment variable. When running the qmlscene tool, you can also use the `-I` option to add an import path.

<span id="debugging"></span>
Debugging
---------

The `QML_IMPORT_TRACE` environment variable can be useful for debugging when there are problems with finding and loading modules. See Debugging module imports for more information.

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
