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

-   QML Global Object

QML Global Object
=================

<span class="subtitle"></span>
<span id="details"></span>
The QML JavaScript host environment implements the following host objects and functions. These are built in and can be used from any JavaScript code loaded in QML, without additional imports:

-   The [Qt object](../QtQml.Qt/index.html#qmlglobalqtobject): This object is specific to QML, and provides helper methods and properties specific to the QML environment.
-   qsTr(), qsTranslate(), qsTrId(), QT\_TR\_NOOP(), QT\_TRANSLATE\_NOOP(), and QT\_TRID\_NOOP() functions: These functions are specific to QML, and provide translation capabilities to the QML environment.
-   gc() function: This function is specific to QML, and provides a way to manually trigger garbage collection.
-   print() function: This function is specific to QML, and provides a simple way to output information to the console.
-   The console object: This object implements a subset of the [FireBug Console API](http://getfirebug.com/wiki/index.php/Console_API).
-   [XMLHttpRequest](index.html#xmlhttprequest), DOMException: These objects implement a subset of the [W3C XMLHttpRequest specification](http://www.w3.org/TR/XMLHttpRequest/).

<span id="xmlhttprequest"></span><span id="xmlhttprequest"></span>
XMLHttpRequest
--------------

The [XMLHttpRequest](index.html#xmlhttprequest) object, which can be used to asynchronously obtain data from over a network.

The [XMLHttpRequest](index.html#xmlhttprequest) API implements the same [W3C standard](http://www.w3.org/TR/XMLHttpRequest/) as many popular web browsers with following exceptions:

-   QML's [XMLHttpRequest](index.html#xmlhttprequest) does not enforce the same origin policy.
-   QML's [XMLHttpRequest](index.html#xmlhttprequest) does not support *synchronous* requests.

Additionally, the `responseXML` XML DOM tree currently supported by QML is a reduced subset of the [DOM Level 3 Core](http://www.w3.org/TR/DOM-Level-3-Core/) API supported in a web browser. The following objects and properties are supported by the QML implementation:

<table style="width:100%;">
<colgroup>
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>Node</strong></th>
<th><strong>Document</strong></th>
<th><strong>Element</strong></th>
<th><strong>Attr</strong></th>
<th><strong>CharacterData</strong></th>
<th><strong>Text</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ul>
<li>nodeName</li>
<li>nodeValue</li>
<li>nodeType</li>
<li>parentNode</li>
<li>childNodes</li>
<li>firstChild</li>
<li>lastChild</li>
<li>previousSibling</li>
<li>nextSibling</li>
<li>attributes</li>
</ul></td>
<td><ul>
<li>xmlVersion</li>
<li>xmlEncoding</li>
<li>xmlStandalone</li>
<li>documentElement</li>
</ul></td>
<td><ul>
<li>tagName</li>
</ul></td>
<td><ul>
<li>name</li>
<li>value</li>
<li>ownerElement</li>
</ul></td>
<td><ul>
<li>data</li>
<li>length</li>
</ul></td>
<td><ul>
<li>isElementContentWhitespace</li>
<li>wholeText</li>
</ul></td>
</tr>
</tbody>
</table>

The [XMLHttpRequest example](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.5/QtQml.xmlhttprequest/) demonstrates how to use the [XMLHttpRequest](index.html#xmlhttprequest) object to make a request and read the response headers.

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
