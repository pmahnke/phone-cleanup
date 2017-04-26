---
Title: Ubuntu.Components.ActionList
---

# Ubuntu.Components.ActionList

<span class="subtitle"></span>
<!-- $$$ActionList-brief -->
<p>List of Action items More...</p>
<!-- @@@ActionList -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Components 1.1</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQml.QtObject.md">QtObject</a></p>
</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#actions-prop">actions</a></b></b> : Action</li>
<li class="fn"><b><b><a href="#children-prop">children</a></b></b> : list&lt;Action&gt;</li>
</ul>
<!-- $$$ActionList-description -->
<h2>Detailed Description</h2>
<!-- @@@ActionList -->
<h2>Property Documentation</h2>
<!-- $$$actions -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">actions</span> : <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span></p></td></tr></table><p>List of already defined actions when not defining them as children of the <a href="index.html">ActionList</a>. Note that when you set this property, the children of the <a href="index.html">ActionList</a> will be ignored, so do not set the list and define children.</p>
<p>The advantage of setting actions over using the children is that the same <a href="Ubuntu.Components.Action.md">Action</a> items can be used in several sets of actions.</p>
<!-- @@@actions -->
<br/>
<!-- $$$children -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="qmldefault">default</span><span class="name">children</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-list.html">list</a></span>&lt;<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span>&gt;</p></td></tr></table><p>Default property to allow adding of children.</p>
<!-- @@@children -->
<br/>
