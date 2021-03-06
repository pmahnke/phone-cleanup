---
Title: Ubuntu.Web.WebView
---

# Ubuntu.Web.WebView

<span class="subtitle"></span>
<!-- $$$WebView-brief -->
<p>A webview that can be used to render web content in an application. More...</p>
<!-- @@@WebView -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Web 0.2</tt></td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#alertDialog-prop">alertDialog</a></b></b> : component</li>
<li class="fn"><b><b><a href="#beforeUnloadDialog-prop">beforeUnloadDialog</a></b></b> : component</li>
<li class="fn"><b><b><a href="#canGoBack-prop">canGoBack</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#canGoForward-prop">canGoForward</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#confirmDialog-prop">confirmDialog</a></b></b> : component</li>
<li class="fn"><b><b><a href="#context-prop">context</a></b></b> : WebContext</li>
<li class="fn"><b><b><a href="#contextualActions-prop">contextualActions</a></b></b> : ActionList</li>
<li class="fn"><b><b><a href="#contextualData-prop">contextualData</a></b></b> : QtObject</li>
<li class="fn"><b><b><a href="#filePicker-prop">filePicker</a></b></b> : component</li>
<li class="fn"><b><b><a href="#fullscreen-prop">fullscreen</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#icon-prop">icon</a></b></b> : url</li>
<li class="fn"><b><b><a href="#incognito-prop">incognito</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#loadProgress-prop">loadProgress</a></b></b> : int</li>
<li class="fn"><b><b><a href="#loading-prop">loading</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#navigationHistory-prop">navigationHistory</a></b></b> : list</li>
<li class="fn"><b><b><a href="#promptDialog-prop">promptDialog</a></b></b> : component</li>
<li class="fn"><b><b><a href="#title-prop">title</a></b></b> : string</li>
<li class="fn"><b><b><a href="#url-prop">url</a></b></b> : url</li>
</ul>
<h2>Methods</h2>
<ul>
<li class="fn">string <b><b><a href="#getUAString-method">getUAString</a></b></b>()</li>
<li class="fn">void <b><b><a href="#goBack-method">goBack</a></b></b>()</li>
<li class="fn">void <b><b><a href="#goForward-method">goForward</a></b></b>()</li>
<li class="fn">void <b><b><a href="#loadHtml-method">loadHtml</a></b></b>(string <i>html</i>, url <i>baseUrl</i>)</li>
<li class="fn">void <b><b><a href="#reload-method">reload</a></b></b>()</li>
<li class="fn">void <b><b><a href="#stop-method">stop</a></b></b>()</li>
</ul>
<!-- $$$WebView-description -->
<h2>Detailed Description</h2>
<p>Here is a very simple example of how to use a WebView to render a web page:</p>
<pre class="qml">import QtQuick 2.0
import Ubuntu.Web 0.2
<span class="type">WebView</span> {
<span class="name">url</span>: <span class="string">&quot;http://ubuntu.com&quot;</span>
}</pre>
<p>The <tt>WebView</tt> component defaults to using a <a href="Ubuntu.Web.SharedWebContext.md">shared <tt>WebContext</tt></a> that is shared across all <tt>WebView</tt> instances in a given application.</p>
<p><b>See also </b><a href="Ubuntu.Web.SharedWebContext.md">SharedWebContext</a>.</p>
<!-- @@@WebView -->
<h2>Property Documentation</h2>
<!-- $$$alertDialog -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">alertDialog</span> : <span class="type">component</span></p></td></tr></table><p>The QML component that will be instantiated to display a JavaScript alert dialog.</p>
<p><b>See also </b><a href="#confirmDialog-prop">confirmDialog</a>, <a href="#promptDialog-prop">promptDialog</a>, and <a href="#beforeUnloadDialog-prop">beforeUnloadDialog</a>.</p>
<!-- @@@alertDialog -->
<br/>
<!-- $$$beforeUnloadDialog -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">beforeUnloadDialog</span> : <span class="type">component</span></p></td></tr></table><p>The QML component that will be instantiated to display a JavaScript confirmation when the user initiates a navigation away from the current page, if the page has defined an <tt>onBeforeUnload</tt> handler.</p>
<p><b>See also </b><a href="#alertDialog-prop">alertDialog</a>, <a href="#confirmDialog-prop">confirmDialog</a>, and <a href="#promptDialog-prop">promptDialog</a>.</p>
<!-- @@@beforeUnloadDialog -->
<br/>
<!-- $$$canGoBack -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">canGoBack</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the navigation history has a previous entry to navigate back.</p>
<p><b>See also </b><a href="#goBack-method">goBack</a> and <a href="#canGoForward-prop">canGoForward</a>.</p>
<!-- @@@canGoBack -->
<br/>
<!-- $$$canGoForward -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">canGoForward</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the navigation history has a next entry to navigate forward.</p>
<p><b>See also </b><a href="#goForward-method">goForward</a> and <a href="#canGoBack-prop">canGoBack</a>.</p>
<!-- @@@canGoForward -->
<br/>
<!-- $$$confirmDialog -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">confirmDialog</span> : <span class="type">component</span></p></td></tr></table><p>The QML component that will be instantiated to display a JavaScript confirmation dialog.</p>
<p><b>See also </b><a href="#alertDialog-prop">alertDialog</a>, <a href="#promptDialog-prop">promptDialog</a>, and <a href="#beforeUnloadDialog-prop">beforeUnloadDialog</a>.</p>
<!-- @@@confirmDialog -->
<br/>
<!-- $$$context -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">context</span> : <span class="type"><a href="Ubuntu.Web.WebContext.md">WebContext</a></span></p></td></tr></table><p>The web context associated to this <a href="index.html">WebView</a>. By default a <a href="Ubuntu.Web.SharedWebContext.md">shared context</a> is used which should fit most use cases, do not override unless you really need a finer control over the context.</p>
<!-- @@@context -->
<br/>
<!-- $$$contextualActions -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">contextualActions</span> : <span class="type">ActionList</span></p></td></tr></table><p>A list of actions that the user will be presented with when invoking a context menu (by way of a right click on desktop, or a long press on a touch-enabled device, on an image or a hyperlink). By default the list is empty, and no menu is shown. User-defined actions can access the <a href="#contextualData-prop">contextual data</a>.</p>
<p>Example of user-defined actions:</p>
<pre class="cpp">import Ubuntu<span class="operator">.</span>Components <span class="number">1.1</span>
import Ubuntu<span class="operator">.</span>Web <span class="number">0.2</span>
WebView {
contextualActions: ActionList {
Action {
text: i18n<span class="operator">.</span>tr(<span class="string">&quot;Open link in browser&quot;</span>)
enabled: contextualData<span class="operator">.</span>href<span class="operator">.</span>toString()
onTriggered: <span class="type">Qt</span><span class="operator">.</span>openUrlExternally(contextualData<span class="operator">.</span>href)
}
}
}</pre>
<p><b>See also </b><a href="#contextualData-prop">contextualData</a>.</p>
<!-- @@@contextualActions -->
<br/>
<!-- $$$contextualData -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">contextualData</span> : <span class="type">QtObject</span></p></td></tr></table><p>An object that holds the contextual data associated with the current context menu. User-defined <a href="#contextualActions-prop">contextual actions</a> can use this data to process it when triggered.</p>
<p>It has the following properties:</p>
<ul>
<li>href (url): the full URI of the hyperlink, if any</li>
<li>title (string): the title of the hyperlink, if any</li>
<li>img (url): the full URI of the image</li>
</ul>
<p>Note that in the case of an image enclosed inside a hyperlink, both <tt>href</tt> and <tt>img</tt> will be available, allowing a user-defined contextual action to operate on both elements.</p>
<p><b>See also </b><a href="#contextualActions-prop">contextualActions</a>.</p>
<!-- @@@contextualData -->
<br/>
<!-- $$$filePicker -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">filePicker</span> : <span class="type">component</span></p></td></tr></table><p>The QML component that will be instantiated to let the user select files when the user clicks an <tt>&lt;input type=&quot;file&quot;&gt;</tt> element on the current page.</p>
<!-- @@@filePicker -->
<br/>
<!-- $$$fullscreen -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">fullscreen</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the current page requested fullscreen display.</p>
<!-- @@@fullscreen -->
<br/>
<!-- $$$icon -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">icon</span> : <span class="type"><a href="#url-prop">url</a></span></p></td></tr></table><p>The URL of the favicon of the current page.</p>
<!-- @@@icon -->
<br/>
<!-- $$$incognito -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">incognito</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the <a href="index.html">WebView</a> is being used in private browsing mode, where no data is persisted across sessions.</p>
<!-- @@@incognito -->
<br/>
<!-- $$$loadProgress -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">loadProgress</span> : <span class="type">int</span></p></td></tr></table><p>The load progress of the current page (as a integer value between 0 and 100).</p>
<p><b>See also </b><a href="#loading-prop">loading</a>.</p>
<!-- @@@loadProgress -->
<br/>
<!-- $$$loading -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">loading</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the current page is loading.</p>
<p><b>See also </b><a href="#loadProgress-prop">loadProgress</a>, <a href="#stop-method">stop</a>, and <a href="#reload-method">reload</a>.</p>
<!-- @@@loading -->
<br/>
<!-- $$$navigationHistory -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">navigationHistory</span> : <span class="type">list</span></p></td></tr></table><p>The navigation history (back/forward entries) stored as a list model with a <tt>currentIndex</tt> property. Each entry exposes the URL and title of the corresponding page, as well as a timestamp of when it was visited.</p>
<!-- @@@navigationHistory -->
<br/>
<!-- $$$promptDialog -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">promptDialog</span> : <span class="type">component</span></p></td></tr></table><p>The QML component that will be instantiated to display a JavaScript prompt dialog.</p>
<p><b>See also </b><a href="#alertDialog-prop">alertDialog</a>, <a href="#confirmDialog-prop">confirmDialog</a>, and <a href="#beforeUnloadDialog-prop">beforeUnloadDialog</a>.</p>
<!-- @@@promptDialog -->
<br/>
<!-- $$$title -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">title</span> : <span class="type">string</span></p></td></tr></table><p>The title of the current page.</p>
<!-- @@@title -->
<br/>
<!-- $$$url -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">url</span> : <span class="type">url</span></p></td></tr></table><p>The URL of the current page.</p>
<!-- @@@url -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$getUAString -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">getUAString</span>()</p></td></tr></table><p>This method can be overridden by client applications that embed a <a href="index.html">WebView</a> to provide a static overridden user agent string. If not overridden, the default UA string and the default override mechanism will be used (see <a href="Ubuntu.Web.WebContext.md">WebContext</a>).</p>
<p>Note: as the user agent string is a property of the shared context, an application that embeds several WebViews that define different custom user agent strings will result in the last view instantiated setting the user agent string for all the views (unless they all use separate contexts instead of the default shared one).</p>
<!-- @@@getUAString -->
<br/>
<!-- $$$goBack -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">goBack</span>()</p></td></tr></table><p>Go back one entry in the navigation history.</p>
<p><b>See also </b><a href="#canGoBack-prop">canGoBack</a> and <a href="#goForward-method">goForward</a>.</p>
<!-- @@@goBack -->
<br/>
<!-- $$$goForward -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">goForward</span>()</p></td></tr></table><p>Go forward one entry in the navigation history.</p>
<p><b>See also </b><a href="#canGoForward-prop">canGoForward</a> and <a href="#goBack-method">goBack</a>.</p>
<!-- @@@goForward -->
<br/>
<!-- $$$loadHtml -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">loadHtml</span>(<span class="type">string</span><i> html</i>, <span class="type"><a href="#url-prop">url</a></span><i> baseUrl</i>)</p></td></tr></table><p>Load HTML content from memory instead of loading it from a URL. The <tt>baseUrl</tt> argument is used to resolve relative URLs in the provided content.</p>
<!-- @@@loadHtml -->
<br/>
<!-- $$$reload -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">reload</span>()</p></td></tr></table><p>Reload the current page.</p>
<p><b>See also </b><a href="#stop-method">stop</a>.</p>
<!-- @@@reload -->
<br/>
<!-- $$$stop -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">stop</span>()</p></td></tr></table><p>Stop loading the current page. Does nothing if there is no page currently loading.</p>
<p><b>See also </b><a href="#reload-method">reload</a> and <a href="#loading-prop">loading</a>.</p>
<!-- @@@stop -->
<br/>
