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

-   Defining Object Types through QML Documents

Defining Object Types through QML Documents
===========================================

<span class="subtitle"></span>
<span id="details"></span>
One of the core features of QML is that it enables QML object types to be easily defined in a lightweight manner through QML documents to suit the needs of individual QML applications. The standard Qt Quick module provides various types like Rectangle, Text and Image for building a QML application; beyond these, you can easily define your own QML types to be reused within your application. This ability to create your own types forms the building blocks of any QML application.

<span id="defining-an-object-type-with-a-qml-file"></span>
Defining an Object Type with a QML File
---------------------------------------

To create an object type, a QML document should be placed into a text file named as *&lt;TypeName&gt;.qml* where *&lt;TypeName&gt;* is the desired name of the type, which must be comprised of alphanumeric characters or underscores and beginning with an uppercase letter. This document is then automatically recognized by the engine as a definition of a QML type. Additionally, a type defined in this manner is automatically made available to other QML files within the same directory as the engine searches within the immediate directory when resolving QML type names.

For example, below is a document that declares a Rectangle with a child MouseArea. The document has been saved to file named `SquareButton.qml`:

``` qml
// SquareButton.qml
import QtQuick 2.0
Rectangle {
    width: 100; height: 100
    color: "red"
    MouseArea {
        anchors.fill: parent
        onClicked: console.log("Button clicked!")
    }
}
```

Since the file is named `SquareButton.qml`, **this can now be used as a type named `SquareButton` by any other QML file within the same directory**. For example, if there was a `myapplication.qml` file in the same directory, it could refer to the `SquareButton` type:

``` qml
// myapplication.qml
import QtQuick 2.0
SquareButton {}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/99e08d1b-78c7-4612-bca2-0f181eab9035-api/apps/qml/sdk-15.04/qtqml-documents-definetypes/images/documents-definetypes-simple.png)

This creates a 100 x 100 red Rectangle with an inner MouseArea, as defined in `SquareButton.qml`. When this `myapplication.qml` document is loaded by the engine, it loads the SquareButton.qml document as a component and instantiates it to create a `SquareButton` object.

The `SquareButton` type encapsulates the tree of QML objects declared in `SquareButton.qml`. When the QML engine instantiates a `SquareButton` object from this type, it is instantiating an object from the Rectangle tree declared in `SquareButton.qml`.

**Note:** the letter case of the file name is significant on some (notably UNIX) filesystems. It is recommended the file name case matches the case of the desired QML type name exactly - for example, `Box.qml` and not `BoX.qml` - regardless of the platform to which the QML type will be deployed.

<span id="importing-types-defined-outside-the-current-directory"></span>
### Importing Types Defined Outside the Current Directory

If `SquareButton.qml` was not in the same directory as `myapplication.qml`, the `SquareButton` type would need to be specifically made available through an *import* statement in `myapplication.qml`. It could be imported from a relative path on the file system, or as an installed module; see [module](../QtQml.qtqml-modules-topic/index.html) for more details.

<span id="accessible-attributes-of-custom-types"></span>
Accessible Attributes of Custom Types
-------------------------------------

The **root object** definition in a .qml file **defines the attributes that are available for a QML type**. All properties, signals and methods that belong to this root object - whether they are custom declared, or come from the QML type of the root object - are externally accessible and can be read and modified for objects of this type.

For example, the root object type in the `SquareButton.qml` file above is Rectangle. This means any properties defined by the Rectangle type can be modified for a `SquareButton` object. The code below defines three `SquareButton` objects with customized values for some of the properties of the root Rectangle object of the `SquareButton` type:

``` qml
// application.qml
import QtQuick 2.0
Column {
    SquareButton { width: 50; height: 50 }
    SquareButton { x: 50; color: "blue" }
    SquareButton { radius: 10 }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/4e038225-d111-43d6-80c6-ebf2ecaae8a6-api/apps/qml/sdk-15.04/qtqml-documents-definetypes/images/documents-definetypes-attributes.png)

The attributes that are accessible to objects of the custom QML type include any [custom properties](../QtQml.qtqml-syntax-objectattributes/index.html#defining-property-attributes), [methods](../QtQml.qtqml-syntax-objectattributes/index.html#defining-method-attributes) and [signals](../QtQml.qtqml-syntax-objectattributes/index.html#defining-signal-attributes) that have additionally been defined for an object. For example, suppose the Rectangle in `SquareButton.qml` had been defined as follows, with additional properties, methods and signals:

``` qml
// SquareButton.qml
import QtQuick 2.0
Rectangle {
    id: root
    property bool pressed: mouseArea.pressed
    signal buttonClicked(real xPos, real yPos)
    function randomizeColor() {
        root.color = Qt.rgba(Math.random(), Math.random(), Math.random(), 1)
    }
    width: 100; height: 100
    color: "red"
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: root.buttonClicked(mouse.x, mouse.y)
    }
}
```

Any `SquareButton` object could make use of the `pressed` property, `buttonClicked` signal and `randomizeColor()` method that have been added to the root Rectangle:

``` qml
// application.qml
import QtQuick 2.0
SquareButton {
    id: squareButton
    onButtonClicked: {
        console.log("Clicked", xPos, yPos)
        randomizeColor()
    }
    Text { text: squareButton.pressed ? "Down" : "Up" }
}
```

Note that any of the `id` values defined in `SquareButton.qml` are not accessible to `SquareButton` objects, as id values are only accessible from within the component scope in which a component is declared. The `SquareButton` object definition above cannot refer to `mouseArea` in order to refer to the MouseArea child, and if it had an `id` of `root` rather than `squareButton`, this would not conflict with the `id` of the same value for the root object defined in `SquareButton.qml` as the two would be declared within separate scopes.

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
