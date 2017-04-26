---
Title: Ubuntu.Components.UriHandler
---

# Ubuntu.Components.UriHandler

<span class="subtitle"></span>
<!-- $$$UriHandler-brief -->
<p>Singleton signalling for opened URIs. More...</p>
<!-- @@@UriHandler -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Components 1.1</tt></td></tr></table><ul>
</ul>
<h2>Signals</h2>
<ul>
<li class="fn"><b><b><a href="#onOpened-signal">onOpened</a></b></b>(list&lt;string&gt; <i>uris</i>)</li>
</ul>
<!-- $$$UriHandler-description -->
<h2>Detailed Description</h2>
<p>UriHandler is a singleton handling opened URIs. The application can be signalled of opened URIs through the opened signal. The content of the &quot;APP_ID&quot; environment variable is used to determine the object path. If the D-Bus session bus is not connected or the &quot;APP_ID&quot; variable is not set or empty, the handler stays uninitialized.</p>
<p>Example of use:</p>
<pre class="qml"><span class="type"><a href="QtQml.Connections.md">Connections</a></span> {
<span class="name">target</span>: <span class="name">UriHandler</span>
<span class="name">onOpened</span>: <span class="name">print</span>(<span class="name">uris</span>)
}</pre>
<!-- @@@UriHandler -->
<h2>Signal Documentation</h2>
<!-- $$$onOpened -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">onOpened</span>(<span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-list.html">list</a></span>&lt;<span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span>&gt;<i> uris</i>)</p></td></tr></table><p>The signal is triggered when URIs are opened.</p>
<!-- @@@onOpened -->
<br/>
