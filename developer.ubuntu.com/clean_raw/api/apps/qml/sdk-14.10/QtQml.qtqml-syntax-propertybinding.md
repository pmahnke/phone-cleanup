---
Title: QtQml.qtqml-syntax-propertybinding
---

# QtQml.qtqml-syntax-propertybinding

<span class="subtitle"></span>
<!-- $$$qtqml-syntax-propertybinding.html-description -->
<p>To make the fullest use of QML and its built-in support for implementing dynamic object behavioral changes, most QML objects will use <i>property binding</i>. This is a core feature of QML that allows objects to automatically update their properties in response to changing attributes in other objects or the occurrence of some external event.</p>
<p>When an object's property is assigned a value, it can either be assigned a static value, or <i>bound</i> to a JavaScript expression. In the first case, the property's value will not change unless a new value is assigned to the property. In the latter case, a <i>property binding</i> is created and the property's value is automatically updated by the QML engine whenever the value of the evaluated expression changes.</p>
<h2>Overview</h2>
<p>To create a property binding, a property is assigned an expression that evaluates to the desired value. At its simplest, an expression may simply be a reference to another object's property. Take the following example, where the blue Rectangle's <tt>height</tt> is bound to the height of its parent:</p>
<pre class="qml"><span class="type">Rectangle</span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="type">Rectangle</span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span>
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
}
}</pre>
<p>Whenever the <tt>height</tt> of the parent item changes, the <tt>height</tt> of the blue rectangle will update to be of the same value.</p>
<p>Furthermore, a binding can contain any valid JavaScript expression or statement, as QML uses a standards compliant JavaScript engine. Below are valid bindings that could be substituted for the <tt>height</tt> binding from the above example:</p>
<pre class="cpp">height: parent<span class="operator">.</span>height <span class="operator">/</span> <span class="number">2</span>
height: Math<span class="operator">.</span>min(parent<span class="operator">.</span>width<span class="operator">,</span> parent<span class="operator">.</span>height)
height: parent<span class="operator">.</span>height <span class="operator">&gt;</span> <span class="number">100</span> <span class="operator">?</span> parent<span class="operator">.</span>height : parent<span class="operator">.</span>height<span class="operator">/</span><span class="number">2</span>
height: {
<span class="keyword">if</span> (parent<span class="operator">.</span>height <span class="operator">&gt;</span> <span class="number">100</span>)
<span class="keyword">return</span> parent<span class="operator">.</span>height
<span class="keyword">else</span>
<span class="keyword">return</span> parent<span class="operator">.</span>height <span class="operator">/</span> <span class="number">2</span>
}
height: someMethodThatReturnsHeight()</pre>
<p>Whenever the value of <tt>parent.height</tt> changes, the QML engine will re-evaluate the above expression and assign the blue rectangle's <tt>width</tt> property with the appropriate updated value.</p>
<p>Bindings can access object properties, call methods and use built-in JavaScript objects such as <tt>Date</tt> and <tt>Math</tt>. Here is an example with various valid bindings:</p>
<pre class="qml"><span class="type">Column</span> {
<span class="name">width</span>: <span class="number">200</span>
<span class="name">height</span>: <span class="number">200</span>
<span class="type">Rectangle</span> {
<span class="name">width</span>: <span class="name">Math</span>.<span class="name">max</span>(<span class="name">bottomRect</span>.<span class="name">width</span>, <span class="name">parent</span>.<span class="name">width</span><span class="operator">/</span><span class="number">2</span>)
<span class="name">height</span>: (<span class="name">parent</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">3</span>) <span class="operator">+</span> <span class="number">10</span>
<span class="name">color</span>: <span class="string">&quot;yellow&quot;</span>
<span class="type">TextInput</span> {
<span class="name">id</span>: <span class="name">myTextInput</span>
<span class="name">text</span>: <span class="string">&quot;Hello QML!&quot;</span>
}
}
<span class="type">Rectangle</span> {
<span class="name">id</span>: <span class="name">bottomRect</span>
<span class="name">width</span>: <span class="number">100</span>
<span class="name">height</span>: <span class="number">50</span>
<span class="name">color</span>: <span class="name">myTextInput</span>.<span class="name">text</span>.<span class="name">length</span> <span class="operator">&lt;=</span> <span class="number">10</span> ? <span class="string">&quot;red&quot;</span> : <span class="string">&quot;blue&quot;</span>
}
}</pre>
<p>While syntactically bindings can be of arbitrary complexity, if a binding starts to become overly complex - such as involving multiple lines, or imperative loops - it may be better to refactor the component entirely, or at least factor the binding out into a separate function.</p>
<h2>Creating Property Bindings from JavaScript</h2>
<p>Once a property has been bound to an expression, the property is set to be automatically updated as necessary. However, be aware that if the property is later assigned a static value from a JavaScript statement, this will remove the binding.</p>
<p>For example, the <tt>height</tt> of the Rectangle below is initially bound to be twice its <tt>width</tt>. However, when the space key is pressed, the <tt>height</tt> value is changed to be three times its <tt>width</tt>. At this point, the <tt>height</tt> is assigned the currently evaluated result of <tt>width*3</tt> and <i>the height will no longer be automatically updated whenever the width changes</i>. The assignment of the static value removes the binding.</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Rectangle</span> {
<span class="name">width</span>: <span class="number">100</span>
<span class="name">height</span>: <span class="name">width</span> <span class="operator">*</span> <span class="number">2</span>
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">Keys</span>.onSpacePressed: {
<span class="name">height</span> <span class="operator">=</span> <span class="name">width</span> <span class="operator">*</span> <span class="number">3</span>
}
}</pre>
<p>If the intention is to remove the binding, then this is not a problem. However if the intention is to create a new binding of <tt>width*3</tt> then the property must be assigned a Qt.<a href="QtQml.Binding.md">binding</a>() value instead. This is done by passing a function to Qt.<a href="QtQml.Binding.md">binding</a>() that returns the desired result:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Rectangle</span> {
<span class="name">width</span>: <span class="number">100</span>
<span class="name">height</span>: <span class="name">width</span> <span class="operator">*</span> <span class="number">2</span>
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">Keys</span>.onSpacePressed: {
<span class="name">height</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">binding</span>(<span class="keyword">function</span>() { <span class="keyword">return</span> <span class="name">width</span> <span class="operator">*</span> <span class="number">3</span> })
}
}</pre>
<p>Now when the space key is pressed, a new binding of <tt>width*3</tt> is assigned, instead of simply removing the initial binding.</p>
<h3>Using <tt>this</tt> with Property Binding</h3>
<p>When creating a property binding from JavaScript, QML allows the use of the <tt>this</tt> keyword to refer to the object to which the property binding will be assigned. This allows one to explicitly refer to a property within an object when there may be ambiguity about the exact property that should be used for the binding.</p>
<p>For example, the <tt>Component.onCompleted</tt> handler below is defined within the scope of the Item, and references to <tt>width</tt> within this scope would refer to the Item's width, rather than that of the Rectangle. To bind the Rectangle's <tt>height</tt> to its own <tt>width</tt>, the function passed to Qt.<a href="QtQml.Binding.md">binding</a>() needs to explicitly refer to <tt>this.width</tt> rather than just <tt>width</tt>.</p>
<pre class="qml"><span class="type">Item</span> {
<span class="name">width</span>: <span class="number">500</span>
<span class="name">height</span>: <span class="number">500</span>
<span class="type">Rectangle</span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="name">width</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;yellow&quot;</span>
}
<span class="name">Component</span>.onCompleted: {
<span class="name">rect</span>.<span class="name">height</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">binding</span>(<span class="keyword">function</span>() { <span class="keyword">return</span> this.<span class="name">width</span> <span class="operator">*</span> <span class="number">2</span> })
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;rect.height = &quot;</span> <span class="operator">+</span> <span class="name">rect</span>.<span class="name">height</span>) <span class="comment">// prints 200, not 1000</span>
}
}</pre>
<p>In this case, the function could also have referred to <tt>rect.width</tt> rather than <tt>this.width</tt>.</p>
<p>Note that the value of <tt>this</tt> is not defined outside of its use in property binding. See <a href="QtQml.qtqml-javascript-hostenvironment.md#javascript-environment-restrictions">JavaScript Environment Restrictions</a> for details.</p>
<!-- @@@qtqml-syntax-propertybinding.html -->
