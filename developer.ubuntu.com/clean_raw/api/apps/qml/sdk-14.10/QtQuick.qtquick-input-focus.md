---
Title: QtQuick.qtquick-input-focus
---

# QtQuick.qtquick-input-focus

<span class="subtitle"></span>
<!-- $$$qtquick-input-focus.html-description -->
<p>When a key is pressed or released, a key event is generated and delivered to the focused Qt Quick <a href="QtQuick.Item.md">Item</a>. To facilitate the construction of reusable components and to address some of the cases unique to fluid user interfaces, the Qt Quick items add a scope based extension to Qt's traditional keyboard focus model.</p>
<h2>Key Handling Overview</h2>
<p>When the user presses or releases a key, the following occurs:</p>
<ol class="1">
<li>Qt receives the key action and generates a key event.</li>
<li>If a QQuickWindow is the active window, the key event is delivered to it.</li>
<li>The key event is delivered by the scene to the <a href="QtQuick.Item.md">Item</a> with <i>active focus</i>. If no item has active focus, the key event is ignored.</li>
<li>If the QQuickItem with active focus accepts the key event, propagation stops. Otherwise the event is send to the Item's parent until the event is accepted, or the root item is reached.<p>If the <tt>Rectangle</tt> type in the following example has active focus and the <tt>A</tt> key is pressed, the event will not be propagated further. Pressing the <tt>B</tt> key the event will propagate to the root item and thus subsequently be ignored.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">Keys</span>.onPressed: {
<span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_A</span>) {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">'Key A was pressed'</span>);
<span class="name">event</span>.<span class="name">accepted</span> <span class="operator">=</span> <span class="number">true</span>;
}
}
}</pre>
</li>
<li>If the root <a href="QtQuick.Item.md">Item</a> is reached, the key event is ignored and regular Qt key handling continues.</li>
</ol>
<p>See also the <a href="QtQuick.Keys.md">Keys attached property</a> and <a href="QtQuick.KeyNavigation.md">KeyNavigation attached property</a>.</p>
<h2>Querying the Active Focus Item</h2>
<p>Whether or not an <a href="QtQuick.Item.md">Item</a> has active focus can be queried through the property <tt>Item::activeFocus</tt> property. For example, here we have a <a href="QtQuick.Text.md">Text</a> type whose text is determined by whether or not it has active focus.</p>
<pre class="qml">    <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">text</span>: <span class="name">activeFocus</span> ? <span class="string">&quot;I have active focus!&quot;</span> : <span class="string">&quot;I do not have active focus&quot;</span>
}</pre>
<h2>Acquiring Focus and Focus Scopes</h2>
<p>An <a href="QtQuick.Item.md">Item</a> requests focus by setting the <tt>focus</tt> property to <tt>true</tt>.</p>
<p>For very simple cases simply setting the <tt>focus</tt> property is sometimes sufficient. If we run the following example with qmlscene, we see that the <tt>keyHandler</tt> type has active focus and pressing the <tt>A</tt>, <tt>B</tt>, or <tt>C</tt> keys modifies the text appropriately.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>; <span class="name">width</span>: <span class="number">240</span>; <span class="name">height</span>: <span class="number">25</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">id</span>: <span class="name">myText</span> }
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">keyHandler</span>
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">Keys</span>.onPressed: {
<span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_A</span>)
<span class="name">myText</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Key A was pressed'</span>
<span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_B</span>)
<span class="name">myText</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Key B was pressed'</span>
<span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_C</span>)
<span class="name">myText</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Key C was pressed'</span>
}
}
}</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/ef564adc-a623-4b38-a166-f03b08698db6-../qtquick-input-focus/images/declarative-qmlfocus1.png" alt="" /></p><p>However, were the above example to be used as a reusable or imported component, this simple use of the <tt>focus</tt> property is no longer sufficient.</p>
<p>To demonstrate, we create two instances of our previously defined component and set the first one to have focus. The intention is that when the <tt>A</tt>, <tt>B</tt>, or <tt>C</tt> keys are pressed, the first of the two components receives the event and responds accordingly.</p>
<p>The code that imports and creates two MyWidget instances:</p>
<pre class="qml"><span class="comment">//Window code that imports MyWidget</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">window</span>
<span class="name">color</span>: <span class="string">&quot;white&quot;</span>; <span class="name">width</span>: <span class="number">240</span>; <span class="name">height</span>: <span class="number">150</span>
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>; <span class="name">spacing</span>: <span class="number">15</span>
<span class="type">MyWidget</span> {
<span class="name">focus</span>: <span class="number">true</span>             <span class="comment">//set this MyWidget to receive the focus</span>
<span class="name">color</span>: <span class="string">&quot;lightblue&quot;</span>
}
<span class="type">MyWidget</span> {
<span class="name">color</span>: <span class="string">&quot;palegreen&quot;</span>
}
}
}</pre>
<p>The MyWidget code:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">widget</span>
<span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>; <span class="name">width</span>: <span class="number">175</span>; <span class="name">height</span>: <span class="number">25</span>; <span class="name">radius</span>: <span class="number">10</span>; <span class="name">antialiasing</span>: <span class="number">true</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">id</span>: <span class="name">label</span>; <span class="name">anchors</span>.centerIn: <span class="name">parent</span>}
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">Keys</span>.onPressed: {
<span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_A</span>)
<span class="name">label</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Key A was pressed'</span>
<span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_B</span>)
<span class="name">label</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Key B was pressed'</span>
<span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_C</span>)
<span class="name">label</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Key C was pressed'</span>
}
}</pre>
<p>We would like to have the first MyWidget object to have the focus by setting its <tt>focus</tt> property to <tt>true</tt>. However, by running the code, we can confirm that the second widget receives the focus.</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/01ba0b42-6102-43f5-8f59-7d533b73f074-../qtquick-input-focus/images/declarative-qmlfocus2.png" alt="" /></p><p>Looking at both <tt>MyWidget</tt> and <tt>window</tt> code, the problem is evident - there are three types that set the <tt>focus</tt> property set to <tt>true</tt>. The two MyWidget sets the <tt>focus</tt> to <tt>true</tt> and the <tt>window</tt> component also sets the focus. Ultimately, only one type can have keyboard focus, and the system has to decide which type receives the focus. When the second MyWidget is created, it receives the focus because it is the last type to set its <tt>focus</tt> property to <tt>true</tt>.</p>
<p>This problem is due to visibility. The <tt>MyWidget</tt> component would like to have the focus, but it cannot control the focus when it is imported or reused. Likewise, the <tt>window</tt> component does not have the ability to know if its imported components are requesting the focus.</p>
<p>To solve this problem, the QML introduces a concept known as a <i>focus scope</i>. For existing Qt users, a focus scope is like an automatic focus proxy. A focus scope is created by declaring the <a href="QtQuick.FocusScope.md">FocusScope</a> type.</p>
<p>In the next example, a <a href="QtQuick.FocusScope.md">FocusScope</a> type is added to the component, and the visual result shown.</p>
<pre class="qml"><span class="type"><a href="QtQuick.FocusScope.md">FocusScope</a></span> {
<span class="comment">//FocusScope needs to bind to visual properties of the Rectangle</span>
property <span class="type">alias</span> <span class="name">color</span>: <span class="name">rectangle</span>.<span class="name">color</span>
<span class="name">x</span>: <span class="name">rectangle</span>.<span class="name">x</span>; <span class="name">y</span>: <span class="name">rectangle</span>.<span class="name">y</span>
<span class="name">width</span>: <span class="name">rectangle</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="name">rectangle</span>.<span class="name">height</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">rectangle</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>; <span class="name">width</span>: <span class="number">175</span>; <span class="name">height</span>: <span class="number">25</span>; <span class="name">radius</span>: <span class="number">10</span>; <span class="name">antialiasing</span>: <span class="number">true</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">id</span>: <span class="name">label</span>; <span class="name">anchors</span>.centerIn: <span class="name">parent</span> }
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">Keys</span>.onPressed: {
<span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_A</span>)
<span class="name">label</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Key A was pressed'</span>
<span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_B</span>)
<span class="name">label</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Key B was pressed'</span>
<span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_C</span>)
<span class="name">label</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Key C was pressed'</span>
}
}
}</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/0f819b0b-6b44-4928-b5cf-ae1b98d2e29c-../qtquick-input-focus/images/declarative-qmlfocus3.png" alt="" /></p><p>Conceptually <i>focus scopes</i> are quite simple.</p>
<ul>
<li>Within each focus scope one object may have <tt>Item::focus</tt> set to <tt>true</tt>. If more than one <a href="QtQuick.Item.md">Item</a> has the <tt>focus</tt> property set, the last type to set the <tt>focus</tt> will have the focus and the others are unset, similar to when there are no focus scopes.</li>
<li>When a focus scope receives active focus, the contained type with <tt>focus</tt> set (if any) also gets the active focus. If this type is also a <a href="QtQuick.FocusScope.md">FocusScope</a>, the proxying behavior continues. Both the focus scope and the sub-focused item will have <tt>activeFocus</tt> property set.</li>
</ul>
<p>Note that, since the <a href="QtQuick.FocusScope.md">FocusScope</a> type is not a visual type, the properties of its children need to be exposed to the parent item of the <a href="QtQuick.FocusScope.md">FocusScope</a>. Layouts and positioning types will use these visual and styling properties to create the layout. In our example, the <tt>Column</tt> type cannot display the two widgets properly because the <a href="QtQuick.FocusScope.md">FocusScope</a> lacks visual properties of its own. The MyWidget component directly binds to the <tt>rectangle</tt> properties to allow the <tt>Column</tt> type to create the layout containing the children of the <a href="QtQuick.FocusScope.md">FocusScope</a>.</p>
<p>So far, the example has the second component statically selected. It is trivial now to extend this component to make it clickable, and add it to the original application. We still set one of the widgets as focused by default. Now, clicking either MyClickableWidget gives it focus and the other widget loses the focus.</p>
<p>The code that imports and creates two MyClickableWidget instances:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">window</span>
<span class="name">color</span>: <span class="string">&quot;white&quot;</span>; <span class="name">width</span>: <span class="number">240</span>; <span class="name">height</span>: <span class="number">150</span>
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>; <span class="name">spacing</span>: <span class="number">15</span>
<span class="type">MyClickableWidget</span> {
<span class="name">focus</span>: <span class="number">true</span>             <span class="comment">//set this MyWidget to receive the focus</span>
<span class="name">color</span>: <span class="string">&quot;lightblue&quot;</span>
}
<span class="type">MyClickableWidget</span> {
<span class="name">color</span>: <span class="string">&quot;palegreen&quot;</span>
}
}
}</pre>
<p>The MyClickableWidget code:</p>
<pre class="qml"><span class="type"><a href="QtQuick.FocusScope.md">FocusScope</a></span> {
<span class="name">id</span>: <span class="name">scope</span>
<span class="comment">//FocusScope needs to bind to visual properties of the children</span>
property <span class="type">alias</span> <span class="name">color</span>: <span class="name">rectangle</span>.<span class="name">color</span>
<span class="name">x</span>: <span class="name">rectangle</span>.<span class="name">x</span>; <span class="name">y</span>: <span class="name">rectangle</span>.<span class="name">y</span>
<span class="name">width</span>: <span class="name">rectangle</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="name">rectangle</span>.<span class="name">height</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">rectangle</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>; <span class="name">width</span>: <span class="number">175</span>; <span class="name">height</span>: <span class="number">25</span>; <span class="name">radius</span>: <span class="number">10</span>; <span class="name">antialiasing</span>: <span class="number">true</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">id</span>: <span class="name">label</span>; <span class="name">anchors</span>.centerIn: <span class="name">parent</span> }
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">Keys</span>.onPressed: {
<span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_A</span>)
<span class="name">label</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Key A was pressed'</span>
<span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_B</span>)
<span class="name">label</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Key B was pressed'</span>
<span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_C</span>)
<span class="name">label</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Key C was pressed'</span>
}
}
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> { <span class="name">anchors</span>.fill: <span class="name">parent</span>; <span class="name">onClicked</span>: { <span class="name">scope</span>.<span class="name">focus</span> <span class="operator">=</span> <span class="number">true</span> } }
}</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/2903562f-6ba7-44b5-bea0-2245fa951ec9-../qtquick-input-focus/images/declarative-qmlfocus4.png" alt="" /></p><p>When a QML <a href="QtQuick.Item.md">Item</a> explicitly relinquishes focus (by setting its <tt>focus</tt> property to <tt>false</tt> while it has active focus), the system does not automatically select another type to receive focus. That is, it is possible for there to be no currently active focus.</p>
<p>See <a href="https://developer.ubuntu.comapps/qml/sdk-14.10/QtQuick.keyinteraction/">Qt Quick Examples - Key Interaction</a> for a demonstration of moving keyboard focus between multiple areas using <a href="QtQuick.FocusScope.md">FocusScope</a> types.</p>
<h2>Advanced uses of Focus Scopes</h2>
<p>Focus scopes allow focus to allocation to be easily partitioned. Several QML items use it to this effect.</p>
<p><a href="QtQuick.ListView.md">ListView</a>, for example, is itself a focus scope. Generally this isn't noticeable as <a href="QtQuick.ListView.md">ListView</a> doesn't usually have manually added visual children. By being a focus scope, <a href="QtQuick.ListView.md">ListView</a> can focus the current list item without worrying about how that will effect the rest of the application. This allows the current item delegate to react to key presses.</p>
<p>This contrived example shows how this works. Pressing the <tt>Return</tt> key will print the name of the current list item.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">50</span>
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">model</span>: <span class="name">ListModel</span> {
<span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Bob&quot;</span> }
<span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;John&quot;</span> }
<span class="type">ListElement</span> { <span class="name">name</span>: <span class="string">&quot;Michael&quot;</span> }
}
<span class="name">delegate</span>: <span class="name">FocusScope</span> {
<span class="name">width</span>: <span class="name">childrenRect</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="name">childrenRect</span>.<span class="name">height</span>
<span class="name">x</span>:<span class="name">childrenRect</span>.<span class="name">x</span>; <span class="name">y</span>: <span class="name">childrenRect</span>.<span class="name">y</span>
<span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">text</span>: <span class="name">name</span>
<span class="name">Keys</span>.onReturnPressed: <span class="name">console</span>.<span class="name">log</span>(<span class="name">name</span>)
}
}
}
}</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/6d314c20-c717-49c9-b30e-6612bda753e1-../qtquick-input-focus/images/declarative-qmlfocus5.png" alt="" /></p><p>While the example is simple, there are a lot going on behind the scenes. Whenever the current item changes, the <a href="QtQuick.ListView.md">ListView</a> sets the delegate's <tt>Item::focus</tt> property. As the <a href="QtQuick.ListView.md">ListView</a> is a focus scope, this doesn't affect the rest of the application. However, if the <a href="QtQuick.ListView.md">ListView</a> itself has active focus this causes the delegate itself to receive active focus. In this example, the root type of the delegate is also a focus scope, which in turn gives active focus to the <tt>Text</tt> type that actually performs the work of handling the <tt>Return</tt> key.</p>
<p>All of the QML view classes, such as <a href="QtQuick.PathView.md">PathView</a> and <a href="QtQuick.GridView.md">GridView</a>, behave in a similar manner to allow key handling in their respective delegates.</p>
<!-- @@@qtquick-input-focus.html -->
