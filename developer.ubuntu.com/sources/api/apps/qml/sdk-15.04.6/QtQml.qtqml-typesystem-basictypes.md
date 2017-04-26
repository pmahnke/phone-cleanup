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

-   QML Basic Types

QML Basic Types
===============

<span class="subtitle"></span>
<span id="details"></span>
QML supports a number of basic types.

A *basic type* is one that refers to a simple value, such as an `int` or a `string`. This contrasts with a [QML Object Types](../QtQml.qtqml-typesystem-topic/index.html#qml-object-types), which refers to an object with properties, signals, methods and so on. Unlike an object type, a basic type cannot be used to declare QML objects: it is not possible, for example, to declare an `int{}` object or a `size{}` object.

Basic types can be used to refer to:

-   A single value (e.g. int refers to a single number, var can refer to a single list of items)
-   A value that contains a simple set of property-value pairs (e.g. size refers to a value with `width` and `height` attributes)

<span id="supported-basic-types"></span>
Supported Basic Types
---------------------

Some basic types are supported by the engine by default and do not require an [import statement](../QtQml.qtqml-syntax-imports/index.html) to be used, while others do require the client to import the module which provides them. All of the basic types listed below may be used as a `property` type in a QML document, with the following exceptions:

-   `list` must be used in conjunction with a QML object type
-   `enumeration` cannot be used directly as the enumeration must be defined by a registered QML object type

<span id="basic-types-provided-by-the-qml-language"></span>
### Basic Types Provided By The QML Language

The basic types supported natively in the QML language are listed below:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>bool</p></td>
<td><p>Binary true/false value</p></td>
</tr>
<tr class="even">
<td><p>double</p></td>
<td><p>Number with a decimal point, stored in double precision</p></td>
</tr>
<tr class="odd">
<td><p>enumeration</p></td>
<td><p>Named enumeration value</p></td>
</tr>
<tr class="even">
<td><p>int</p></td>
<td><p>Whole number, e.g. 0, 10, or -20</p></td>
</tr>
<tr class="odd">
<td><p>list</p></td>
<td><p>List of QML objects</p></td>
</tr>
<tr class="even">
<td><p>real</p></td>
<td><p>Number with a decimal point</p></td>
</tr>
<tr class="odd">
<td><p>string</p></td>
<td><p>Free form text string</p></td>
</tr>
<tr class="even">
<td><p>url</p></td>
<td><p>Resource locator</p></td>
</tr>
<tr class="odd">
<td><p>var</p></td>
<td><p>Generic property type</p></td>
</tr>
</tbody>
</table>

<span id="basic-types-provided-by-qml-modules"></span>
### Basic Types Provided By QML Modules

QML modules may extend the QML language with more basic types. For example, the basic types provided by the `QtQuick` module are listed below:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>date</p></td>
<td><p>Date value</p></td>
</tr>
<tr class="even">
<td><p>point</p></td>
<td><p>Value with x and y attributes</p></td>
</tr>
<tr class="odd">
<td><p>rect</p></td>
<td><p>Value with x, y, width and height attributes</p></td>
</tr>
<tr class="even">
<td><p>size</p></td>
<td><p>Value with width and height attributes</p></td>
</tr>
</tbody>
</table>

The [Qt](../QtQml.Qt/index.html) global object provides useful functions for manipulating values of basic types.

Currently only QML modules which are provided by Qt may provide their own basic types, however this may change in future releases of Qt QML. In order to use types provided by a particular QML module, clients must import that module in their QML documents.

<span id="property-change-behavior-for-basic-types"></span>
Property Change Behavior for Basic Types
----------------------------------------

Some basic types have properties: for example, the font type has `pixelSize`, `family` and `b` properties. Unlike properties of [object types](../QtQml.qtqml-typesystem-topic/index.html#qml-object-types), properties of basic types do not provide their own property change signals. It is only possible to create a property change signal handler for the basic type property itself:

``` cpp
Text {
    // invalid!
    onFont.pixelSizeChanged: doSomething()
    // also invalid!
    font {
        onPixelSizeChanged: doSomething()
    }
    // but this is ok
    onFontChanged: doSomething()
}
```

Be aware, however, that a property change signal for a basic type is emitted whenever *any* of its attributes have changed, as well as when the property itself changes. Take the following code, for example:

``` qml
Text {
    onFontChanged: console.log("font changed")
    Text { id: otherText }
    focus: true
    // changing any of the font attributes, or reassigning the property
    // to a different font value, will invoke the onFontChanged handler
    Keys.onDigit1Pressed: font.pixelSize += 1
    Keys.onDigit2Pressed: font.b = !font.b
    Keys.onDigit3Pressed: font = otherText.font
}
```

In contrast, properties of an [object type](../QtQml.qtqml-typesystem-topic/index.html#qml-object-types) emit their own property change signals, and a property change signal handler for an object-type property is only invoked when the property is reassigned to a different object value.

**See also** [The QML Type System](../QtQml.qtqml-typesystem-topic/index.html).

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
