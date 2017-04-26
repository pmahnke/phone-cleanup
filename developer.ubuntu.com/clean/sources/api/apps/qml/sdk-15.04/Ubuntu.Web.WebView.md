---
Title: Ubuntu.Web.WebView
---
        
WebView
=======

<span class="subtitle"></span>
A webview that can be used to render web content in an application. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import Ubuntu.Web 0.2 |

<span id="properties"></span>
Properties
----------

-   ****[alertDialog](#alertDialog-prop)**** : component
-   ****[beforeUnloadDialog](#beforeUnloadDialog-prop)**** : component
-   ****[canGoBack](#canGoBack-prop)**** : bool
-   ****[canGoForward](#canGoForward-prop)**** : bool
-   ****[confirmDialog](#confirmDialog-prop)**** : component
-   ****[context](#context-prop)**** : WebContext
-   ****[contextualActions](#contextualActions-prop)**** : ActionList
-   ****[contextualData](#contextualData-prop)**** : QtObject
-   ****[filePicker](#filePicker-prop)**** : component
-   ****[fullscreen](#fullscreen-prop)**** : bool
-   ****[icon](#icon-prop)**** : url
-   ****[incognito](#incognito-prop)**** : bool
-   ****[loadProgress](#loadProgress-prop)**** : int
-   ****[loading](#loading-prop)**** : bool
-   ****[navigationHistory](#navigationHistory-prop)**** : list
-   ****[promptDialog](#promptDialog-prop)**** : component
-   ****[title](#title-prop)**** : string
-   ****[url](#url-prop)**** : url

<span id="methods"></span>
Methods
-------

-   void ****[goBack](#goBack-method)****()
-   void ****[goForward](#goForward-method)****()
-   void ****[loadHtml](#loadHtml-method)****(string *html*, url *baseUrl*)
-   void ****[reload](#reload-method)****()
-   void ****[stop](#stop-method)****()

<span id="details"></span>
Detailed Description
--------------------

Here is a very simple example of how to use a [WebView](index.html) to render a web page:

``` qml
import QtQuick 2.0
import Ubuntu.Web 0.2
WebView {
    url: "http://ubuntu.com"
}
```

The `WebView` component defaults to using a [shared `WebContext`](../Ubuntu.Web.SharedWebContext.md) that is shared across all `WebView` instances in a given application.

**See also** [SharedWebContext](../Ubuntu.Web.SharedWebContext.md).

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

**See also** [confirmDialog](#confirmDialog-prop), [promptDialog](#promptDialog-prop), and [beforeUnloadDialog](#beforeUnloadDialog-prop).

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

**See also** [alertDialog](#alertDialog-prop), [confirmDialog](#confirmDialog-prop), and [promptDialog](#promptDialog-prop).

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

**See also** [goBack](#goBack-method) and [canGoForward](#canGoForward-prop).

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

**See also** [goForward](#goForward-method) and [canGoBack](#canGoBack-prop).

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

**See also** [alertDialog](#alertDialog-prop), [promptDialog](#promptDialog-prop), and [beforeUnloadDialog](#beforeUnloadDialog-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="context-prop"></span><span class="name">context</span> : <span class="type"><a href="Ubuntu.Web.WebContext.md">WebContext</a></span></p></td>
</tr>
</tbody>
</table>

The web context associated to this [WebView](index.html). By default a [shared context](../Ubuntu.Web.SharedWebContext.md) is used which should fit most use cases, do not override unless you really need a finer control over the context.

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

A list of actions that the user will be presented with when invoking a context menu (by way of a right click on desktop, or a long press on a touch-enabled device, on an image or a hyperlink). By default the list is empty, and no menu is shown. User-defined actions can access the [contextual data](#contextualData-prop).

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

**See also** [contextualData](#contextualData-prop).

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

An object that holds the contextual data associated with the current context menu. User-defined [contextual actions](#contextualActions-prop) can use this data to process it when triggered.

It has the following properties:

-   href (url): the full URI of the hyperlink, if any
-   title (string): the title of the hyperlink, if any
-   img (url): the full URI of the image

Note that in the case of an image enclosed inside a hyperlink, both `href` and `img` will be available, allowing a user-defined contextual action to operate on both elements.

**See also** [contextualActions](#contextualActions-prop).

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
<td><p><span id="icon-prop"></span><span class="name">icon</span> : <span class="type"><a href="#url-prop">url</a></span></p></td>
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

**See also** [loading](#loading-prop).

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

**See also** [loadProgress](#loadProgress-prop), [stop](#stop-method), and [reload](#reload-method).

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

**See also** [alertDialog](#alertDialog-prop), [confirmDialog](#confirmDialog-prop), and [beforeUnloadDialog](#beforeUnloadDialog-prop).

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
<td><p><span id="url-prop"></span><span class="name">url</span> : <span class="type"><a href="#url-prop">url</a></span></p></td>
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
<td><p><span id="goBack-method"></span><span class="type">void</span> <span class="name">goBack</span>()</p></td>
</tr>
</tbody>
</table>

Go back one entry in the navigation history.

**See also** [canGoBack](#canGoBack-prop) and [goForward](#goForward-method).

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

**See also** [canGoForward](#canGoForward-prop) and [goBack](#goBack-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="loadHtml-method"></span><span class="type">void</span> <span class="name">loadHtml</span>(<span class="type">string</span> <em>html</em>, <span class="type"><a href="#url-prop">url</a></span> <em>baseUrl</em>)</p></td>
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

**See also** [stop](#stop-method).

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

**See also** [reload](#reload-method) and [loading](#loading-prop).

