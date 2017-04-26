---
Title: Ubuntu.Components.OrientationHelper
---

# Ubuntu.Components.OrientationHelper

<span class="subtitle"></span>
<!-- $$$OrientationHelper-brief -->
<p>The OrientationHelper automatically rotates its children following the orientation of the device. More...</p>
<!-- @@@OrientationHelper -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Components 1.1</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.Popups.PopupBase.md">PopupBase</a>.</p>
</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#anchorToKeyboard-prop">anchorToKeyboard</a></b></b> : bool<tt> (preliminary)</tt></li>
<li class="fn"><b><b><a href="#automaticOrientation-prop">automaticOrientation</a></b></b> : bool<tt> (preliminary)</tt></li>
<li class="fn"><b><b><a href="#orientationAngle-prop">orientationAngle</a></b></b> : int</li>
<li class="fn"><b><b><a href="#rotating-prop">rotating</a></b></b> : alias<tt> (preliminary)</tt></li>
<li class="fn"><b><b><a href="#transitionEnabled-prop">transitionEnabled</a></b></b> : bool<tt> (preliminary)</tt></li>
</ul>
<!-- $$$OrientationHelper-description -->
<h2>Detailed Description</h2>
<p>Any Item placed inside an Orientation Helper will be automatically rotated following the orientation of the device.</p>
<p>Note that OrientationHelper is always filling its parent (anchors.parent: fill).</p>
<p>Example:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="type">OrientationHelper</span> {
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="string">&quot;Automatically rotated&quot;</span>
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;Automatically rotated&quot;</span>
}
}
}</pre>
<!-- @@@OrientationHelper -->
<h2>Property Documentation</h2>
<!-- $$$anchorToKeyboard -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">anchorToKeyboard</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td></tr></table><p><b>This QML property is under development and is subject to change.</b></p>
<p>The property holds if the <a href="index.html">OrientationHelper</a> should automatically resize the contents when the input method appears</p>
<p>The default value is false.</p>
<!-- @@@anchorToKeyboard -->
<br/>
<!-- $$$automaticOrientation -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">automaticOrientation</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td></tr></table><p><b>This QML property is under development and is subject to change.</b></p>
<p>Sets whether it will be automatically rotating when the device is.</p>
<p>The default value is true.</p>
<!-- @@@automaticOrientation -->
<br/>
<!-- $$$orientationAngle -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">orientationAngle</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-int.html">int</a></span></p></td></tr></table><p>Calculates the current orientation angle.</p>
<!-- @@@orientationAngle -->
<br/>
<!-- $$$rotating -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">rotating</span> : <span class="type">alias</span></p></td></tr></table><p><b>This QML property is under development and is subject to change.</b></p>
<p>Exposes whether the orientationTransition is running.</p>
<!-- @@@rotating -->
<br/>
<!-- $$$transitionEnabled -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">transitionEnabled</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td></tr></table><p><b>This QML property is under development and is subject to change.</b></p>
<p>Sets whether the rotation transition is performed.</p>
<p>The default value is true.</p>
<!-- @@@transitionEnabled -->
<br/>
