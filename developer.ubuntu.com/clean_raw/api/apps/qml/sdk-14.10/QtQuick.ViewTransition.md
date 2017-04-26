---
Title: QtQuick.ViewTransition
---

# QtQuick.ViewTransition

<span class="subtitle"></span>
<!-- $$$ViewTransition-brief -->
<p>Specifies items under transition in a view More...</p>
<!-- @@@ViewTransition -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import QtQuick 2.2</tt></td></tr></table><ul>
</ul>
<h2>Attached Properties</h2>
<ul>
<li class="fn"><b><b><a href="#destination-prop">destination</a></b></b> : list</li>
<li class="fn"><b><b><a href="#index-prop">index</a></b></b> : list</li>
<li class="fn"><b><b><a href="#item-prop">item</a></b></b> : list</li>
<li class="fn"><b><b><a href="#targetIndexes-prop">targetIndexes</a></b></b> : list</li>
<li class="fn"><b><b><a href="#targetItems-prop">targetItems</a></b></b> : list</li>
</ul>
<!-- $$$ViewTransition-description -->
<h2>Detailed Description</h2>
<p>With <a href="QtQuick.ListView.md">ListView</a> and <a href="QtQuick.GridView.md">GridView</a>, it is possible to specify transitions that should be applied whenever the items in the view change as a result of modifications to the view's model. They both have the following properties that can be set to the appropriate transitions to be run for various operations:</p>
<ul>
<li><tt>populate</tt> - the transition to apply to the items created initially for the view, or when the model changes</li>
<li><tt>add</tt> - the transition to apply to items that are added to the view after it has been created</li>
<li><tt>remove</tt> - the transition to apply to items that are removed from the view</li>
<li><tt>move</tt> - the transition to apply to items that are moved within the view (i.e&#x2e; as a result of a move operation in the model)</li>
<li><tt>displaced</tt> - the generic transition to be applied to any items that are displaced by an add, move or remove operation</li>
<li><tt>addDisplaced</tt>, <tt>removeDisplaced</tt> and <tt>moveDisplaced</tt> - the transitions to be applied when items are displaced by add, move, or remove operations, respectively (these override the generic displaced transition if specified)</li>
</ul>
<p>For the <a href="QtQuick.Row.md">Row</a>, <a href="QtQuick.Column.md">Column</a>, <a href="QtQuick.Grid.md">Grid</a> and <a href="QtQuick.Flow.md">Flow</a> positioner types, which operate with collections of child items rather than data models, the following properties are used instead:</p>
<ul>
<li><tt>populate</tt> - the transition to apply to items that have been added to the positioner at the time of its creation</li>
<li><tt>add</tt> - the transition to apply to items that are added to or reparented to the positioner, or items that have become <a href="QtQuick.Item.md#visible-prop">visible</a></li>
<li><tt>move</tt> - the transition to apply to items that have moved within the positioner, including when they are displaced due to the addition or removal of other items, or when items are otherwise rearranged within the positioner, or when items are repositioned due to the resizing of other items in the positioner</li>
</ul>
<p>View transitions have access to a ViewTransition attached property that provides details of the items that are under transition and the operation that triggered the transition. Since view transitions are run once per item, these details can be used to customize each transition for each individual item.</p>
<p>The ViewTransition attached property provides the following properties specific to the item to which the transition is applied:</p>
<ul>
<li>ViewTransition.item - the item that is under transition</li>
<li>ViewTransition.index - the index of this item</li>
<li>ViewTransition.destination - the (x,y) point to which this item is moving for the relevant view operation</li>
</ul>
<p>In addition, ViewTransition provides properties specific to the items which are the target of the operation that triggered the transition:</p>
<ul>
<li>ViewTransition.<a href="#targetIndexes-prop">targetIndexes</a> - the indexes of the target items</li>
<li>ViewTransition.<a href="#targetItems-prop">targetItems</a> - the target items themselves</li>
</ul>
<p>(Note that for the <a href="QtQuick.Row.md">Row</a>, <a href="QtQuick.Column.md">Column</a>, <a href="QtQuick.Grid.md">Grid</a> and <a href="QtQuick.Flow.md">Flow</a> positioner types, the <tt>move</tt> transition only provides these two additional details when the transition is triggered by the addition of items to a positioner.)</p>
<p>View transitions can be written without referring to any of the attributes listed above. These attributes merely provide extra details that are useful for customising view transitions.</p>
<p>Following is an introduction to view transitions and the ways in which the ViewTransition attached property can be used to augment view transitions.</p>
<h3>View transitions: a simple example</h3>
<p>Here is a basic example of the use of view transitions. The view below specifies transitions for the <tt>add</tt> and <tt>displaced</tt> properties, which will be run when items are added to the view:</p>
<pre class="qml"><span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">width</span>: <span class="number">240</span>; <span class="name">height</span>: <span class="number">320</span>
<span class="name">model</span>: <span class="name">ListModel</span> {}
<span class="name">delegate</span>: <span class="name">Rectangle</span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">30</span>
<span class="name">border</span>.width: <span class="number">1</span>
<span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="name">name</span>
}
}
<span class="name">add</span>: <span class="name">Transition</span> {
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">property</span>: <span class="string">&quot;opacity&quot;</span>; <span class="name">from</span>: <span class="number">0</span>; <span class="name">to</span>: <span class="number">1.0</span>; <span class="name">duration</span>: <span class="number">400</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">property</span>: <span class="string">&quot;scale&quot;</span>; <span class="name">from</span>: <span class="number">0</span>; <span class="name">to</span>: <span class="number">1.0</span>; <span class="name">duration</span>: <span class="number">400</span> }
}
<span class="name">displaced</span>: <span class="name">Transition</span> {
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">duration</span>: <span class="number">400</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutBounce</span> }
}
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">Keys</span>.onSpacePressed: <span class="name">model</span>.<span class="name">insert</span>(<span class="number">0</span>, { &quot;name&quot;: <span class="string">&quot;Item &quot;</span> <span class="operator">+</span> <span class="name">model</span>.<span class="name">count</span> })
}</pre>
<p>When the space key is pressed, adding an item to the model, the new item will fade in and increase in scale over 400 milliseconds as it is added to the view. Also, any item that is displaced by the addition of a new item will animate to its new position in the view over 400 milliseconds, as specified by the <tt>displaced</tt> transition.</p>
<p>If five items were inserted in succession at index 0, the effect would be this:</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/600fd369-e352-44aa-adf4-d6a2c8156d8b-../QtQuick.ViewTransition/images/viewtransitions-basic.gif" alt="" /></p><p>Notice that the <a href="QtQuick.NumberAnimation.md">NumberAnimation</a> objects above do not need to specify a <tt>target</tt> to animate the appropriate item. Also, the <a href="QtQuick.NumberAnimation.md">NumberAnimation</a> in the <tt>addTransition</tt> does not need to specify the <tt>to</tt> value to move the item to its correct position in the view. This is because the view implicitly sets the <tt>target</tt> and <tt>to</tt> values with the correct item and final item position values if these properties are not explicitly defined.</p>
<p>At its simplest, a view transition may just animate an item to its new position following a view operation, just as the <tt>displaced</tt> transition does above, or animate some item properties, as in the <tt>add</tt> transition above. Additionally, a view transition may make use of the ViewTransition attached property to customize animation behavior for different items. Following are some examples of how this can be achieved.</p>
<h3>Using the ViewTransition attached property</h3>
<p>As stated, the various ViewTransition properties provide details specific to the individual item being transitioned as well as the operation that triggered the transition. In the animation above, five items are inserted in succession at index 0. When the fifth and final insertion takes place, adding &quot;Item 4&quot; to the view, the <tt>add</tt> transition is run once (for the inserted item) and the <tt>displaced</tt> transition is run four times (once for each of the four existing items in the view).</p>
<p>At this point, if we examined the <tt>displaced</tt> transition that was run for the bottom displaced item (&quot;Item 0&quot;), the ViewTransition property values provided to this transition would be as follows:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Property</th><th >Value</th><th >Explanation</th></tr></thead>
<tr valign="top"><td >ViewTransition.item</td><td >&quot;Item 0&quot; delegate instance</td><td >The &quot;Item 0&quot; <a href="QtQuick.Rectangle.md">Rectangle</a> object itself</td></tr>
<tr valign="top"><td >ViewTransition.index</td><td ><tt>int</tt> value of 4</td><td >The index of &quot;Item 0&quot; within the model following the add operation</td></tr>
<tr valign="top"><td >ViewTransition.destination</td><td >point value of (0, 120)</td><td >The position that &quot;Item 0&quot; is moving to</td></tr>
<tr valign="top"><td >ViewTransition.<a href="#targetIndexes-prop">targetIndexes</a></td><td ><tt>int</tt> array, just contains the integer &quot;0&quot; (zero)</td><td >The index of &quot;Item 4&quot;, the new item added to the view</td></tr>
<tr valign="top"><td >ViewTransition.<a href="#targetItems-prop">targetItems</a></td><td >object array, just contains the &quot;Item 4&quot; delegate instance</td><td >The &quot;Item 4&quot; <a href="QtQuick.Rectangle.md">Rectangle</a> object - the new item added to the view</td></tr>
</table>
<p>The ViewTransition.<a href="#targetIndexes-prop">targetIndexes</a> and ViewTransition.<a href="#targetItems-prop">targetItems</a> lists provide the items and indexes of all delegate instances that are the targets of the relevant operation. For an add operation, these are all the items that are added into the view; for a remove, these are all the items removed from the view, and so on. (Note these lists will only contain references to items that have been created within the view or its cached items; targets that are not within the visible area of the view or within the item cache will not be accessible.)</p>
<p>So, while the ViewTransition.item, ViewTransition.index and ViewTransition.destination values vary for each individual transition that is run, the ViewTransition.<a href="#targetIndexes-prop">targetIndexes</a> and ViewTransition.<a href="#targetItems-prop">targetItems</a> values are the same for every <tt>add</tt> and <tt>displaced</tt> transition that is triggered by a particular add operation.</p>
<h4>Delaying animations based on index</h4>
<p>Since each view transition is run once for each item affected by the transition, the ViewTransition properties can be used within a transition to define custom behavior for each item's transition. For example, the <a href="QtQuick.ListView.md">ListView</a> in the previous example could use this information to create a ripple-type effect on the movement of the displaced items.</p>
<p>This can be achieved by modifying the <tt>displaced</tt> transition so that it delays the animation of each displaced item based on the difference between its index (provided by ViewTransition.index) and the first removed index (provided by ViewTransition.<a href="#targetIndexes-prop">targetIndexes</a>):</p>
<pre class="qml">    <span class="name">displaced</span>: <span class="name">Transition</span> {
<span class="name">id</span>: <span class="name">dispTrans</span>
<span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
<span class="type"><a href="QtQuick.PauseAnimation.md">PauseAnimation</a></span> {
<span class="name">duration</span>: (<span class="name">dispTrans</span>.<span class="name">ViewTransition</span>.<span class="name">index</span> <span class="operator">-</span>
<span class="name">dispTrans</span>.<span class="name">ViewTransition</span>.<span class="name">targetIndexes</span>[<span class="number">0</span>]) <span class="operator">*</span> <span class="number">100</span>
}
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">duration</span>: <span class="number">400</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutBounce</span> }
}
}</pre>
<p>Each displaced item delays its animation by an additional 100 milliseconds, producing a subtle ripple-type effect when items are displaced by the add, like this:</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/2b2a0de8-b1ab-4504-aaf3-02d054ead74d-../QtQuick.ViewTransition/images/viewtransitions-delayedbyindex.gif" alt="" /></p>
<h4>Animating items to intermediate positions</h4>
<p>The ViewTransition.item property gives a reference to the item to which the transition is being applied. This can be used to access any of the item's attributes, custom <tt>property</tt> values, and so on.</p>
<p>Below is a modification of the <tt>displaced</tt> transition from the previous example. It adds a <a href="QtQuick.ParallelAnimation.md">ParallelAnimation</a> with nested <a href="QtQuick.NumberAnimation.md">NumberAnimation</a> objects that reference ViewTransition.item to access each item's <tt>x</tt> and <tt>y</tt> values at the start of their transitions. This allows each item to animate to an intermediate position relative to its starting point for the transition, before animating to its final position in the view:</p>
<pre class="qml">    <span class="name">displaced</span>: <span class="name">Transition</span> {
<span class="name">id</span>: <span class="name">dispTrans</span>
<span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
<span class="type"><a href="QtQuick.PauseAnimation.md">PauseAnimation</a></span> {
<span class="name">duration</span>: (<span class="name">dispTrans</span>.<span class="name">ViewTransition</span>.<span class="name">index</span> <span class="operator">-</span>
<span class="name">dispTrans</span>.<span class="name">ViewTransition</span>.<span class="name">targetIndexes</span>[<span class="number">0</span>]) <span class="operator">*</span> <span class="number">100</span>
}
<span class="type"><a href="QtQuick.ParallelAnimation.md">ParallelAnimation</a></span> {
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {
<span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="name">dispTrans</span>.<span class="name">ViewTransition</span>.<span class="name">item</span>.<span class="name">x</span> <span class="operator">+</span> <span class="number">20</span>
<span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutQuad</span>
}
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {
<span class="name">property</span>: <span class="string">&quot;y&quot;</span>; <span class="name">to</span>: <span class="name">dispTrans</span>.<span class="name">ViewTransition</span>.<span class="name">item</span>.<span class="name">y</span> <span class="operator">+</span> <span class="number">50</span>
<span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutQuad</span>
}
}
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">duration</span>: <span class="number">500</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutBounce</span> }
}
}</pre>
<p>Now, a displaced item will first move to a position of (20, 50) relative to its starting position, and then to its final, correct position in the view:</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/68b43e8a-ab40-49e3-8f37-c74d91788654-../QtQuick.ViewTransition/images/viewtransitions-intermediatemove.gif" alt="" /></p><p>Since the final <a href="QtQuick.NumberAnimation.md">NumberAnimation</a> does not specify a <tt>to</tt> value, the view implicitly sets this value to the item's final position in the view, and so this last animation will move this item to the correct place. If the transition requires the final position of the item for some calculation, this is accessible through ViewTransition.destination.</p>
<p>Instead of using multiple NumberAnimations, you could use a <a href="QtQuick.PathAnimation.md">PathAnimation</a> to animate an item over a curved path. For example, the <tt>add</tt> transition in the previous example could be augmented with a <a href="QtQuick.PathAnimation.md">PathAnimation</a> as follows: to animate newly added items along a path:</p>
<pre class="qml">    <span class="name">add</span>: <span class="name">Transition</span> {
<span class="name">id</span>: <span class="name">addTrans</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">property</span>: <span class="string">&quot;opacity&quot;</span>; <span class="name">from</span>: <span class="number">0</span>; <span class="name">to</span>: <span class="number">1.0</span>; <span class="name">duration</span>: <span class="number">400</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">property</span>: <span class="string">&quot;scale&quot;</span>; <span class="name">from</span>: <span class="number">0</span>; <span class="name">to</span>: <span class="number">1.0</span>; <span class="name">duration</span>: <span class="number">400</span> }
<span class="type"><a href="QtQuick.PathAnimation.md">PathAnimation</a></span> {
<span class="name">duration</span>: <span class="number">1000</span>
<span class="name">path</span>: <span class="name">Path</span> {
<span class="name">startX</span>: <span class="name">addTrans</span>.<span class="name">ViewTransition</span>.<span class="name">destination</span>.<span class="name">x</span> <span class="operator">+</span> <span class="number">200</span>
<span class="name">startY</span>: <span class="name">addTrans</span>.<span class="name">ViewTransition</span>.<span class="name">destination</span>.<span class="name">y</span> <span class="operator">+</span> <span class="number">200</span>
<span class="type"><a href="QtQuick.PathCurve.md">PathCurve</a></span> { <span class="name">relativeX</span>: -<span class="number">100</span>; <span class="name">relativeY</span>: -<span class="number">50</span> }
<span class="type"><a href="QtQuick.PathCurve.md">PathCurve</a></span> { <span class="name">relativeX</span>: <span class="number">50</span>; <span class="name">relativeY</span>: -<span class="number">150</span> }
<span class="type"><a href="QtQuick.PathCurve.md">PathCurve</a></span> {
<span class="name">x</span>: <span class="name">addTrans</span>.<span class="name">ViewTransition</span>.<span class="name">destination</span>.<span class="name">x</span>
<span class="name">y</span>: <span class="name">addTrans</span>.<span class="name">ViewTransition</span>.<span class="name">destination</span>.<span class="name">y</span>
}
}
}
}</pre>
<p>This animates newly added items along a path. Notice that each path is specified relative to each item's final destination point, so that items inserted at different indexes start their paths from different positions:</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/d70397d2-2e8c-41cc-abef-9f3b060dca56-../QtQuick.ViewTransition/images/viewtransitions-pathanim.gif" alt="" /></p>
<h3>Handling interrupted animations</h3>
<p>A view transition may be interrupted at any time if a different view transition needs to be applied while the original transition is in progress. For example, say Item A is inserted at index 0 and undergoes an &quot;add&quot; transition; then, Item B is inserted at index 0 in quick succession before Item A's transition has finished. Since Item B is inserted before Item A, it will displace Item A, causing the view to interrupt Item A's &quot;add&quot; transition mid-way and start a &quot;displaced&quot; transition on Item A instead.</p>
<p>For simple animations that simply animate an item's movement to its final destination, this interruption is unlikely to require additional consideration. However, if a transition changes other properties, this interruption may cause unwanted side effects. Consider the first example on this page, repeated below for convenience:</p>
<pre class="qml"><span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">width</span>: <span class="number">240</span>; <span class="name">height</span>: <span class="number">320</span>
<span class="name">model</span>: <span class="name">ListModel</span> {}
<span class="name">delegate</span>: <span class="name">Rectangle</span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">30</span>
<span class="name">border</span>.width: <span class="number">1</span>
<span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="name">name</span>
}
}
<span class="name">add</span>: <span class="name">Transition</span> {
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">property</span>: <span class="string">&quot;opacity&quot;</span>; <span class="name">from</span>: <span class="number">0</span>; <span class="name">to</span>: <span class="number">1.0</span>; <span class="name">duration</span>: <span class="number">400</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">property</span>: <span class="string">&quot;scale&quot;</span>; <span class="name">from</span>: <span class="number">0</span>; <span class="name">to</span>: <span class="number">1.0</span>; <span class="name">duration</span>: <span class="number">400</span> }
}
<span class="name">displaced</span>: <span class="name">Transition</span> {
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">duration</span>: <span class="number">400</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutBounce</span> }
}
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">Keys</span>.onSpacePressed: <span class="name">model</span>.<span class="name">insert</span>(<span class="number">0</span>, { &quot;name&quot;: <span class="string">&quot;Item &quot;</span> <span class="operator">+</span> <span class="name">model</span>.<span class="name">count</span> })
}</pre>
<p>If multiple items are added in rapid succession, without waiting for a previous transition to finish, this is the result:</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/1df9bc51-e574-401e-8f12-d8e3addb9e6b-../QtQuick.ViewTransition/images/viewtransitions-interruptedbad.gif" alt="" /></p><p>Each newly added item undergoes an <tt>add</tt> transition, but before the transition can finish, another item is added, displacing the previously added item. Because of this, the <tt>add</tt> transition on the previously added item is interrupted and a <tt>displaced</tt> transition is started on the item instead. Due to the interruption, the <tt>opacity</tt> and <tt>scale</tt> animations have not completed, thus producing items with opacity and scale that are below 1.0&#x2e;</p>
<p>To fix this, the <tt>displaced</tt> transition should additionally ensure the item properties are set to the end values specified in the <tt>add</tt> transition, effectively resetting these values whenever an item is displaced. In this case, it means setting the item opacity and scale to 1.0:</p>
<pre class="qml">    <span class="name">displaced</span>: <span class="name">Transition</span> {
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">duration</span>: <span class="number">400</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutBounce</span> }
<span class="comment">// ensure opacity and scale values return to 1.0</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">property</span>: <span class="string">&quot;opacity&quot;</span>; <span class="name">to</span>: <span class="number">1.0</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">property</span>: <span class="string">&quot;scale&quot;</span>; <span class="name">to</span>: <span class="number">1.0</span> }
}</pre>
<p>Now, when an item's <tt>add</tt> transition is interrupted, its opacity and scale are animated to 1.0 upon displacement, avoiding the erroneous visual effects from before:</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/82bbe418-5703-433d-9224-16850cc10266-../QtQuick.ViewTransition/images/viewtransitions-interruptedgood.gif" alt="" /></p><p>The same principle applies to any combination of view transitions. An added item may be moved before its add transition finishes, or a moved item may be removed before its moved transition finishes, and so on; so, the rule of thumb is that every transition should handle the same set of properties.</p>
<h3>Restrictions regarding ScriptAction</h3>
<p>When a view transition is initialized, any property bindings that refer to the ViewTransition attached property are evaluated in preparation for the transition. Due to the nature of the internal construction of a view transition, the attributes of the ViewTransition attached property are only valid for the relevant item when the transition is initialized, and may not be valid when the transition is actually run.</p>
<p>Therefore, a <a href="QtQuick.ScriptAction.md">ScriptAction</a> within a view transition should not refer to the ViewTransition attached property, as it may not refer to the expected values at the time that the <a href="QtQuick.ScriptAction.md">ScriptAction</a> is actually invoked. Consider the following example:</p>
<pre class="qml"><span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">width</span>: <span class="number">240</span>; <span class="name">height</span>: <span class="number">320</span>
<span class="name">model</span>: <span class="name">ListModel</span> {
<span class="name">Component</span>.onCompleted: {
<span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span>=<span class="number">0</span>; <span class="name">i</span><span class="operator">&lt;</span><span class="number">8</span>; i++)
<span class="name">append</span>({&quot;name&quot;: <span class="name">i</span>})
}
}
<span class="name">delegate</span>: <span class="name">Rectangle</span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">30</span>
<span class="name">border</span>.width: <span class="number">1</span>
<span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="name">name</span>
}
<span class="name">objectName</span>: <span class="name">name</span>
}
<span class="name">move</span>: <span class="name">Transition</span> {
<span class="name">id</span>: <span class="name">moveTrans</span>
<span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
<span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">property</span>: <span class="string">&quot;color&quot;</span>; <span class="name">to</span>: <span class="string">&quot;yellow&quot;</span>; <span class="name">duration</span>: <span class="number">400</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">duration</span>: <span class="number">800</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutBack</span> }
<span class="type"><a href="QtQuick.ScriptAction.md">ScriptAction</a></span> { <span class="name">script</span>: <span class="name">moveTrans</span>.<span class="name">ViewTransition</span>.<span class="name">item</span>.<span class="name">color</span> <span class="operator">=</span> <span class="string">&quot;lightsteelblue&quot;</span> }
}
}
<span class="name">displaced</span>: <span class="name">Transition</span> {
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">duration</span>: <span class="number">400</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutBounce</span> }
}
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">Keys</span>.onSpacePressed: <span class="name">model</span>.<span class="name">move</span>(<span class="number">5</span>, <span class="number">1</span>, <span class="number">3</span>)
}</pre>
<p>When the space key is pressed, three items are moved from index 5 to index 1. For each moved item, the <tt>moveTransition</tt> sequence presumably animates the item's color to &quot;yellow&quot;, then animates it to its final position, then changes the item color back to &quot;lightsteelblue&quot; using a <a href="QtQuick.ScriptAction.md">ScriptAction</a>. However, when run, the transition does not produce the intended result:</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/c222da12-cc1b-491f-ad29-12632a0c3000-../QtQuick.ViewTransition/images/viewtransitions-scriptactionbad.gif" alt="" /></p><p>Only the last moved item is returned to the &quot;lightsteelblue&quot; color; the others remain yellow. This is because the <a href="QtQuick.ScriptAction.md">ScriptAction</a> is not run until after the transition has already been initialized, by which time the ViewTransition.item value has changed to refer to a different item; the item that the script had intended to refer to is not the one held by ViewTransition.item at the time the <a href="QtQuick.ScriptAction.md">ScriptAction</a> is actually invoked.</p>
<p>In this instance, to avoid this issue, the view could set the property using a <a href="QtQuick.PropertyAction.md">PropertyAction</a> instead:</p>
<pre class="qml">    <span class="name">move</span>: <span class="name">Transition</span> {
<span class="name">id</span>: <span class="name">moveTrans</span>
<span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
<span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">property</span>: <span class="string">&quot;color&quot;</span>; <span class="name">to</span>: <span class="string">&quot;yellow&quot;</span>; <span class="name">duration</span>: <span class="number">400</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">duration</span>: <span class="number">800</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutBack</span> }
<span class="comment">//ScriptAction { script: moveTrans.ViewTransition.item.color = &quot;lightsteelblue&quot; } BAD!</span>
<span class="type"><a href="QtQuick.PropertyAction.md">PropertyAction</a></span> { <span class="name">property</span>: <span class="string">&quot;color&quot;</span>; <span class="name">value</span>: <span class="string">&quot;lightsteelblue&quot;</span> }
}
}</pre>
<p>When the transition is initialized, the <a href="QtQuick.PropertyAction.md">PropertyAction</a> <tt>target</tt> will be set to the respective ViewTransition.item for the transition and will later run with the correct item target as expected.</p>
<!-- @@@ViewTransition -->
<h2>Attached Property Documentation</h2>
<!-- $$$destination -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">.destination</span> : <span class="type">list</span></p></td></tr></table><p>This attached property holds the final destination position for the transitioned item within the view.</p>
<p>This property value is a point with <tt>x</tt> and <tt>y</tt> properties.</p>
<!-- @@@destination -->
<br/>
<!-- $$$index -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">.index</span> : <span class="type">list</span></p></td></tr></table><p>This attached property holds the index of the item that is being transitioned.</p>
<p>Note that if the item is being moved, this property holds the index that the item is moving to, not from.</p>
<!-- @@@index -->
<br/>
<!-- $$$item -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">.item</span> : <span class="type">list</span></p></td></tr></table><p>This attached property holds the item that is being transitioned.</p>
<p><b>Warning:</b> This item should not be kept and referred to outside of the transition as it may become invalid as the view changes.</p>
<!-- @@@item -->
<br/>
<!-- $$$targetIndexes -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">.targetIndexes</span> : <span class="type">list</span></p></td></tr></table><p>This attached property holds a list of the indexes of the items in view that are the target of the relevant operation.</p>
<p>The targets are the items that are the subject of the operation. For an add operation, these are the items being added; for a remove, these are the items being removed; for a move, these are the items being moved.</p>
<p>For example, if the transition was triggered by an insert operation that added two items at index 1 and 2, this targetIndexes list would have the value [1,2].</p>
<p><b>Note: </b>The targetIndexes list only contains the indexes of items that are actually in view, or will be in the view once the relevant operation completes.</p><p><b>See also </b><a href="#targetItems-prop">QtQuick::ViewTransition::targetItems</a>.</p>
<!-- @@@targetIndexes -->
<br/>
<!-- $$$targetItems -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">.targetItems</span> : <span class="type">list</span></p></td></tr></table><p>This attached property holds the list of items in view that are the target of the relevant operation.</p>
<p>The targets are the items that are the subject of the operation. For an add operation, these are the items being added; for a remove, these are the items being removed; for a move, these are the items being moved.</p>
<p>For example, if the transition was triggered by an insert operation that added two items at index 1 and 2, this targetItems list would contain these two items.</p>
<p><b>Note: </b>The targetItems list only contains items that are actually in view, or will be in the view once the relevant operation completes.</p><p><b>Warning:</b> The objects in this list should not be kept and referred to outside of the transition as the items may become invalid. The targetItems are only valid when the Transition is initially created; this also means they should not be used by <a href="QtQuick.ScriptAction.md">ScriptAction</a> objects in the Transition, which are not evaluated until the transition is run.</p>
<p><b>See also </b><a href="#targetIndexes-prop">QtQuick::ViewTransition::targetIndexes</a>.</p>
<!-- @@@targetItems -->
<br/>
