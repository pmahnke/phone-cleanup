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
-   [SDK 14.10](../index.html) ›
-   [Ubuntu.Web](../Ubuntu.Web/index.html) ›

<!-- -->

-   WebView

WebView
=======

<span class="subtitle"></span>
A webview that can be used to render web content in an application. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | `import Ubuntu.Web 0.2` |

<span id="properties"></span>
Properties
----------

-   ****[alertDialog](index.html#alertDialog-prop)**** : component
-   ****[beforeUnloadDialog](index.html#beforeUnloadDialog-prop)**** : component
-   ****[canGoBack](index.html#canGoBack-prop)**** : bool
-   ****[canGoForward](index.html#canGoForward-prop)**** : bool
-   ****[confirmDialog](index.html#confirmDialog-prop)**** : component
-   ****[context](index.html#context-prop)**** : WebContext
-   ****[contextualActions](index.html#contextualActions-prop)**** : ActionList
-   ****[contextualData](index.html#contextualData-prop)**** : QtObject
-   ****[filePicker](index.html#filePicker-prop)**** : component
-   ****[fullscreen](index.html#fullscreen-prop)**** : bool
-   ****[icon](index.html#icon-prop)**** : url
-   ****[incognito](index.html#incognito-prop)**** : bool
-   ****[loadProgress](index.html#loadProgress-prop)**** : int
-   ****[loading](index.html#loading-prop)**** : bool
-   ****[navigationHistory](index.html#navigationHistory-prop)**** : list
-   ****[promptDialog](index.html#promptDialog-prop)**** : component
-   ****[title](index.html#title-prop)**** : string
-   ****[url](index.html#url-prop)**** : url

<span id="methods"></span>
Methods
-------

-   string ****[getUAString](index.html#getUAString-method)****()
-   void ****[goBack](index.html#goBack-method)****()
-   void ****[goForward](index.html#goForward-method)****()
-   void ****[loadHtml](index.html#loadHtml-method)****(string *html*, url *baseUrl*)
-   void ****[reload](index.html#reload-method)****()
-   void ****[stop](index.html#stop-method)****()

<span id="details"></span>
Detailed Description
--------------------

Here is a very simple example of how to use a WebView to render a web page:

``` qml
import QtQuick 2.0
import Ubuntu.Web 0.2
WebView {
    url: "http://ubuntu.com"
}
```

The `WebView` component defaults to using a [shared `WebContext`](../Ubuntu.Web.SharedWebContext/index.html) that is shared across all `WebView` instances in a given application.

**See also** [SharedWebContext](../Ubuntu.Web.SharedWebContext/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="alertDialog-prop"></span><span class="name">alertDialog</span> : <span class="type">component</span></p></td>
</tr>
</tbody>
</table>

The QML component that will be instantiated to display a JavaScript alert dialog.

**See also** [confirmDialog](index.html#confirmDialog-prop), [promptDialog](index.html#promptDialog-prop), and [beforeUnloadDialog](index.html#beforeUnloadDialog-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="beforeUnloadDialog-prop"></span><span class="name">beforeUnloadDialog</span> : <span class="type">component</span></p></td>
</tr>
</tbody>
</table>

The QML component that will be instantiated to display a JavaScript confirmation when the user initiates a navigation away from the current page, if the page has defined an `onBeforeUnload` handler.

**See also** [alertDialog](index.html#alertDialog-prop), [confirmDialog](index.html#confirmDialog-prop), and [promptDialog](index.html#promptDialog-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="canGoBack-prop"></span><span class="name">canGoBack</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the navigation history has a previous entry to navigate back.

**See also** [goBack](index.html#goBack-method) and [canGoForward](index.html#canGoForward-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="canGoForward-prop"></span><span class="name">canGoForward</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the navigation history has a next entry to navigate forward.

**See also** [goForward](index.html#goForward-method) and [canGoBack](index.html#canGoBack-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="confirmDialog-prop"></span><span class="name">confirmDialog</span> : <span class="type">component</span></p></td>
</tr>
</tbody>
</table>

The QML component that will be instantiated to display a JavaScript confirmation dialog.

**See also** [alertDialog](index.html#alertDialog-prop), [promptDialog](index.html#promptDialog-prop), and [beforeUnloadDialog](index.html#beforeUnloadDialog-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="context-prop"></span><span class="name">context</span> : <span class="type"><a href="../Ubuntu.Web.WebContext/index.html">WebContext</a></span></p></td>
</tr>
</tbody>
</table>

The web context associated to this [WebView](index.html). By default a [shared context](../Ubuntu.Web.SharedWebContext/index.html) is used which should fit most use cases, do not override unless you really need a finer control over the context.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contextualActions-prop"></span><span class="name">contextualActions</span> : <span class="type">ActionList</span></p></td>
</tr>
</tbody>
</table>

A list of actions that the user will be presented with when invoking a context menu (by way of a right click on desktop, or a long press on a touch-enabled device, on an image or a hyperlink). By default the list is empty, and no menu is shown. User-defined actions can access the [contextual data](index.html#contextualData-prop).

Example of user-defined actions:

``` cpp
import Ubuntu.Components 1.1
import Ubuntu.Web 0.2
WebView {
    contextualActions: ActionList {
        Action {
            text: i18n.tr("Open link in browser")
            enabled: contextualData.href.toString()
            onTriggered: Qt.openUrlExternally(contextualData.href)
        }
    }
}
```

**See also** [contextualData](index.html#contextualData-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contextualData-prop"></span><span class="name">contextualData</span> : <span class="type">QtObject</span></p></td>
</tr>
</tbody>
</table>

An object that holds the contextual data associated with the current context menu. User-defined [contextual actions](index.html#contextualActions-prop) can use this data to process it when triggered.

It has the following properties:

-   href (url): the full URI of the hyperlink, if any
-   title (string): the title of the hyperlink, if any
-   img (url): the full URI of the image

Note that in the case of an image enclosed inside a hyperlink, both `href` and `img` will be available, allowing a user-defined contextual action to operate on both elements.

**See also** [contextualActions](index.html#contextualActions-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="filePicker-prop"></span><span class="name">filePicker</span> : <span class="type">component</span></p></td>
</tr>
</tbody>
</table>

The QML component that will be instantiated to let the user select files when the user clicks an `<input type="file">` element on the current page.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fullscreen-prop"></span><span class="name">fullscreen</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the current page requested fullscreen display.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="icon-prop"></span><span class="name">icon</span> : <span class="type"><a href="index.html#url-prop">url</a></span></p></td>
</tr>
</tbody>
</table>

The URL of the favicon of the current page.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="incognito-prop"></span><span class="name">incognito</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the [WebView](index.html) is being used in private browsing mode, where no data is persisted across sessions.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="loadProgress-prop"></span><span class="name">loadProgress</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The load progress of the current page (as a integer value between 0 and 100).

**See also** [loading](index.html#loading-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="loading-prop"></span><span class="name">loading</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the current page is loading.

**See also** [loadProgress](index.html#loadProgress-prop), [stop](index.html#stop-method), and [reload](index.html#reload-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="navigationHistory-prop"></span><span class="name">navigationHistory</span> : <span class="type">list</span></p></td>
</tr>
</tbody>
</table>

The navigation history (back/forward entries) stored as a list model with a `currentIndex` property. Each entry exposes the URL and title of the corresponding page, as well as a timestamp of when it was visited.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="promptDialog-prop"></span><span class="name">promptDialog</span> : <span class="type">component</span></p></td>
</tr>
</tbody>
</table>

The QML component that will be instantiated to display a JavaScript prompt dialog.

**See also** [alertDialog](index.html#alertDialog-prop), [confirmDialog](index.html#confirmDialog-prop), and [beforeUnloadDialog](index.html#beforeUnloadDialog-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="title-prop"></span><span class="name">title</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The title of the current page.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="url-prop"></span><span class="name">url</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

The URL of the current page.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="getUAString-method"></span><span class="type">string</span> <span class="name">getUAString</span>()</p></td>
</tr>
</tbody>
</table>

This method can be overridden by client applications that embed a [WebView](index.html) to provide a static overridden user agent string. If not overridden, the default UA string and the default override mechanism will be used (see [WebContext](../Ubuntu.Web.WebContext/index.html)).

Note: as the user agent string is a property of the shared context, an application that embeds several WebViews that define different custom user agent strings will result in the last view instantiated setting the user agent string for all the views (unless they all use separate contexts instead of the default shared one).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="goBack-method"></span><span class="type">void</span> <span class="name">goBack</span>()</p></td>
</tr>
</tbody>
</table>

Go back one entry in the navigation history.

**See also** [canGoBack](index.html#canGoBack-prop) and [goForward](index.html#goForward-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="goForward-method"></span><span class="type">void</span> <span class="name">goForward</span>()</p></td>
</tr>
</tbody>
</table>

Go forward one entry in the navigation history.

**See also** [canGoForward](index.html#canGoForward-prop) and [goBack](index.html#goBack-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="loadHtml-method"></span><span class="type">void</span> <span class="name">loadHtml</span>(<span class="type">string</span> <em>html</em>, <span class="type"><a href="index.html#url-prop">url</a></span> <em>baseUrl</em>)</p></td>
</tr>
</tbody>
</table>

Load HTML content from memory instead of loading it from a URL. The `baseUrl` argument is used to resolve relative URLs in the provided content.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="reload-method"></span><span class="type">void</span> <span class="name">reload</span>()</p></td>
</tr>
</tbody>
</table>

Reload the current page.

**See also** [stop](index.html#stop-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stop-method"></span><span class="type">void</span> <span class="name">stop</span>()</p></td>
</tr>
</tbody>
</table>

Stop loading the current page. Does nothing if there is no page currently loading.

**See also** [reload](index.html#reload-method) and [loading](index.html#loading-prop).

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
