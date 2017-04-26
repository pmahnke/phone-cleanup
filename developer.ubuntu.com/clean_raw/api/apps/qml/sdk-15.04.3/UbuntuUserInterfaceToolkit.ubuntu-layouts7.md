---
Title: UbuntuUserInterfaceToolkit.ubuntu-layouts7
---

# UbuntuUserInterfaceToolkit.ubuntu-layouts7

<span class="subtitle"></span>
<!-- $$$ubuntu-layouts7.html-description -->
<p>As mentioned, with Layouts we can achieve to have a single code base supporting different form factors. The following example illustrates how to support different layouts with the same code base.</p>
<h2 id="default-layout">Default layout</h2>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/680a163b-4d61-4c5b-8d64-cadf08eab910-../ubuntu-layouts7/images/simple-layout1.png" alt="" /></p><pre class="qml"><span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
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
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/bf0c6f5b-5886-46d2-941f-f9e6e9799327-../ubuntu-layouts7/images/simple-layout2.png" alt="" /></p><pre class="qml"><span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
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
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/9faf0268-d37f-486c-b7e7-17dddc83c273-../ubuntu-layouts7/images/simple-layout3.png" alt="" /></p><pre class="qml"><span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
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
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/1bca4739-6e81-4dfc-a3b0-5e10a3eaf5f2-../ubuntu-layouts7/images/simple-layout4.png" alt="" /></p><pre class="qml"><span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
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
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/e62c5ea1-c989-4210-a559-f7ba7536cc54-../ubuntu-layouts7/images/simple-layout5.png" alt="" /></p><pre class="qml"><span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
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
