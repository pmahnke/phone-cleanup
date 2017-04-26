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

-   QML Syntax Basics

QML Syntax Basics
=================

<span class="subtitle"></span>
<span id="details"></span>
QML is a multi-paradigm language that enables objects to be defined in terms of their attributes and how they relate and respond to changes in other objects. In contrast to purely imperative code, where changes in attributes and behavior are expressed through a series of statements that are processed step by step, QML's declarative syntax integrates attribute and behavioral changes directly into the definitions of individual objects. These attribute definitions can then include imperative code, in the case where complex custom application behavior is needed.

QML source code is generally loaded by the engine through QML *documents*, which are standalone documents of QML code. These can be used to define [QML object types](../QtQml.qtqml-typesystem-objecttypes/index.html) that can then be reused throughout an application.

<span id="import-statements"></span>
Import Statements
-----------------

A QML document may have one or more imports at the top of the file. An import can be any one of:

-   a versioned namespace into which types have been registered (e.g., by a plugin)
-   a relative directory which contains type-definitions as QML documents
-   a JavaScript file

JavaScript file imports must be qualified when imported, so that the properties and methods they provide can be accessed.

The generic form of the various imports are as follows:

-   `import Namespace VersionMajor.VersionMinor`
-   `import Namespace VersionMajor.VersionMinor as SingletonTypeIdentifier`
-   `import "directory"`
-   `import "file.js" as ScriptIdentifier`

Examples:

-   `import QtQuick 2.0`
-   `import QtQuick.LocalStorage 2.0 as Database`
-   `import "../privateComponents"`
-   `import "somefile.js" as Script`

Please see the [QML Syntax - Import Statements](../QtQml.qtqml-syntax-imports/index.html) documentation for in-depth information about QML imports.

<span id="qml-object-declarations"></span><span id="object-declarations"></span>
Object Declarations
-------------------

Syntactically, a block of QML code defines a tree of QML objects to be created. Objects are defined using *object declarations* that describe the type of object to be created as well as the attributes that are to be given to the object. Each object may also declare child objects using nested object declarations.

An object declaration consists of the name of its object type, followed by a set of curly braces. All attributes and child objects are then declared within these braces.

Here is a simple object declaration:

``` qml
Rectangle {
    width: 100
    height: 100
    color: "red"
}
```

This declares an object of type Rectangle, followed by a set of curly braces that encompasses the attributes defined for that object. The Rectangle type is a type made available by the `QtQuick` module, and the attributes defined in this case are the values of the rectangle's `width`, `height` and `color` properties. (These are properties made available by the Rectangle type, as described in the Rectangle documentation.)

The above object can be loaded by the engine if it is part of a [QML document](../QtQml.qtqml-documents-topic/index.html). That is, if the source code is complemented with *import* statement that imports the `QtQuick` module (to make the Rectangle type available), as below:

``` qml
import QtQuick 2.0
Rectangle {
    width: 100
    height: 100
    color: "red"
}
```

When placed into a `.qml` file and loaded by the QML engine, the above code creates a Rectangle object using the Rectangle type supplied by the `QtQuick` module:

![](https://developer.ubuntu.com/static/devportal_uploaded/665500bb-037e-4dfb-9a36-67618e5abe50-api/apps/qml/sdk-15.04.1/qtqml-syntax-basics/images/qtqml-syntax-basics-object-declaration.png)

**Note:** If an object definition only has a small number of properties, it can be written on a single line like this, with the properties separated by semi-colons:

``` qml
Rectangle { width: 100; height: 100; color: "red" }
```

Obviously, the Rectangle object declared in this example is very simple indeed, as it defines nothing more than a few property values. To create more useful objects, an object declaration may define many other types of attributes: these are discussed in the [QML Object Attributes](../QtQml.qtqml-syntax-objectattributes/index.html) documentation. Additionally, an object declaration may define child objects, as discussed below.

<span id="child-objects"></span>
### Child Objects

Any object declaration can define child objects through nested object declarations. In this way, **any object declaration implicitly declares an object tree that may contain any number of child objects**.

For example, the Rectangle object declaration below includes a Gradient object declaration, which in turn contains two GradientStop declarations:

``` qml
import QtQuick 2.0
Rectangle {
    width: 100
    height: 100
    gradient: Gradient {
        GradientStop { position: 0.0; color: "yellow" }
        GradientStop { position: 1.0; color: "green" }
    }
}
```

When this code is loaded by the engine, it creates an object tree with a Rectangle object at the root; this object has a Gradient child object, which in turn has two GradientStop children.

Note, however, that this is a parent-child relationship in the context of the QML object tree, not in the context of the visual scene. The concept of a parent-child relationship in a visual scene is provided by the Item type from the `QtQuick` module, which is the base type for most QML types, as most QML objects are intended to be visually rendered. For example, Rectangle and Text are both Item-based types, and below, a Text object has been declared as a visual child of a Rectangle object:

``` qml
import QtQuick 2.0
Rectangle {
    width: 200
    height: 200
    color: "red"
    Text {
        anchors.centerIn: parent
        text: "Hello, QML!"
    }
}
```

When the Text object refers to its parent value in the above code, it is referring to its *visual parent*, not the parent in the object tree. In this case, they are one and the same: the Rectangle object is the parent of the Text object in both the context of the QML object tree as well as the context of the visual scene. However, while the parent property can be modified to change the visual parent, the parent of an object in the context of the object tree cannot be changed from QML.

(Additionally, notice that the Text object has been declared without assigning it to a property of the Rectangle, unlike the earlier example which assigned a Gradient object to the rectangle's `gradient` property. This is because the children property of Item has been set as the type's [default property](../QtQml.qtqml-syntax-objectattributes/index.html#default-properties) to enable this more convenient syntax.)

See the visual parent documentation for more information on the concept of visual parenting with the Item type.

<span id="comments"></span>
Comments
--------

The syntax for commenting in QML is similar to that of JavaScript:

-   Single line comments start with // and finish at the end of the line.
-   Multiline comments start with /\* and finish with \*/

``` qml
Text {
    text: "Hello world!"    //a basic greeting
    /*
        We want this text to stand out from the rest so
        we give it a large size and different font.
     */
    font.family: "Helvetica"
    font.pointSize: 24
}
```

Comments are ignored by the engine when processing QML code. They are useful for explaining what a section of code is doing, whether for reference at a later date or for explaining the implementation to others.

Comments can also be used to prevent the execution of code, which is sometimes useful for tracking down problems.

``` qml
    Text {
        text: "Hello world!"
        //opacity: 0.5
    }
```

In the above example, the Text object will have normal opacity, since the line opacity: 0.5 has been turned into a comment.

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
