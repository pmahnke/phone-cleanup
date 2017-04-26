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
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   QML Tutorial 1 - Basic Types

QML Tutorial 1 - Basic Types
============================

<span class="subtitle"></span>
<span id="details"></span>
This first program is a very simple "Hello world" example that introduces some basic QML concepts. The picture below is a screenshot of this program.

![](https://developer.ubuntu.com/static/devportal_uploaded/5c029aa7-3f8f-4461-879b-e9979fa58294-api/apps/qml/sdk-15.04.1/qml-tutorial1/images/declarative-tutorial1.png)

Here is the QML code for the application:

``` qml
import QtQuick 2.0
Rectangle {
    id: page
    width: 320; height: 480
    color: "lightgray"
    Text {
        id: helloText
        text: "Hello world!"
        y: 30
        anchors.horizontalCenter: page.horizontalCenter
        font.pointSize: 24; font.bold: true
    }
}
```

<span id="walkthrough"></span>
Walkthrough
-----------

<span id="import"></span>
### Import

First, we need to import the types that we need for this example. Most QML files will import the built-in QML types (like [Rectangle](../QtQuick.Rectangle/index.html), [Image](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtQuick.imageelements/#image), ...) that come with Qt, using:

``` qml
import QtQuick 2.0
```

<span id="rectangle-type"></span>
### Rectangle Type

``` qml
Rectangle {
    id: page
    width: 320; height: 480
    color: "lightgray"
```

We declare a root object of type [Rectangle](../QtQuick.Rectangle/index.html). It is one of the basic building blocks you can use to create an application in QML. We give it an `id` to be able to refer to it later. In this case, we call it "page". We also set the `width`, `height` and `color` properties. The [Rectangle](../QtQuick.Rectangle/index.html) type contains many other properties (such as `x` and `y`), but these are left at their default values.

<span id="text-type"></span>
### Text Type

``` qml
    Text {
        id: helloText
        text: "Hello world!"
        y: 30
        anchors.horizontalCenter: page.horizontalCenter
        font.pointSize: 24; font.bold: true
    }
```

We add a [Text](../QtQuick.qtquick-releasenotes/index.html#text) type as a child of the root Rectangle type that displays the text 'Hello world!'.

The `y` property is used to position the text vertically at 30 pixels from the top of its parent.

The `anchors.horizontalCenter` property refers to the horizontal center of an type. In this case, we specify that our text type should be horizontally centered in the *page* element (see [Anchor-Based Layout](../QtQuick.qtquick-positioning-anchors/index.html#anchor-layout)).

The `font.pointSize` and `font.bold` properties are related to fonts and use the dot notation.

<span id="viewing-the-example"></span>
### Viewing the example

To view what you have created, run the qmlscene tool (located in the `bin` directory) with your filename as the first argument. For example, to run the provided completed Tutorial 1 example from the install location, you would type:

``` cpp
qmlscene tutorials/helloworld/tutorial1.qml
```

<a href="../QtQuick.qml-tutorial/index.html" class="prevPage">QML Tutorial</a> <a href="../QtQuick.qml-tutorial2/index.html" class="nextPage">QML Tutorial 2 - QML Components</a>

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
