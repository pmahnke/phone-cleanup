---
Title: QtQml.ListElement
---

# QtQml.ListElement

<span class="subtitle"></span>
<!-- $$$ListElement-brief -->
<p>Defines a data item in a ListModel More...</p>
<!-- @@@ListElement -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import QtQml.Models 2.0</tt></td></tr></table><ul>
</ul>
<!-- $$$ListElement-description -->
<h2>Detailed Description</h2>
<p>List elements are defined inside <a href="QtQml.ListModel.md">ListModel</a> definitions, and represent items in a list that will be displayed using ListView or Repeater items.</p>
<p>List elements are defined like other QML elements except that they contain a collection of <i>role</i> definitions instead of properties. Using the same syntax as property definitions, roles both define how the data is accessed and include the data itself.</p>
<p>The names used for roles must begin with a lower-case letter and should be common to all elements in a given model. Values must be simple constants; either strings (quoted and optionally within a call to QT_TR_NOOP), boolean values (true, false), numbers, or enumeration values (such as AlignText.AlignHCenter).</p>
<h2>Referencing Roles</h2>
<p>The role names are used by delegates to obtain data from list elements. Each role name is accessible in the delegate's scope, and refers to the corresponding role in the current element. Where a role name would be ambiguous to use, it can be accessed via the model property (e.g&#x2e;, <tt>model.cost</tt> instead of <tt>cost</tt>).</p>
<h2>Example Usage</h2>
<p>The following model defines a series of list elements, each of which contain &quot;name&quot; and &quot;cost&quot; roles and their associated values.</p>
<pre class="qml"><span class="type"><a href="QtQml.ListModel.md">ListModel</a></span> {
<span class="name">id</span>: <span class="name">fruitModel</span>
<span class="type">ListElement</span> {
<span class="name">name</span>: <span class="string">&quot;Apple&quot;</span>
<span class="name">cost</span>: <span class="number">2.45</span>
}
<span class="type">ListElement</span> {
<span class="name">name</span>: <span class="string">&quot;Orange&quot;</span>
<span class="name">cost</span>: <span class="number">3.25</span>
}
<span class="type">ListElement</span> {
<span class="name">name</span>: <span class="string">&quot;Banana&quot;</span>
<span class="name">cost</span>: <span class="number">1.95</span>
}
}</pre>
<p>The delegate obtains the name and cost for each element by simply referring to <tt>name</tt> and <tt>cost</tt>:</p>
<pre class="qml"><span class="type">ListView</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">model</span>: <span class="name">fruitModel</span>
<span class="name">delegate</span>: <span class="name">Row</span> {
<span class="type">Text</span> { <span class="name">text</span>: <span class="string">&quot;Fruit: &quot;</span> <span class="operator">+</span> <span class="name">name</span> }
<span class="type">Text</span> { <span class="name">text</span>: <span class="string">&quot;Cost: $&quot;</span> <span class="operator">+</span> <span class="name">cost</span> }
}
}</pre>
<p><b>See also </b><a href="QtQml.ListModel.md">ListModel</a>.</p>
<!-- @@@ListElement -->
