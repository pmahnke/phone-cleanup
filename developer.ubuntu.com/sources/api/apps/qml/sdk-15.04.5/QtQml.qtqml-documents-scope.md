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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.5</a> ›
-   <a href="../QtQml/index.html" class="sub-nav-item">QtQml</a> ›

<!-- -->

-   Scope and Naming Resolution

Scope and Naming Resolution
===========================

<span class="subtitle"></span>
<span id="details"></span>
QML property bindings, inline functions, and imported JavaScript files all run in a JavaScript scope. Scope controls which variables an expression can access, and which variable takes precedence when two or more names conflict.

As JavaScript's built-in scope mechanism is very simple, QML enhances it to fit more naturally with the QML language extensions.

<span id="javascript-scope"></span>
JavaScript Scope
----------------

QML's scope extensions do not interfere with JavaScript's natural scoping. JavaScript programmers can reuse their existing knowledge when programming functions, property bindings or imported JavaScript files in QML.

In the following example, the `addConstant()` method will add 13 to the parameter passed just as the programmer would expect irrespective of the value of the QML object's `a` and `b` properties.

``` cpp
QtObject {
    property int a: 3
    property int b: 9
    function addConstant(b) {
        var a = 13;
        return b + a;
    }
}
```

That QML respects JavaScript's normal scoping rules even applies in bindings. This totally evil, abomination of a binding will assign 12 to the QML object's `a` property.

``` cpp
QtObject {
    property int a
    a: { var a = 12; a; }
}
```

Every JavaScript expression, function or file in QML has its own unique variable object. Local variables declared in one will never conflict with local variables declared in another.

<span id="type-names-and-imported-javascript-files"></span>
Type Names and Imported JavaScript Files
----------------------------------------

[QML Documents](../QtQml.qtqml-documents-topic/index.html) include import statements that define the type names and JavaScript files visible to the document. In addition to their use in the QML declaration itself, type names are used by JavaScript code when accessing [attached properties](../QtQml.qtqml-syntax-objectattributes/index.html#attached-properties-and-attached-signal-handlers) and enumeration values.

The effect of an import applies to every property binding, and JavaScript function in the QML document, even those in nested inline components. The following example shows a simple QML file that accesses some enumeration values and calls an imported JavaScript function.

``` cpp
import QtQuick 2.0
import "code.js" as Code
ListView {
    snapMode: ListView.SnapToItem
    delegate: Component {
        Text {
            elide: Text.ElideMiddle
            text: "A really, really long string that will require eliding."
            color: Code.defaultColor()
        }
    }
}
```

<span id="binding-scope-object"></span>
Binding Scope Object
--------------------

An object which has a [property binding](../QtQml.qtqml-syntax-propertybinding/index.html) is known has the binding's *scope object*. In the following example, the Item object is the binding's scope object.

``` cpp
Item {
    anchors.left: parent.left
}
```

Bindings have access to the scope object's properties without qualification. In the previous example, the binding accesses the Item's `parent` property directly, without needing any form of object prefix. QML introduces a more structured, object-oriented approach to JavaScript, and consequently does not require the use of the JavaScript `this` property.

Care must be used when accessing [attached properties](../QtQml.qtqml-syntax-objectattributes/index.html#attached-properties-and-attached-signal-handlers) from bindings due to their interaction with the scope object. Conceptually attached properties exist on *all* objects, even if they only have an effect on a subset of those. Consequently unqualified attached property reads will always resolve to an attached property on the scope object, which is not always what the programmer intended.

For example, the PathView type attaches interpolated value properties to its delegates depending on their position in the path. As PathView only meaningfully attaches these properties to the root object in the delegate, any sub-object that accesses them must explicitly qualify the root object, as shown below.

``` cpp
PathView {
    delegate: Component {
        Rectangle {
            id: root
            Image {
                scale: root.PathView.scale
            }
        }
    }
}
```

If the Image object omitted the `root` prefix, it would inadvertently access the unset `PathView.scale` attached property on itself.

<span id="component-scope"></span>
Component Scope
---------------

Each QML component in a QML document defines a logical scope. Each document has at least one root component, but can also have other inline sub-components. The component scope is the union of the object ids within the component and the component's root object's properties.

``` cpp
Item {
    property string title
    Text {
        id: titletype
        text: "<b>" + title + "</b>"
        font.pixelSize: 22
        anchors.top: parent.top
    }
    Text {
        text: titletype.text
        font.pixelSize: 18
        anchors.bottom: parent.bottom
    }
}
```

The example above shows a simple QML component that displays a rich text title string at the top, and a smaller copy of the same text at the bottom. The first `Text` type directly accesses the component's `title` property when forming the text to display. That the root type's properties are directly accessible makes it trivial to distribute data throughout the component.

The second `Text` type uses an id to access the first's text directly. IDs are specified explicitly by the QML programmer so they always take precedence over other property names (except for those in the [JavaScript Scope](index.html#javascript-scope)). For example, in the unlikely event that the binding's [scope object](index.html#binding-scope-object) had a `titletype` property in the previous example, the `titletype` id would still take precedence.

<span id="component-instance-hierarchy"></span>
Component Instance Hierarchy
----------------------------

In QML, component instances connect their component scopes together to form a scope hierarchy. Component instances can directly access the component scopes of their ancestors.

The easiest way to demonstrate this is with inline sub-components whose component scopes are implicitly scoped as children of the outer component.

``` cpp
Item {
    property color defaultColor: "blue"
    ListView {
        delegate: Component {
            Rectangle {
                color: defaultColor
            }
        }
    }
}
```

The component instance hierarchy allows instances of the delegate component to access the `defaultColor` property of the `Item` type. Of course, had the delegate component had a property called `defaultColor` that would have taken precedence.

The component instance scope hierarchy extends to out-of-line components, too. In the following example, the `TitlePage.qml` component creates two `TitleText` instances. Even though the `TitleText` type is in a separate file, it still has access to the `title` property when it is used from within the `TitlePage`. QML is a dynamically scoped language - depending on where it is used, the `title` property may resolve differently.

``` cpp
// TitlePage.qml
import QtQuick 2.0
Item {
    property string title
    TitleText {
        size: 22
        anchors.top: parent.top
    }
    TitleText {
        size: 18
        anchors.bottom: parent.bottom
    }
}
// TitleText.qml
import QtQuick 2.0
Text {
    property int size
    text: "<b>" + title + "</b>"
    font.pixelSize: size
}
```

Dynamic scoping is very powerful, but it must be used cautiously to prevent the behavior of QML code from becoming difficult to predict. In general it should only be used in cases where the two components are already tightly coupled in another way. When building reusable components, it is preferable to use property interfaces, like this:

``` cpp
// TitlePage.qml
import QtQuick 2.0
Item {
    id: root
    property string title
    TitleText {
        title: root.title
        size: 22
        anchors.top: parent.top
    }
    TitleText {
        title: root.title
        size: 18
        anchors.bottom: parent.bottom
    }
}
// TitleText.qml
import QtQuick 2.0
Text {
    property string title
    property int size
    text: "<b>" + title + "</b>"
    font.pixelSize: size
}
```

<span id="overridden-properties"></span>
Overridden Properties
---------------------

QML permits property names defined in an object declaration to be overridden by properties declared within another object declaration that extends the first. For example:

``` cpp
// Displayable.qml
import QtQuick 2.0
Item {
    property string title
    property string detail
    Text {
        text: "<b>" + title + "</b><br>" + detail
    }
    function getTitle() { return title }
    function setTitle(newTitle) { title = newTitle }
}
// Person.qml
import QtQuick 2.0
Displayable {
    property string title
    property string firstName
    property string lastName
    function fullName()  { return title + " " + firstName + " " + lastName }
}
```

Here, the name `title` is given to both the heading of the output text for Displayable, and also to the honorific title of the Person object.

An overridden property is resolved according to the scope in which it is referenced. Inside the scope of the Person component, or from an external scope that refers to an instance of the Person component, `title` resolves to the property declared inside Person.qml. The `fullName` function will refer to the `title` property declared inside Person.

Inside the Displayable component, however, `title` refers to the property declared in Displayable.qml. The getTitle() and setTitle() functions, and the binding for the `text` property of the Text object will all refer to the `title` property declared in the Displayable component.

Despite sharing the same name, the two properties are entirely separate. An onChanged signal handler for one of the properties will not be triggered by a change to the other property with the same name. An alias to either property will refer to one or the other, but not both.

<span id="javascript-global-object"></span>
JavaScript Global Object
------------------------

QML disallows type, id and property names that conflict with the properties on the global object to prevent any confusion. Programmers can be confident that `Math.min(10, 9)` will always work as expected!

See [JavaScript Host Environment](../QtQml.qtqml-javascript-hostenvironment/index.html) for more information.

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
