---
Title: QtQuick.qtquick-mousearea-example
---

# QtQuick.qtquick-mousearea-example

<span class="subtitle"></span>
<!-- $$$mousearea-description -->
<p>This is an example of the <a href="QtQuick.MouseArea.md">MouseArea</a> type in QML<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/45a27901-a74d-4d35-915f-cc5561889b4d-../qtquick-mousearea-example/images/qml-mousearea-example.png" alt="" /></p><p>This example shows you how to respond to clicks and drags with a <a href="QtQuick.MouseArea.md">MouseArea</a>.</p>
<p>When you click inside the red square, the Text type will list several properties of that click which are available to QML.</p>
<p>Signals are emitted by the <a href="QtQuick.MouseArea.md">MouseArea</a> when clicks or other discrete operations occur within it</p>
<pre class="qml"><span class="name">onPressAndHold</span>: <span class="name">btn</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Press and hold'</span>
<span class="name">onClicked</span>: <span class="name">btn</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Clicked (wasHeld='</span> <span class="operator">+</span> <span class="name">mouse</span>.<span class="name">wasHeld</span> <span class="operator">+</span> <span class="string">')'</span>
<span class="name">onDoubleClicked</span>: <span class="name">btn</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Double clicked'</span></pre>
<p>The <a href="QtQuick.MouseArea.md">MouseArea</a> can also be used to drag items around. By setting the parameters of the drag property, the target item will be dragged around if the user starts to drag within the <a href="QtQuick.MouseArea.md">MouseArea</a>.</p>
<pre class="qml"><span class="name">drag</span>.target: <span class="name">blueSquare</span>
<span class="name">drag</span>.axis: <span class="name">Drag</span>.<span class="name">XAndYAxis</span>
<span class="name">drag</span>.minimumX: <span class="number">0</span>
<span class="name">drag</span>.maximumX: <span class="name">box</span>.<span class="name">width</span> <span class="operator">-</span> <span class="name">parent</span>.<span class="name">width</span>
<span class="name">drag</span>.minimumY: <span class="number">0</span>
<span class="name">drag</span>.maximumY: <span class="name">box</span>.<span class="name">height</span> <span class="operator">-</span> <span class="name">parent</span>.<span class="name">width</span></pre>
<p>Files:</p>
<ul>
<li>mousearea/mousearea-wheel-example.qml</li>
<li>mousearea/mousearea.qml</li>
<li>mousearea/main.cpp</li>
<li>mousearea/mousearea.pro</li>
<li>mousearea/mousearea.qmlproject</li>
<li>mousearea/mousearea.qrc</li>
</ul>
<!-- @@@mousearea -->
