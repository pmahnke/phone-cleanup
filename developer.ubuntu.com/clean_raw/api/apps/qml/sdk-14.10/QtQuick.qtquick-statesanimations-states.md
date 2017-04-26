---
Title: QtQuick.qtquick-statesanimations-states
---

# QtQuick.qtquick-statesanimations-states

<span class="subtitle"></span>
<!-- $$$qtquick-statesanimations-states.html-description -->
<h2>Related Types</h2>
<p>Many user interface designs are <i>state driven</i>; interfaces have configurations that differ depending on the current state. For example, a traffic signal will configure its flags or lights depending on its state. While in the signal's <tt>stop</tt> state, a red light will turn on while the yellow and the green lights will turn off. In the <tt>caution</tt> state, the yellow light is on while the other lights are turned off.</p>
<p>In QML, <i>states</i> are a set of property configurations defined in a <a href="QtQuick.State.md">State</a> type. Different configurations could, for example:</p>
<ul>
<li>Show some UI components and hide others</li>
<li>Present different available actions to the user</li>
<li>Start, stop, or pause animations</li>
<li>Execute some script required in the new state</li>
<li>Change a property value for a particular item</li>
<li>Show a different view or screen</li>
</ul>
<p>All <a href="QtQuick.Item.md">Item</a>-based objects have a <tt>state</tt> property, and can specify additional states by adding new <tt>State</tt> objects to the item's <a href="QtQuick.Item.md#states-prop">states</a> property. Each state within a component has a unique <tt>name</tt>, an empty string being the default. To change the current state of an item, set the <a href="QtQuick.Item.md#state-prop">state</a> property to the name of the state.</p>
<p>Non-Item objects may use states through the <a href="QtQuick.StateGroup.md">StateGroup</a> type.</p>
<h2>Creating States</h2>
<p>To create a state, add a <a href="QtQuick.State.md">State</a> object to the item's <a href="QtQuick.Item.md#states-prop">states</a> property, which holds a list of states for that item.</p>
<p>A warning <tt>signal</tt> component may have two states, the <tt>NORMAL</tt> and the <tt>CRITICAL</tt> state. Suppose that in the <tt>NORMAL</tt> state, the <tt>color</tt> of the signal should be <tt>green</tt> and the warning <tt>flag</tt> is down. Meanwhile, in the <tt>CRITICAL</tt> state, the <tt>color</tt> should be <tt>red</tt> and the flag is <tt>up</tt>. We may model the states using the <tt>State</tt> type and the color and flag configurations with the <tt>PropertyChanges</tt> type.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">signal</span>
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="name">state</span>: <span class="string">&quot;NORMAL&quot;</span>
<span class="name">states</span>: [
<span class="type"><a href="QtQuick.State.md">State</a></span> {
<span class="name">name</span>: <span class="string">&quot;NORMAL&quot;</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">signal</span>; <span class="name">color</span>: <span class="string">&quot;green&quot;</span>}
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">flag</span>; <span class="name">state</span>: <span class="string">&quot;FLAG_DOWN&quot;</span>}
},
<span class="type"><a href="QtQuick.State.md">State</a></span> {
<span class="name">name</span>: <span class="string">&quot;CRITICAL&quot;</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">signal</span>; <span class="name">color</span>: <span class="string">&quot;red&quot;</span>}
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">flag</span>; <span class="name">state</span>: <span class="string">&quot;FLAG_UP&quot;</span>}
}
]
}</pre>
<p>The <a href="QtQuick.PropertyChanges.md">PropertyChanges</a> type will change the values of object properties. Objects are referenced through their id. Objects outside the component are also referenced using the <tt>id</tt> property, exemplified by the property change to the external <tt>flag</tt> object.</p>
<p>Further, the state may change by assigning the <tt>state</tt> property with the appropriate signal state. A state switch could be in a <a href="QtQuick.MouseArea.md">MouseArea</a> type, assigning a different state whenever the signal receives a mouse click.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">signalswitch</span>
<span class="name">width</span>: <span class="number">75</span>; <span class="name">height</span>: <span class="number">75</span>
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: {
<span class="keyword">if</span> (<span class="name">signal</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;NORMAL&quot;</span>)
<span class="name">signal</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;CRITICAL&quot;</span>
<span class="keyword">else</span>
<span class="name">signal</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;NORMAL&quot;</span>
}
}
}</pre>
<p>The State type is not limited to performing modifications on property values. It can also:</p>
<ul>
<li>Run some script using <a href="QtQuick.StateChangeScript.md">StateChangeScript</a></li>
<li>Override an existing signal handler for an object using <a href="QtQuick.PropertyChanges.md">PropertyChanges</a></li>
<li>Re-parent an <a href="QtQuick.Item.md">Item</a> using <a href="QtQuick.ParentChange.md">ParentChange</a></li>
<li>Modify anchor values using <a href="QtQuick.AnchorChanges.md">AnchorChanges</a></li>
</ul>
<h2>The Default State</h2>
<p>Every <a href="QtQuick.Item.md">Item</a> based component has a <tt>state</tt> property and a <i>default state</i>. The default state is the empty string (<tt>&quot;&quot;</tt>) and contains all of an item's initial property values. The default state is useful for managing property values before state changes. Setting the <tt>state</tt> property to an empty string will load the default state.</p>
<h2>The <tt>when</tt> Property</h2>
<p>For convenience, the State type has a <tt>when</tt> property that can bind to expressions to change the state whenever the bound expression evaluates to <tt>true</tt>. The <tt>when</tt> property will revert the state back to the default state when the expression evaluates to false.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">bell</span>
<span class="name">width</span>: <span class="number">75</span>; <span class="name">height</span>: <span class="number">75</span>
<span class="name">color</span>: <span class="string">&quot;yellow&quot;</span>
<span class="name">states</span>: <span class="name">State</span> {
<span class="name">name</span>: <span class="string">&quot;RINGING&quot;</span>
<span class="name">when</span>: (<span class="name">signal</span>.<span class="name">state</span> <span class="operator">==</span> <span class="string">&quot;CRITICAL&quot;</span>)
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> {<span class="name">target</span>: <span class="name">speaker</span>; <span class="name">play</span>: <span class="string">&quot;RING!&quot;</span>}
}
}</pre>
<p>The <tt>bell</tt> component will change to the <tt>RINGING</tt> state whenever the <tt>signal.state</tt> is <tt>CRITICAL</tt>.</p>
<h2>Animating State Changes</h2>
<p>State changes induce abrupt value changes. The <a href="QtQuick.Transition.md">Transition</a> type allow smoother changes during state changes. In transitions, animations and interpolation behaviors are definable. The <a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions</a> article has more information about creating state animations.</p>
<p>The States and Transitions example demonstrates how to declare a basic set of states and apply animated transitions between them.</p>
<p><a href="QtQuick.qtquick-statesanimations-behaviors.md">Using Qt Quick Behaviors with States</a> explains a common problem when using Behaviors to animate state changes.</p>
<h2>State Fast Forwarding</h2>
<p>In order for Transition to correctly animate state changes, it is sometimes necessary for the engine to fast forward and rewind a state (that is, internally set and unset the state) before it is finally applied. The process is as follows:</p>
<ol class="1">
<li>The state is fast forwarded to determine the complete set of end values.</li>
<li>The state is rewound.</li>
<li>The state is fully applied, with transitions.</li>
</ol>
<p>In some cases this may cause unintended behavior. For example, a state that changes a view's <i>model</i> or a Loader's <i>sourceComponent</i> will set these properties multiple times (to apply, rewind, and then reapply), which can be relatively expensive.</p>
<p>State fast forwarding should be considered an implementation detail, and may change in later versions.</p>
<!-- @@@qtquick-statesanimations-states.html -->
