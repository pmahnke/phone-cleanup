---
Title: QtQuick.qtquick-quick-accessibility-example
---

# QtQuick.qtquick-quick-accessibility-example

<span class="subtitle"></span>
<!-- $$$quick-accessibility-description -->
<p>This example has accessible buttons.<p>Types in this example are augmented with meta-data for accessiblity systems.</p>
<p>For example, the button identifies itself and its functionality to the accessibility system:</p>
<pre class="qml"><span class="name">Accessible</span>.name: <span class="name">text</span>
<span class="name">Accessible</span>.description: <span class="string">&quot;This button does &quot;</span> <span class="operator">+</span> <span class="name">text</span>
<span class="name">Accessible</span>.role: <span class="name">Accessible</span>.<span class="name">Button</span>
<span class="keyword">function</span> <span class="name">accessiblePressAction</span>() {
<span class="name">button</span>.<span class="name">clicked</span>()
}</pre>
<p>As do Text types inside the example:</p>
<pre class="qml"><span class="name">Accessible</span>.role: <span class="name">Accessible</span>.<span class="name">StaticText</span>
<span class="name">Accessible</span>.name: <span class="name">text</span></pre>
<p>Files:</p>
<ul>
<li>quick-accessibility/accessibility.qml</li>
<li>quick-accessibility/content/Button.qml</li>
<li>quick-accessibility/content/Checkbox.qml</li>
<li>quick-accessibility/content/Slider.qml</li>
<li>quick-accessibility/main.cpp</li>
<li>quick-accessibility/accessibility.qmlproject</li>
<li>quick-accessibility/accessibility.qrc</li>
<li>quick-accessibility/quick-accessibility.pro</li>
</ul>
<!-- @@@quick-accessibility -->
