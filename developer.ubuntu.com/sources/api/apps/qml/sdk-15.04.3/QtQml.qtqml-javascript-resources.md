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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.3</a> ›
-   <a href="../QtQml/index.html" class="sub-nav-item">QtQml</a> ›

<!-- -->

-   Defining JavaScript Resources In QML

Defining JavaScript Resources In QML
====================================

<span class="subtitle"></span>
<span id="details"></span>
The program logic for a QML application may be defined in JavaScript. The JavaScript code may either be defined in-line in QML documents, or separated into JavaScript files (known as `JavaScript Resources` in QML).

There are two different kinds of JavaScript resources which are supported in QML: code-behind implementation files, and shared (library) files. Both kinds of JavaScript resource may be [imported](../QtQml.qtqml-javascript-imports/index.html) by other JavaScript resources, or included in [QML modules](../QtQml.qtqml-modules-topic/index.html).

<span id="code-behind-implementation-resource"></span>
Code-Behind Implementation Resource
-----------------------------------

Most JavaScript files imported into a QML document are stateful implementations for the QML document importing them. In these cases, each instance of the QML object type defined in the document requires a separate copy of the JavaScript objects and state in order to behave correctly.

The default behavior when importing JavaScript files is to provide a unique, isolated copy for each QML component instance. If that JavaScript file does not import any resources or modules with a `.import` statement, its code will run in the same scope as the QML component instance and consequently can access and manipulate the objects and properties declared in that QML component. Otherwise, it will have its own unique scope, and objects and properties of the QML component should be passed to the functions of the JavaScript file as parameters if they are required.

An example of a code-behind implementation resource follows:

``` qml
// MyButton.qml
import QtQuick 2.0
import "my_button_impl.js" as Logic // a new instance of this JavaScript resource is loaded for each instance of Button.qml
Rectangle {
    id: rect
    width: 200
    height: 100
    color: "red"
    MouseArea {
        id: mousearea
        anchors.fill: parent
        onClicked: Logic.onClicked(rect)
    }
}
```

``` qml
// my_button_impl.js
var clickCount = 0;   // this state is separate for each instance of MyButton
function onClicked(btn) {
    clickCount += 1;
    if ((clickCount % 5) == 0) {
        obj.color = Qt.rgba(1,0,0,1);
    } else {
        obj.color = Qt.rgba(0,1,0,1);
    }
}
```

In general, simple logic should be defined in-line in the QML file, but more complex logic should be separated into code-behind implementation resources for maintainability and readability.

<span id="shared-javascript-resources-libraries"></span>
Shared JavaScript Resources (Libraries)
---------------------------------------

Some JavaScript files act more like libraries - they provide a set of helper functions that take input and compute output, but never manipulate QML component instances directly.

As it would be wasteful for each QML component instance to have a unique copy of these libraries, the JavaScript programmer can indicate a particular file is a shared library through the use of a pragma, as shown in the following example.

``` cpp
// factorial.js
.pragma library
var factorialCount = 0;
function factorial(a) {
    a = parseInt(a);
    // factorial recursion
    if (a > 0)
        return a * factorial(a - 1);
    // shared state
    factorialCount += 1;
    // recursion base-case.
    return 1;
}
function factorialCallCount() {
    return factorialCount;
}
```

The pragma declaration must appear before any JavaScript code excluding comments.

Note that multiple QML documents can import `"factorial.js"` and call the factorial and factorialCallCount functions that it provides. The state of the JavaScript import is shared across the QML documents which import it, and thus the return value of the factorialCallCount function may be non-zero when called within a QML document which never calls the factorial function.

For example:

``` qml
// Calculator.qml
import QtQuick 2.0
import "factorial.js" as FactorialCalculator // this JavaScript resource is only ever loaded once by the engine, even if multiple instances of Calculator.qml are created
Text {
    width: 500
    height: 100
    property int input: 17
    text: "The factorial of " + input + " is: " + FactorialCalculator.factorial(input)
}
```

As they are shared, .pragma library files cannot access QML component instance objects or properties directly, although QML values can be passed as function parameters.

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
