---
Title: QtQuick.StateChangeScript
---

# QtQuick.StateChangeScript

<span class="subtitle"></span>
<!-- $$$StateChangeScript-brief -->
<p>Specifies how to run a script in a state More...</p>
<!-- @@@StateChangeScript -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import QtQuick 2.2</tt></td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="#script-prop">script</a></b></b> : script</li>
</ul>
<!-- $$$StateChangeScript-description -->
<h2>Detailed Description</h2>
<p>A StateChangeScript is run upon entering a state. You can optionally use <a href="QtQuick.ScriptAction.md">ScriptAction</a> to specify the point in the transition at which the StateChangeScript should to be run.</p>
<pre class="qml"><span class="type"><a href="QtQuick.State.md">State</a></span> {
<span class="name">name</span>: <span class="string">&quot;state1&quot;</span>
<span class="type">StateChangeScript</span> {
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
<span class="type"><a href="QtQuick.ScriptAction.md">ScriptAction</a></span> { <span class="name">scriptName</span>: <span class="string">&quot;myScript&quot;</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="comment">/* ... */</span> }
}
}</pre>
<p><b>See also </b><a href="QtQuick.ScriptAction.md">ScriptAction</a>.</p>
<!-- @@@StateChangeScript -->
<h2>Property Documentation</h2>
<!-- $$$name -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name of the script. This name can be used by a <a href="QtQuick.ScriptAction.md">ScriptAction</a> to target a specific script.</p>
<p><b>See also </b><a href="QtQuick.ScriptAction.md#scriptName-prop">ScriptAction::scriptName</a>.</p>
<!-- @@@name -->
<br/>
<!-- $$$script -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">script</span> : <span class="type">script</span></p></td></tr></table><p>This property holds the script to run when the state is current.</p>
<!-- @@@script -->
<br/>
