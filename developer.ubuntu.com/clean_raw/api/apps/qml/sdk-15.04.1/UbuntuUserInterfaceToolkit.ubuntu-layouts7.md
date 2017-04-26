---
Title: UbuntuUserInterfaceToolkit.ubuntu-layouts7
---

# UbuntuUserInterfaceToolkit.ubuntu-layouts7

<span class="subtitle"></span>
<!-- $$$ubuntu-layouts7.html-description -->
<p>As mentioned, with Layouts we can achieve to have a single code base supporting different form factors. The following example illustrates how to support different layouts with the same code base.</p>
<h2 id="default-layout">Default layout</h2>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/c9805784-ede3-456b-ad7a-a0bcf9e37699-../ubuntu-layouts7/images/simple-layout1.png" alt="" /></p><pre class="qml"><span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">id</span>: <span class="name">redButton</span>
<span class="name">text</span>: <span class="string">&quot;Item #1&quot;</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">Layouts</span>.item: <span class="string">&quot;red&quot;</span>
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">15</span>)
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">id</span>: <span class="name">greenButton</span>
<span class="name">text</span>: <span class="string">&quot;Item #2&quot;</span>
<span class="name">color</span>: <span class="string">&quot;green&quot;</span>
<span class="name">Layouts</span>.item: <span class="string">&quot;green&quot;</span>
<span class="type">anchors</span> {
<span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">left</span>: <span class="name">redButton</span>.<span class="name">right</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
}
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">10</span>)
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">id</span>: <span class="name">nolayout</span>
<span class="name">text</span>: <span class="string">&quot;Non-laid out&quot;</span>
<span class="name">color</span>: <span class="string">&quot;brown&quot;</span>
<span class="type">anchors</span> {
<span class="name">top</span>: <span class="name">greenButton</span>.<span class="name">bottom</span>
<span class="name">left</span>: <span class="name">redButton</span>.<span class="name">right</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">bottom</span>: <span class="name">blueButton</span>.<span class="name">top</span>
}
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">id</span>: <span class="name">blueButton</span>
<span class="name">text</span>: <span class="string">&quot;Item #3&quot;</span>
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">Layouts</span>.item: <span class="string">&quot;blue&quot;</span>
<span class="type">anchors</span>{
<span class="name">left</span>: <span class="name">redButton</span>.<span class="name">right</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">10</span>)
}</pre>
<h2 id="conditional-layouts">Conditional layouts</h2>
<h3 >Column layout</h3>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/d55f3fd8-f3ae-4fae-9802-68789606459a-../ubuntu-layouts7/images/simple-layout2.png" alt="" /></p><pre class="qml"><span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;column&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>) <span class="operator">&amp;&amp;</span> <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&lt;=</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>)
<span class="type"><a href="../sdk-14.10/QtQuick.Column.md">Column</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;red&quot;</span>
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">3</span>
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
}
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;green&quot;</span>
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">3</span>
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
}
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">3</span>
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
}
}
}
},</pre>
<h3 >Row layout</h3>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/ab9ffbc5-4d27-4ac0-81ab-da4e96a9fbb5-../ubuntu-layouts7/images/simple-layout3.png" alt="" /></p><pre class="qml"><span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;row&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>) <span class="operator">&amp;&amp;</span> <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&lt;=</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">90</span>)
<span class="type"><a href="../sdk-15.04/QtQuick.Row.md">Row</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">3</span>
<span class="type">anchors</span> {
<span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;red&quot;</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">3</span>
<span class="type">anchors</span> {
<span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;green&quot;</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">3</span>
<span class="type">anchors</span> {
<span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
}
}
},</pre>
<h3 >Layout hiding element</h3>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/96a7775b-2c14-4d45-b8e5-52b403554554-../ubuntu-layouts7/images/simple-layout4.png" alt="" /></p><pre class="qml"><span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;hiding-element&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">90</span>) <span class="operator">&amp;&amp;</span> <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&lt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
<span class="type"><a href="../sdk-15.04/QtQuick.Row.md">Row</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;red&quot;</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;green&quot;</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
}
},</pre>
<h3 >Layout showing more</h3>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/5b5a790c-898b-463a-942b-07202aee44d0-../ubuntu-layouts7/images/simple-layout5.png" alt="" /></p><pre class="qml"><span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;showing-more&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;=</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
<span class="type"><a href="../sdk-14.10/QtQuick.Flow.md">Flow</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;red&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;green&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;Flow item&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
}
}</pre>
<h2 id="the-entire-code">The entire code</h2>
<pre class="qml"><span class="type"><a href="Ubuntu.Layouts.Layouts.md">Layouts</a></span> {
<span class="name">id</span>: <span class="name">layouts</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">layouts</span>: [
<span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;column&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>) <span class="operator">&amp;&amp;</span> <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&lt;=</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>)
<span class="type"><a href="../sdk-14.10/QtQuick.Column.md">Column</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;red&quot;</span>
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">3</span>
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
}
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;green&quot;</span>
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">3</span>
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
}
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">3</span>
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
}
}
}
},
<span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;row&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>) <span class="operator">&amp;&amp;</span> <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&lt;=</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">90</span>)
<span class="type"><a href="../sdk-15.04/QtQuick.Row.md">Row</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">3</span>
<span class="type">anchors</span> {
<span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;red&quot;</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">3</span>
<span class="type">anchors</span> {
<span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;green&quot;</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">3</span>
<span class="type">anchors</span> {
<span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
}
}
},
<span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;hiding-element&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">90</span>) <span class="operator">&amp;&amp;</span> <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&lt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
<span class="type"><a href="../sdk-15.04/QtQuick.Row.md">Row</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;red&quot;</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;green&quot;</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
}
},
<span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;showing-more&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;=</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
<span class="type"><a href="../sdk-14.10/QtQuick.Flow.md">Flow</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;red&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;green&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;Flow item&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
}
}
]
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">id</span>: <span class="name">redButton</span>
<span class="name">text</span>: <span class="string">&quot;Item #1&quot;</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">Layouts</span>.item: <span class="string">&quot;red&quot;</span>
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">15</span>)
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">id</span>: <span class="name">greenButton</span>
<span class="name">text</span>: <span class="string">&quot;Item #2&quot;</span>
<span class="name">color</span>: <span class="string">&quot;green&quot;</span>
<span class="name">Layouts</span>.item: <span class="string">&quot;green&quot;</span>
<span class="type">anchors</span> {
<span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">left</span>: <span class="name">redButton</span>.<span class="name">right</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
}
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">10</span>)
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">id</span>: <span class="name">nolayout</span>
<span class="name">text</span>: <span class="string">&quot;Non-laid out&quot;</span>
<span class="name">color</span>: <span class="string">&quot;brown&quot;</span>
<span class="type">anchors</span> {
<span class="name">top</span>: <span class="name">greenButton</span>.<span class="name">bottom</span>
<span class="name">left</span>: <span class="name">redButton</span>.<span class="name">right</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">bottom</span>: <span class="name">blueButton</span>.<span class="name">top</span>
}
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">id</span>: <span class="name">blueButton</span>
<span class="name">text</span>: <span class="string">&quot;Item #3&quot;</span>
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">Layouts</span>.item: <span class="string">&quot;blue&quot;</span>
<span class="type">anchors</span>{
<span class="name">left</span>: <span class="name">redButton</span>.<span class="name">right</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">10</span>)
}
}</pre>
<h2 id="that-s-it">That's it</h2>
<p>You're ready to go. You can find the layouting components under <a href="UbuntuUserInterfaceToolkit.overview-ubuntu-sdk.md#layouting">Layouting</a>. For further questions please visit <b>#ubuntu-app-devel</b> irc channel on freenode.</p>
<!-- @@@ubuntu-layouts7.html -->