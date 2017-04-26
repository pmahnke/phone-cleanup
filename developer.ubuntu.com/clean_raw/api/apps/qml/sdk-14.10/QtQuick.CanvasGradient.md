---
Title: QtQuick.CanvasGradient
---

# QtQuick.CanvasGradient

<span class="subtitle"></span>
<!-- $$$CanvasGradient-brief -->
<p>Provides an opaque CanvasGradient interface More...</p>
<!-- @@@CanvasGradient -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import QtQuick 2.2</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.0</td></tr></table><ul>
</ul>
<h2>Methods</h2>
<ul>
<li class="fn">CanvasGradient <b><b><a href="#addColorStop-method">addColorStop</a></b></b>(real <i>offsetof</i>, string <i>color</i>)</li>
</ul>
<!-- $$$CanvasGradient-description -->
<h2>Detailed Description</h2>
<!-- @@@CanvasGradient -->
<h2>Method Documentation</h2>
<!-- $$$addColorStop -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="type">CanvasGradient</span> <span class="name">addColorStop</span>(<span class="type">real</span><i> offsetof</i>, <span class="type">string</span><i> color</i>)</p></td></tr></table><p>Adds a color stop with the given color to the gradient at the given offset. 0.0 is the offset at one end of the gradient, 1.0 is the offset at the other end.</p>
<p>For example:</p>
<pre class="cpp">var gradient <span class="operator">=</span> ctx<span class="operator">.</span>createLinearGradient(<span class="number">0</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">100</span><span class="operator">,</span> <span class="number">100</span>);
gradient<span class="operator">.</span>addColorStop(<span class="number">0.3</span><span class="operator">,</span> <span class="type">Qt</span><span class="operator">.</span>rgba(<span class="number">1</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">1</span>));
gradient<span class="operator">.</span>addColorStop(<span class="number">0.7</span><span class="operator">,</span> <span class="char">'rgba(0, 255, 255, 1'</span>);</pre>
<!-- @@@addColorStop -->
<br/>
