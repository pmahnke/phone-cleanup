---
Title: Ubuntu.Components.ActionManager
---

# Ubuntu.Components.ActionManager

<span class="subtitle"></span>
<!-- $$$ActionManager-brief -->
<p>ActionManager manages actions and action contexts withion an application. More...</p>
<!-- @@@ActionManager -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Components 1.1</tt></td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#actions-prop">actions</a></b></b> : list&lt;Action&gt;</li>
<li class="fn"><b><b><a href="#globalContext-prop">globalContext</a></b></b> : ActionContext</li>
<li class="fn"><b><b><a href="#localContexts-prop">localContexts</a></b></b> : list&lt;ActionContext&gt;</li>
</ul>
<!-- $$$ActionManager-description -->
<h2>Detailed Description</h2>
<p>Acts as an interface between the application and external components. Maintains the global context action registration.</p>
<p>There can be many ActionManager instances in an application, and all instances will have the ActionContexts shared between each other. If individual ActionManager instances add more Action objects, those will be published as well.</p>
<!-- @@@ActionManager -->
<h2>Property Documentation</h2>
<!-- $$$actions -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="qmldefault">default</span><span class="name">actions</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-list.html">list</a></span>&lt;<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span>&gt;</p></td></tr></table><p>A list of actions in the global context.</p>
<!-- @@@actions -->
<br/>
<!-- $$$globalContext -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">globalContext</span> : <span class="type"><a href="Ubuntu.Components.ActionContext.md">ActionContext</a></span></p></td></tr></table><p>The globalContext of the Application.</p>
<p><b>Note: </b>Setting the <a href="Ubuntu.Components.ActionContext.md#active-prop">ActionContext::active</a> on the global context has no effect.</p><!-- @@@globalContext -->
<br/>
<!-- $$$localContexts -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">localContexts</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-list.html">list</a></span>&lt;<span class="type"><a href="Ubuntu.Components.ActionContext.md">ActionContext</a></span>&gt;</p></td></tr></table><p>List of local contexts.</p>
<!-- @@@localContexts -->
<br/>
