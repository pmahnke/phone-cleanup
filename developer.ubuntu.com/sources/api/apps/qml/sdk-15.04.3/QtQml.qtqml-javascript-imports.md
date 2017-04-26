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

-   Importing JavaScript Resources in QML

Importing JavaScript Resources in QML
=====================================

<span class="subtitle"></span>
<span id="details"></span>
JavaScript resources may be imported by QML documents and other JavaScript resources. JavaScript resources may be imported via either relative or absolute URLs. In the case of a relative URL, the location is resolved relative to the location of the QML document or JavaScript Resource that contains the import. If the script file is not accessible, an error will occur. If the JavaScript needs to be fetched from a network resource, the component's status is set to "Loading" until the script has been downloaded.

JavaScript resources may also import QML modules and other JavaScript resources. The syntax of an import statement within a JavaScript resource differs slightly from an import statement within a QML document, which is documented thoroughly below.

<span id="importing-a-javascript-resource-from-a-qml-document"></span>
Importing a JavaScript Resource from a QML Document
---------------------------------------------------

A QML document may import a JavaScript resource with the following syntax:

``` cpp
import "ResourceURL" as Qualifier
```

For example:

``` cpp
import "jsfile.js" as Logic
```

Imported JavaScript resources are always qualified using the "as" keyword. The qualifier for JavaScript resources must be unique, so there is always a one-to-one mapping between qualifiers and JavaScript files. (This also means qualifiers cannot be named the same as built-in JavaScript objects such as `Date` and `Math`).

The functions defined in an imported JavaScript file are available to objects defined in the importing QML document, via the `"Qualifier.functionName(params)"` syntax. Functions in JavaScript resources may take parameters whose type can be any of the supported QML basic types or object types, as well as normal JavaScript types. The normal [data type conversion rules](../QtQml.qtqml-cppintegration-data/index.html) will apply to parameters and return values when calling such functions from QML.

<span id="imports-within-javascript-resources"></span>
Imports Within JavaScript Resources
-----------------------------------

In `QtQuick 2.0`, support has been added to allow JavaScript resources to import other JavaScript resources and also QML type namespaces using a variation of the standard QML import syntax (where all of the previously described rules and qualifications apply).

Due to the ability of a JavaScript resource to import another script or QML module in this fashion in `QtQuick 2.0`, some extra semantics are defined:

-   a script with imports will not inherit imports from the QML document which imported it (so accessing Component.errorString will fail, for example)
-   a script without imports will inherit imports from the QML document which imported it (so accessing Component.errorString will succeed, for example)
-   a shared script (i.e., defined as .pragma library) does not inherit imports from any QML document even if it imports no other scripts or modules

The first semantic is conceptually correct, given that a particular script might be imported by any number of QML files. The second semantic is retained for the purposes of backwards-compatibility. The third semantic remains unchanged from the current semantics for shared scripts, but is clarified here in respect to the newly possible case (where the script imports other scripts or modules).

<span id="importing-a-javascript-resource-from-another-javascript-resource"></span>
### Importing a JavaScript Resource from Another JavaScript Resource

A JavaScript resource may import another in the following fashion:

``` cpp
.import "filename.js" as Qualifier
```

For example:

``` cpp
.import "factorial.js" as MathFunctions
```

<span id="importing-a-qml-module-from-a-javascript-resource"></span>
### Importing a QML Module from a JavaScript Resource

A JavaScript resource may import a QML module in the following fashion:

``` cpp
.import TypeNamespace MajorVersion.MinorVersion as Qualifier
```

For example:

``` cpp
.import Qt.test 1.0 as JsQtTest
```

In particular, this may be useful in order to access functionality provided via a singleton type; see qmlRegisterSingletonType() for more information.

**Note:** The .import syntax doesn't work for scripts used in the [WorkerScript](../QtQml.WorkerScript/index.html)

<span id="including-a-javascript-resource-from-another-javascript-resource"></span>
Including a JavaScript Resource from Another JavaScript Resource
----------------------------------------------------------------

When a JavaScript file is imported, it must be imported with a qualifier. The functions in that file are then accessible from the importing script via the qualifier (that is, as `Qualifier.functionName(params)`). Sometimes it is desirable to have the functions made available in the importing context without needing to qualify them, and in this circumstance the [Qt.include()](../QtQml.Qt/index.html#include-method) function may be used to include one JavaScript file from another. This copies all functions from the other file into the current file's namespace, but ignores all pragmas and imports defined in that file.

For example, the QML code below left calls `showCalculations()` in `script.js`, which in turn can call `factorial()` in `factorial.js`, as it has included `factorial.js` using [Qt.include()](../QtQml.Qt/index.html#include-method).

``` qml
import QtQuick 2.0
import "script.js" as MyScript
Item {
    width: 100; height: 100
    MouseArea {
        anchors.fill: parent
        onClicked: {
            MyScript.showCalculations(10)
            console.log("Call factorial() from QML:",
                MyScript.factorial(10))
        }
    }
}
```

``` js
// script.js
Qt.include("factorial.js")
function showCalculations(value) {
    console.log("Call factorial() from script.js:",
        factorial(value));
}
```

``` js
// factorial.js
function factorial(a) {
    a = parseInt(a);
    if (a <= 0)
        return 1;
    else
        return a * factorial(a - 1);
}
```

Notice that calling [Qt.include()](../QtQml.Qt/index.html#include-method) copies all functions from `factorial.js` into the `MyScript` namespace, which means the QML component can also access `factorial()` directly as `MyScript.factorial()`.

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
