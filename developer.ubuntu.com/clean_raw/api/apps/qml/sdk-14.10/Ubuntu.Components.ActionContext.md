---
Title: Ubuntu.Components.ActionContext
---

# Ubuntu.Components.ActionContext

<span class="subtitle"></span>
<!-- $$$ActionContext-brief -->
<p>ActionContext groups actions together and by providing multiple contexts the developer is able to control the visibility of the actions. The ActionManager then exposes the actions from these different contexts. More...</p>
<!-- @@@ActionContext -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Components 1.1</tt></td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#actions-prop">actions</a></b></b> : list&lt;Action&gt;</li>
<li class="fn"><b><b><a href="#active-prop">active</a></b></b> : bool</li>
</ul>
<!-- $$$ActionContext-description -->
<h2>Detailed Description</h2>
<!-- @@@ActionContext -->
<h2>Property Documentation</h2>
<!-- $$$actions -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="qmldefault">default</span><span class="name">actions</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-list.html">list</a></span>&lt;<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span>&gt;</p></td></tr></table><p>List of Actions in this <a href="index.html">ActionContext</a>.</p>
<!-- @@@actions -->
<br/>
<!-- $$$active -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">active</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td></tr></table><p>If true the context is active. If false the context is inactive. Defaults to false.</p>
<p>When context has been added to the <a href="Ubuntu.Components.ActionManager.md">ActionManager</a> setting this value controls whether or not the actions in a context are available to external components.</p>
<p>The <a href="Ubuntu.Components.ActionManager.md">ActionManager</a> monitors the active property of each of the local contexts that has been added to it. There can be only one active local context at a time. When one of the local contexts sets itself active the manager will notice this, export the actions from that given context and set the previously active local context as inactive. This way setting active to true on a local context is sufficient to manage the active local context of the manager and no additional calls are necessary to manually inactivate the other contexts.</p>
<!-- @@@active -->
<br/>
