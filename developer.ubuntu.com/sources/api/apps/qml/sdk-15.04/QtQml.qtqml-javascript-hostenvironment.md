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

-   JavaScript Host Environment

JavaScript Host Environment
===========================

<span class="subtitle"></span>
<span id="details"></span>
QML provides a JavaScript host environment tailored to writing QML applications. This environment is different from the host environment provided by a browser or a server-side JavaScript environment such as Node.js. For example, QML does not provide a `window` object or `DOM API` as commonly found in a browser environment.

<span id="common-base"></span>
Common Base
-----------

Like a browser or server-side JavaScript environment, the QML runtime implements the [ECMAScript Language Specification](http://www.ecma-international.org/publications/standards/Ecma-262.htm) standard. This provides access to all of the built-in types and functions defined by the standard, such as Object, Array, and Math. The QML runtime implements the 5th edition of the standard, which is the same edition commonly implemented by browsers.

The standard ECMAScript built-ins are not explicitly documented in the QML documentation. For more information on their use, please refer to the ECMA-262 5th edition standard or one of the many online JavaScript reference and tutorial sites, such as the [W3Schools JavaScript Reference](http://www.w3schools.com/jsref/default.asp) (JavaScript Objects Reference section). Many sites focus on JavaScript in the browser, so in some cases you may need to double check the specification to determine whether a given function or object is part of standard ECMAScript or specific to the browser environment. In the case of the W3Schools link above, the `JavaScript Objects Reference` section generally covers the standard, while the `Browser Objects Reference` and `HTML DOM Objects Reference` sections are browser specific (and thus not applicable to QML).

<span id="qml-global-object"></span>
QML Global Object
-----------------

The QML JavaScript host environment implements a number of host objects and functions, as detailed in the [QML Global Object](../QtQml.qtqml-javascript-qmlglobalobject/index.html) documentation.

These host objects and functions are always available, regardless of whether any modules have been imported.

<span id="javascript-objects-and-functions"></span>
JavaScript Objects and Functions
--------------------------------

A list of the JavaScript objects, functions and properties supported by the QML engine can be found in the [List of JavaScript Objects and Functions](../QtQml.qtqml-javascript-functionlist/index.html).

Note that QML makes the following modifications to native objects:

-   An [arg()](../QtQml.String/index.html#arg-method) function is added to the [String](../QtQml.String/index.html) prototype.
-   Locale-aware coversion functions are added to the [Date](../QtQml.Date/index.html) and [Number](../QtQml.Number/index.html) prototypes.

<span id="javascript-environment-restrictions"></span>
JavaScript Environment Restrictions
-----------------------------------

QML implements the following restrictions for JavaScript code:

-   JavaScript code cannot modify the global object.

    In QML, the global object is constant - existing properties cannot be modified or deleted, and no new properties may be created.

    Most JavaScript programs do not intentionally modify the global object. However, JavaScript's automatic creation of undeclared variables is an implicit modification of the global object, and is prohibited in QML.

    Assuming that the `a` variable does not exist in the scope chain, the following code is illegal in QML:

    ``` cpp
    // Illegal modification of undeclared variable
    a = 1;
    for (var ii = 1; ii < 10; ++ii)
        a = a * ii;
    console.log("Result: " + a);
    ```

    It can be trivially modified to this legal code.

    ``` cpp
    var a = 1;
    for (var ii = 1; ii < 10; ++ii)
        a = a * ii;
    console.log("Result: " + a);
    ```

    Any attempt to modify the global object - either implicitly or explicitly - will cause an exception. If uncaught, this will result in an warning being printed, that includes the file and line number of the offending code.

-   Global code is run in a reduced scope.

    During startup, if a QML file includes an external JavaScript file with "global" code, it is executed in a scope that contains only the external file itself and the global object. That is, it will not have access to the QML objects and properties it [normally would](../QtQml.qtqml-documents-scope/index.html).

    Global code that only accesses script local variable is permitted. This is an example of valid global code.

    ``` cpp
    var colors = [ "red", "blue", "green", "orange", "purple" ];
    ```

    Global code that accesses QML objects will not run correctly.

    ``` cpp
    // Invalid global code - the "rootObject" variable is undefined
    var initialPosition = { rootObject.x, rootObject.y }
    ```

    This restriction exists as the QML environment is not yet fully established. To run code after the environment setup has completed, see [JavaScript in Application Startup Code](../QtQml.qtqml-javascript-expressions/index.html#javascript-in-application-startup-code).

-   The value of `this` is currently undefined in QML in the majority of contexts.

    The `this` keyword is supported when binding properties from JavaScript. In all other situations, the value of `this` is undefined in QML.

    To refer to a specific object, provide an `id`. For example:

    ``` qml
    Item {
        width: 200; height: 100
        function mouseAreaClicked(area) {
            console.log("Clicked in area at: " + area.x + ", " + area.y);
        }
        // This will not work because this is undefined
        MouseArea {
            height: 50; width: 200
            onClicked: mouseAreaClicked(this)
        }
        // This will pass area2 to the function
        MouseArea {
            id: area2
            y: 50; height: 50; width: 200
            onClicked: mouseAreaClicked(area2)
        }
    }
    ```

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
