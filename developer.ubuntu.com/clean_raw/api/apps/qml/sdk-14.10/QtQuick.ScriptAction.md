---
Title: QtQuick.ScriptAction
---

# QtQuick.ScriptAction

<span class="subtitle"></span>
<!-- $$$ScriptAction-brief -->
<p>Defines scripts to be run during an animation More...</p>
<!-- @@@ScriptAction -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import QtQuick 2.2</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Animation.md">Animation</a></p>
</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#script-prop">script</a></b></b> : script</li>
<li class="fn"><b><b><a href="#scriptName-prop">scriptName</a></b></b> : string</li>
</ul>
<!-- $$$ScriptAction-description -->
<h2>Detailed Description</h2>
<p>ScriptAction can be used to run a script at a specific point in an animation.</p>
<pre class="qml"><span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {
<span class="comment">// ...</span>
}
<span class="type">ScriptAction</span> { <span class="name">script</span>: <span class="name">doSomething</span>(); }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {
<span class="comment">// ...</span>
}
}</pre>
<p>When used as part of a Transition, you can also target a specific <a href="QtQuick.StateChangeScript.md">StateChangeScript</a> to run using the <tt>scriptName</tt> property.</p>
<pre class="qml"><span class="type"><a href="QtQuick.State.md">State</a></span> {
<span class="name">name</span>: <span class="string">&quot;state1&quot;</span>
<span class="type"><a href="QtQuick.StateChangeScript.md">StateChangeScript</a></span> {
<span class="name">name</span>: <span class="string">&quot;myScript&quot;</span>
<span class="name">script</span>: <span class="name">doStateStuff</span>();
}
<span class="comment">// ...</span>
}
<span class="comment">// ...</span>
<span class="type"><a href="QtQuick.Transition.md">Transition</a></span> {
<span class="name">to</span>: <span class="string">&quot;state1&quot;</span>
<span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="comment">/* ... */</span> }
<span class="type">ScriptAction</span> { <span class="name">scriptName</span>: <span class="string">&quot;myScript&quot;</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="comment">/* ... */</span> }
}
}</pre>
<p><b>See also </b><a href="QtQuick.StateChangeScript.md">StateChangeScript</a>.</p>
<!-- @@@ScriptAction -->
<h2>Property Documentation</h2>
<!-- $$$script -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">script</span> : <span class="type">script</span></p></td></tr></table><p>This property holds the script to run.</p>
<!-- @@@script -->
<br/>
<!-- $$$scriptName -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">scriptName</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name of the <a href="QtQuick.StateChangeScript.md">StateChangeScript</a> to run.</p>
<p>This property is only valid when <a href="index.html">ScriptAction</a> is used as part of a transition. If both script and scriptName are set, scriptName will be used.</p>
<p><b>Note: </b>When using scriptName in a reversible transition, the script will only be run when the transition is being run forwards.</p><!-- @@@scriptName -->
<br/>
