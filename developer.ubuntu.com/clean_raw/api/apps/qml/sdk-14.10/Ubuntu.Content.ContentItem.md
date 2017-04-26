---
Title: Ubuntu.Content.ContentItem
---

# Ubuntu.Content.ContentItem

<span class="subtitle"></span>
<!-- $$$ContentItem-brief -->
<p>Content that can be imported or exported from a ContentPeer More...</p>
<!-- @@@ContentItem -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Content 1.1</tt></td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#url-prop">url</a></b></b> : url</li>
</ul>
<h2>Methods</h2>
<ul>
<li class="fn">bool <b><b><a href="#move-method-2">move</a></b></b>(dir, fileName)</li>
<li class="fn">bool <b><b><a href="#move-method">move</a></b></b>(dir)</li>
</ul>
<!-- $$$ContentItem-description -->
<h2>Detailed Description</h2>
<p>A ContentItem is an item that can be imported or exported from a <a href="Ubuntu.Content.ContentPeer.md">ContentPeer</a></p>
<p>See documentation for <a href="Ubuntu.Content.ContentHub.md">ContentHub</a></p>
<!-- @@@ContentItem -->
<h2>Property Documentation</h2>
<!-- $$$url -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">url</span> : <span class="type">url</span></p></td></tr></table><p>URL of the content data</p>
<!-- @@@url -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$move -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">move</span>(<span class="type">dir</span>, <span class="type">fileName</span>)</p></td></tr></table><p>If the url is a local file, move the file to <i>dir</i> and rename to <i>fileName</i></p>
<p>If the move is successful, the url property will be changed and onUrlChanged will be emitted.</p>
<p>Returns true if the file was moved successfully, false on error or if the url wasn't a local file.</p>
<!-- @@@move -->
<br/>
<!-- $$$move -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">move</span>(<span class="type">dir</span>)</p></td></tr></table><p>If the url is a local file, move the file to <i>dir</i></p>
<p>If the move is successful, the url property will be changed and onUrlChanged will be emitted.</p>
<p>Returns true if the file was moved successfully, false on error or if the url wasn't a local file.</p>
<!-- @@@move -->
<br/>
