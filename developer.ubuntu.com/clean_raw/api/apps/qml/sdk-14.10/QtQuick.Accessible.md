---
Title: QtQuick.Accessible
---

# QtQuick.Accessible

<span class="subtitle"></span>
<!-- $$$Accessible-brief -->
<p>Enables accessibility of QML items More...</p>
<!-- @@@Accessible -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import QtQuick 2.2</tt></td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#description-prop">description</a></b></b> : string</li>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="#role-prop">role</a></b></b> : enumeration</li>
</ul>
<!-- $$$Accessible-description -->
<h2>Detailed Description</h2>
<p>This class is part of Accessibility for Qt Quick Applications.</p>
<p>Items the user interacts with or that give information to the user need to expose their information in a semantic way. Then assistive tools can make use of that information to enable users to interact with the application in various ways.</p>
<p>This enables Qt Quick applications to be used with screen-readers for example.</p>
<p>The most important properties to set are <a href="#name-prop">name</a> and <a href="#role-prop">role</a>.</p>
<p><b>See also </b>Accessibility.</p>
<!-- @@@Accessible -->
<h2>Property Documentation</h2>
<!-- $$$description -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">description</span> : <span class="type">string</span></p></td></tr></table><p>This property sets an accessible description. Similar to the name it describes the item. The description can be a little more verbose and tell what the item does, for example the functionallity of the button it describes.</p>
<!-- @@@description -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>This property sets an accessible name. For a button for example, this should have a binding to its text. In general this property should be set to a simple and concise but human readable name. Do not include the type of control you want to represent but just the name.</p>
<!-- @@@name -->
<br/>
<!-- $$$role -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">role</span> : <span class="type">enumeration</span></p></td></tr></table><p>This flags sets the semantic type of the widget. A button for example would have &quot;Button&quot; as type. The value must be one of QAccessible::Role . Example:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">myButton</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">label</span>
<span class="comment">// ...</span>
}
<span class="name">Accessible</span>.name: <span class="name">label</span>.<span class="name">text</span>
<span class="name">Accessible</span>.role: <span class="name">Accessible</span>.<span class="name">Button</span>
<span class="keyword">function</span> <span class="name">accessiblePressAction</span>() {
<span class="comment">//...</span>
}
}</pre>
<p>Some roles have special semantics. In order to implement check boxes for example a &quot;checked&quot; property is expected.</p>
<table class="generic">
<thead><tr class="qt-style"><th ><b>Role</b></th><th ><b>Expected property</b></th><th ></th></tr></thead>
<tr valign="top"><td >Button</td><td >function accessiblePressAction</td><td >Called when the button receives a press action. The implementation should visually simulate a button click and perform the button action.</td></tr>
<tr valign="top"><td >CheckBox, Radiobutton</td><td >checked</td><td >The check state of the check box. Updated on Press, Check and Uncheck actions.</td></tr>
<tr valign="top"><td >Slider, SpinBox, Dial, ScrollBar</td><td >value, minimumValue, maximumValue, stepSize</td><td >value will be updated on increase and decrase actions, in accordance with the other properties</td></tr>
</table>
<!-- @@@role -->
<br/>
