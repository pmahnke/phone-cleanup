---
Title: QtQuick.qtquick-draganddrop-example
---

# QtQuick.qtquick-draganddrop-example

<span class="subtitle"></span>
<!-- $$$draganddrop-description -->
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/dd2b4762-0d36-4cdd-a1c2-92b0a1ed2d55-../qtquick-draganddrop-example/images/qml-draganddrop-example.png" alt="" /></p><p><i>Drag and Drop</i> is a collection of small QML examples relating to drag and drop functionality. For more information, visit the Drag and Drop page.</p>
<h2 id="running-the-example">Running the Example</h2>
<p>To run the example from Qt Creator, open the <b>Welcome</b> mode and select the example from <b>Examples</b>. For more information, visit Building and Running an Example.</p>
<h2 id="tiles">Tiles</h2>
<p><i>Tiles</i> adds drag and drop to simple rectangles, which you can drag into a specific grid.</p>
<p>It has a DragTile component which uses a <a href="QtQuick.MouseArea.md">MouseArea</a> to move an item when dragged:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">root</span>
property <span class="type">string</span> <span class="name">colorKey</span>
<span class="name">width</span>: <span class="number">64</span>; <span class="name">height</span>: <span class="number">64</span>
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">id</span>: <span class="name">mouseArea</span>
<span class="name">width</span>: <span class="number">64</span>; <span class="name">height</span>: <span class="number">64</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">drag</span>.target: <span class="name">tile</span>
<span class="name">onReleased</span>: <span class="name">parent</span> <span class="operator">=</span> <span class="name">tile</span>.<span class="name">Drag</span>.<span class="name">target</span> <span class="operator">!==</span> <span class="number">null</span> ? <span class="name">tile</span>.<span class="name">Drag</span>.<span class="name">target</span> : <span class="name">root</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">tile</span>
<span class="name">width</span>: <span class="number">64</span>; <span class="name">height</span>: <span class="number">64</span>
<span class="name">anchors</span>.verticalCenter: <span class="name">parent</span>.<span class="name">verticalCenter</span>
<span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
<span class="name">color</span>: <span class="name">colorKey</span>
<span class="name">Drag</span>.keys: [ <span class="name">colorKey</span> ]
<span class="name">Drag</span>.active: <span class="name">mouseArea</span>.<span class="name">drag</span>.<span class="name">active</span>
<span class="name">Drag</span>.hotSpot.x: <span class="number">32</span>
<span class="name">Drag</span>.hotSpot.y: <span class="number">32</span>
<span class="name">states</span>: <span class="name">State</span> {
<span class="name">when</span>: <span class="name">mouseArea</span>.<span class="name">drag</span>.<span class="name">active</span>
<span class="type"><a href="QtQuick.ParentChange.md">ParentChange</a></span> { <span class="name">target</span>: <span class="name">tile</span>; <span class="name">parent</span>: <span class="name">root</span> }
<span class="type"><a href="QtQuick.AnchorChanges.md">AnchorChanges</a></span> { <span class="name">target</span>: <span class="name">tile</span>; <span class="name">anchors</span>.verticalCenter: <span class="name">undefined</span>; <span class="name">anchors</span>.horizontalCenter: <span class="name">undefined</span> }
}
}
}
}</pre>
<p>And a DropTile component which the dragged tiles can be dropped onto:</p>
<pre class="qml"><span class="type"><a href="QtQuick.DropArea.md">DropArea</a></span> {
<span class="name">id</span>: <span class="name">dragTarget</span>
property <span class="type">string</span> <span class="name">colorKey</span>
property <span class="type">alias</span> <span class="name">dropProxy</span>: <span class="name">dragTarget</span>
<span class="name">width</span>: <span class="number">64</span>; <span class="name">height</span>: <span class="number">64</span>
<span class="name">keys</span>: [ <span class="name">colorKey</span> ]
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">dropRectangle</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">color</span>: <span class="name">colorKey</span>
<span class="name">states</span>: [
<span class="type"><a href="QtQuick.State.md">State</a></span> {
<span class="name">when</span>: <span class="name">dragTarget</span>.<span class="name">containsDrag</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> {
<span class="name">target</span>: <span class="name">dropRectangle</span>
<span class="name">color</span>: <span class="string">&quot;grey&quot;</span>
}
}
]
}
}</pre>
<p>The keys property of the <a href="QtQuick.DropArea.md">DropArea</a> will only allow an item with a matching key in its Drag.keys property to be dropped on it.</p>
<h2 id="gridview">GridView</h2>
<p><i>GridView</i> adds drag and drop to a <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview">GridView</a>, allowing you to reorder the list. It also uses a DelegateModel to move a delegate item to the position of another item it is dragged over.</p>
<pre class="qml">    <span class="name">model</span>: <span class="name">DelegateModel</span> {
<span class="name">delegate</span>: <span class="name">MouseArea</span> {
<span class="name">id</span>: <span class="name">delegateRoot</span>
property <span class="type">int</span> <span class="name">visualIndex</span>: <span class="name">DelegateModel</span>.<span class="name">itemsIndex</span>
<span class="name">width</span>: <span class="number">80</span>; <span class="name">height</span>: <span class="number">80</span>
<span class="name">drag</span>.target: <span class="name">icon</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">icon</span>
<span class="name">width</span>: <span class="number">72</span>; <span class="name">height</span>: <span class="number">72</span>
<span class="type">anchors</span> {
<span class="name">horizontalCenter</span>: <span class="name">parent</span>.<span class="name">horizontalCenter</span>;
<span class="name">verticalCenter</span>: <span class="name">parent</span>.<span class="name">verticalCenter</span>
}
<span class="name">color</span>: <span class="name">model</span>.<span class="name">color</span>
<span class="name">radius</span>: <span class="number">3</span>
<span class="name">Drag</span>.active: <span class="name">delegateRoot</span>.<span class="name">drag</span>.<span class="name">active</span>
<span class="name">Drag</span>.source: <span class="name">delegateRoot</span>
<span class="name">Drag</span>.hotSpot.x: <span class="number">36</span>
<span class="name">Drag</span>.hotSpot.y: <span class="number">36</span>
<span class="name">states</span>: [
<span class="type"><a href="QtQuick.State.md">State</a></span> {
<span class="name">when</span>: <span class="name">icon</span>.<span class="name">Drag</span>.<span class="name">active</span>
<span class="type"><a href="QtQuick.ParentChange.md">ParentChange</a></span> {
<span class="name">target</span>: <span class="name">icon</span>
<span class="name">parent</span>: <span class="name">root</span>
}
<span class="type"><a href="QtQuick.AnchorChanges.md">AnchorChanges</a></span> {
<span class="name">target</span>: <span class="name">icon</span>;
<span class="name">anchors</span>.horizontalCenter: <span class="name">undefined</span>;
<span class="name">anchors</span>.verticalCenter: <span class="name">undefined</span>
}
}
]
}
<span class="type"><a href="QtQuick.DropArea.md">DropArea</a></span> {
<span class="type">anchors</span> { <span class="name">fill</span>: <span class="name">parent</span>; <span class="name">margins</span>: <span class="number">15</span> }
<span class="name">onEntered</span>: <span class="name">visualModel</span>.<span class="name">items</span>.<span class="name">move</span>(<span class="name">drag</span>.<span class="name">source</span>.<span class="name">visualIndex</span>, <span class="name">delegateRoot</span>.<span class="name">visualIndex</span>)
}
}</pre>
<p>Files:</p>
<ul>
<li>draganddrop/draganddrop.qml</li>
<li>draganddrop/tiles/DragTile.qml</li>
<li>draganddrop/tiles/DropTile.qml</li>
<li>draganddrop/tiles/tiles.qml</li>
<li>draganddrop/views/gridview.qml</li>
<li>draganddrop/main.cpp</li>
<li>draganddrop/draganddrop.pro</li>
<li>draganddrop/draganddrop.qmlproject</li>
<li>draganddrop/draganddrop.qrc</li>
</ul>
<!-- @@@draganddrop -->
