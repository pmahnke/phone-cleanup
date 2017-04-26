---
Title: Ubuntu.Components.FontUtils
---

# Ubuntu.Components.FontUtils

<span class="subtitle"></span>
<!-- $$$FontUtils-brief -->
<p>FontUtils is a context property, which provides utility functions for font manipulations. More...</p>
<!-- @@@FontUtils -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Components 1.1</tt></td></tr></table><ul>
</ul>
<h2>Methods</h2>
<ul>
<li class="fn">real <b><b><a href="#modularScale-method">modularScale</a></b></b>(string <i>size</i>)</li>
<li class="fn">real <b><b><a href="#sizeToPixels-method">sizeToPixels</a></b></b>(string <i>size</i>)</li>
</ul>
<!-- $$$FontUtils-description -->
<h2>Detailed Description</h2>
<p>FontUtils cannot be instantiated and it is already available as a context property, i.e&#x2e; 'FontUtils' is an instance that can be used from anywhere in the code.</p>
<p>Example of a Label implementation which uses the default base scale for the font size:</p>
<pre class="qml">import QtQuick 2.0
import Ubuntu.Components 1.1
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
property <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span> <span class="name">fontSize</span>: <span class="string">&quot;medium&quot;</span>
<span class="name">font</span>.pixelSize: <span class="name">FontUtils</span>.<span class="name">sizeToPixels</span>(<span class="name">fontSize</span>)
}</pre>
<p>Another example of a custom text input component exposing a fontSize property and a base font unit size to scale its font:</p>
<pre class="qml">import QtQuick 2.0
import Ubuntu.Components 1.1
<span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
property <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span> <span class="name">fontSize</span>: <span class="string">&quot;small&quot;</span>
property <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-int.html">int</a></span> <span class="name">baseFontUnits</span>: <span class="name">units</span>.<span class="name">dp</span>(<span class="number">20</span>)
<span class="name">font</span>.pixelSize: <span class="name">FontUtils</span>.<span class="name">modularScale</span>(<span class="name">fontSize</span>) <span class="operator">*</span> <span class="name">units</span>.<span class="name">dp</span>(<span class="name">baseFontUnits</span>)
}</pre>
<!-- @@@FontUtils -->
<h2>Method Documentation</h2>
<!-- $$$modularScale -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span> <span class="name">modularScale</span>(<span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span><i> size</i>)</p></td></tr></table><p>The function returns the number interpretation of a given font scale. The scale can have one of the following values:</p>
<ul>
<li><b>xx-small</b></li>
<li><b>x-small</b></li>
<li><b>small</b></li>
<li><b>medium</b></li>
<li><b>large</b></li>
<li><b>x-large</b></li>
</ul>
<!-- @@@modularScale -->
<br/>
<!-- $$$sizeToPixels -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-real.html">real</a></span> <span class="name">sizeToPixels</span>(<span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span><i> size</i>)</p></td></tr></table><p>The function calculates the pixel size of a given scale. The size scale can be one of the strings specified at <a href="#modularScale-method">modularScale</a> function. On failure returns 0.</p>
<!-- @@@sizeToPixels -->
<br/>
