---
Title: Ubuntu.Components.ListItems.ThinDivider
---

# Ubuntu.Components.ListItems.ThinDivider

<span class="subtitle"></span>
<!-- $$$ThinDivider-brief -->
<p>Narrow line used as a divider between ListItems. More...</p>
<!-- @@@ThinDivider -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Components.ListItems 1.0</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Rectangle.md">Rectangle</a></p>
</td></tr></table><ul>
</ul>
<!-- $$$ThinDivider-description -->
<h2>Detailed Description</h2>
<p>ListItems will usually include this line at the bottom of the item to give a visually pleasing list of items. But a divider line can also be inserted manually using this component. <b>This component is under heavy development.</b></p>
<p>Examples:</p>
<pre class="qml">import Ubuntu.Components.ListItems 1.0 as ListItem
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">width</span>: <span class="number">250</span>
<span class="type">ListItem</span>.ThinDivider {} <span class="comment">//can be used as header for list</span>
<span class="type">ListItem</span>.Standard {
<span class="name">text</span>: <span class="string">&quot;List Item without thin divider line&quot;</span>
<span class="name">showDivider</span>: <span class="number">false</span>
}
<span class="type">ListItem</span>.ThinDivider {} <span class="comment">// manually inserted divider line</span>
<span class="type">ListItem</span>.Standard {
<span class="name">text</span>: <span class="string">&quot;ListItem with thin divider line&quot;</span>
}
}</pre>
<!-- @@@ThinDivider -->