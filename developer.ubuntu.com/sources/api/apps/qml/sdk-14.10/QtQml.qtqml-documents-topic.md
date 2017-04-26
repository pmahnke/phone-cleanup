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
-   <a href="../index.html" class="sub-nav-item">SDK 14.10</a> ›
-   <a href="../QtQml/index.html" class="sub-nav-item">QtQml</a> ›

<!-- -->

-   QML Documents

QML Documents
=============

<span class="subtitle"></span>
<span id="details"></span>
A QML document is a string which conforms to QML document syntax. A document defines a QML object type. A document is generally loaded from a `".qml"` file stored either locally or remotely, but can be constructed manually in code. An instance of the object type defined by a document may be created using a Component in QML code, or a QQmlComponent in C++. Alternatively, if the object type is explicitly exposed to the QML type system with a particular type name, the type may be used directly in object declarations in other documents.

The ability to define re-usable QML object types in documents is an important enabler to allow clients to write modular, highly readable and maintainable code.

<span id="structure-of-a-qml-document"></span>
Structure of a QML Document
---------------------------

A QML document consists of two sections: the imports section, and the object declaration section. The imports section in a document contains import statements that define which QML object types and JavaScript resources the document is able to use. The object declaration section defines the object tree to be created when instantiating the object type defined by the document.

An example of a simple document is as follows:

``` qml
import QtQuick 2.0
Rectangle {
    width: 300
    height: 200
    color: "blue"
}
```

See the [Structure of a QML Document](../QtQml.qtqml-documents-structure/index.html) for more information on the topic.

<span id="syntax-of-the-qml-language"></span>
### Syntax of the QML Language

The object declaration section of the document must specify a valid object hierarchy with appropriate [QML syntax](../QtQml.qtqml-syntax-basics/index.html). An object declaration may include the specification of custom [object attributes](../QtQml.qtqml-syntax-objectattributes/index.html). Object method attributes may be specified as JavaScript functions, and object property attributes may be assigned [property binding expressions](../QtQml.qtqml-syntax-propertybinding/index.html).

Please see the documentation about the [syntax of QML](../QtQml.qtqml-syntax-basics/index.html) for more information about valid syntax, and see the documentation about [integrating QML and JavaScript](../QtQml.qtqml-javascript-topic/index.html) for in-depth information on that topic.

<span id="defining-object-types-through-qml-documents"></span>
Defining Object Types through QML Documents
-------------------------------------------

As described briefly in the previous section, a document implicitly defines a QML object type. One of the core principles of QML is the ability to define and then re-use object types. This improves the maintainability of QML code, increases the readability of object hierarchy declarations, and promotes separation between UI definition and logic implementation.

In the following example, the client developer defines a `Button` type with a document in a file:

``` qml
// Button.qml
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

The `Button` type can then be used in an application:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><pre class="qml"><code>// application.qml
import QtQuick 2.0
Column {
    Button { width: 50; height: 50 }
    Button { x: 50; width: 100; height: 50; color: &quot;blue&quot; }
    Button { width: 50; height: 50; radius: 8 }
}</code></pre></td>
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/06de17c1-9eae-4e17-8de4-e4c8f37a8aca-api/apps/qml/sdk-14.10/qtqml-documents-topic/images/button-types.png" /></p></td>
</tr>
</tbody>
</table>

Please see the documentation about [defining object types in documents](../QtQml.qtqml-documents-definetypes/index.html) for in-depth information on the topic.

<span id="resource-loading-and-network-transparency"></span>
Resource Loading and Network Transparency
-----------------------------------------

It is important to note that QML is network-transparent. Applications can import documents from remote paths just as simply as documents from local paths. In fact, any `url` property may be assigned a remote or local URL, and the QML engine will handle any network communication involved.

Please see the [Network Transparency](../QtQml.qtqml-documents-networktransparency/index.html) documentation for more information about network transparency in imports.

<span id="scope-and-naming-resolution"></span>
Scope and Naming Resolution
---------------------------

Expressions in documents usually involve objects or properties of objects, and since multiple objects may be defined and since different objects may have properties with the same name, some predefined symbol resolution semantics must be defined by QML. Please see the page on [scope and symbol resolution](../QtQml.qtqml-documents-scope/index.html) for in-depth information about the topic.

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
