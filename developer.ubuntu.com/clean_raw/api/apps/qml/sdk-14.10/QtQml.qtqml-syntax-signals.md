---
Title: QtQml.qtqml-syntax-signals
---

# QtQml.qtqml-syntax-signals

<span class="subtitle"></span>
<!-- $$$qtqml-syntax-signals.html-description -->
<p>Application and user interface components need to communicate with each other. For example, a button needs to know that the user has clicked on it. The button may change colors to indicate its state or perform some logic. As well, application needs to know whether the user is clicking the button. The application may need to relay this clicking event to other applications.</p>
<p>QML has a signal and handler mechanism, where the <i>signal</i> is the event and the signal is responded to through a <i>signal handler</i>. When a signal is emitted, the corresponding signal handler is invoked. Placing logic such as scripts or other operations in the handler allows the component to respond to the event.</p>
<h2>Receiving Signals with Signal Handlers</h2>
<p>To receive a notification when a particular signal is emitted for a particular object, the object definition should declare a signal handler named <i>on&lt;Signal&gt;</i> where <i>&lt;Signal&gt;</i> is the name of the signal, with the first letter capitalized. The signal handler should contain the JavaScript code to be executed when the signal handler is invoked.</p>
<p>For example, the MouseArea type from the <tt>QtQuick</tt> module has a <tt>clicked</tt> signal that is emitted whenever the mouse is clicked within the area. Since the signal name is <tt>clicked</tt>, the signal handler for receiving this signal should be named <tt>onClicked</tt>. In the example below, whenever the mouse area is clicked, the <tt>onClicked</tt> handler is invoked, applying a random color to the Rectangle:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Rectangle</span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: {
<span class="name">rect</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="name">Math</span>.<span class="name">random</span>(), <span class="name">Math</span>.<span class="name">random</span>(), <span class="name">Math</span>.<span class="name">random</span>(), <span class="number">1</span>);
}
}
}</pre>
<p>Looking at the MouseArea documentation, you can see the clicked signal is emitted with a parameter named <tt>mouse</tt> which is a MouseEvent object that contains further details about the mouse click event. This name can be referred to in our <tt>onClicked</tt> handler to access this parameter. For example, the MouseEvent type has <tt>x</tt> and <tt>y</tt> coordinates that allows us to print out the exact location where the mouse was clicked:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Rectangle</span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: {
<span class="name">rect</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="name">Math</span>.<span class="name">random</span>(), <span class="name">Math</span>.<span class="name">random</span>(), <span class="name">Math</span>.<span class="name">random</span>(), <span class="number">1</span>);
<span class="comment">// access 'mouse' parameter</span>
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Clicked mouse at&quot;</span>, <span class="name">mouse</span>.<span class="name">x</span>, <span class="name">mouse</span>.<span class="name">y</span>)
}
}
}</pre>
<h3>Property Change Signal Handlers</h3>
<p>A signal is automatically emitted when the value of a QML property changes. This type of signal is a <i>property change signal</i> and signal handlers for these signals are written in the form <i>on&lt;Property&gt;Changed</i> where <i>&lt;Property&gt;</i> is the name of the property, with the first letter capitalized.</p>
<p>For example, the MouseArea type has a pressed property. To receive a notification whenever this property changes, write a signal handler named <tt>onPressedChanged</tt>:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Rectangle</span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onPressedChanged</span>: {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Mouse area is pressed?&quot;</span>, <span class="name">pressed</span>)
}
}
}</pre>
<p>Even though the MouseArea documentation does not document a signal handler named <tt>onPressedChanged</tt>, the signal is implicitly provided by the fact that the <tt>pressed</tt> property exists.</p>
<h3>Using the Connections Type</h3>
<p>In some cases it may be desirable to access a signal outside of the object that emits it. For these purposes, the <tt>QtQuick</tt> module provides the <a href="QtQml.Connections.md">Connections</a> type for connecting to signals of arbitrary objects. A <a href="QtQml.Connections.md">Connections</a> object can receive any signal from its specified <a href="QtQml.Connections.md#target-prop">target</a>.</p>
<p>For example, the <tt>onClicked</tt> handler in the earlier example could have been received by the root Rectangle instead, by placing the <tt>onClicked</tt> handler in a <a href="QtQml.Connections.md">Connections</a> object that has its <a href="QtQml.Connections.md#target-prop">target</a> set to the MouseArea:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Rectangle</span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type">MouseArea</span> {
<span class="name">id</span>: <span class="name">mouseArea</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
}
<span class="type"><a href="QtQml.Connections.md">Connections</a></span> {
<span class="name">target</span>: <span class="name">mouseArea</span>
<span class="name">onClicked</span>: {
<span class="name">rect</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="name">Math</span>.<span class="name">random</span>(), <span class="name">Math</span>.<span class="name">random</span>(), <span class="name">Math</span>.<span class="name">random</span>(), <span class="number">1</span>);
}
}
}</pre>
<h3>Attached Signal Handlers</h3>
<p>An <a href="QtQml.qtqml-syntax-objectattributes.md#attached-properties-and-attached-signal-handlers">attached signal handler</a> is a signal handler that receives a signal from an <i>attaching type</i> rather than the object within which the handler is declared.</p>
<p>For example, <tt>\l</tt> {Component::isCompleted}{Component.isCompleted} is an attached signal handler. This handler is often used to execute some JavaScript code when its creation process has been completed, as in the example below:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Rectangle</span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="name">Qt</span>.<span class="name">random</span>(), <span class="name">Qt</span>.<span class="name">random</span>(), <span class="name">Qt</span>.<span class="name">random</span>(), <span class="number">1</span>)
<span class="name">Component</span>.onCompleted: {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;The rectangle's color is&quot;</span>, <span class="name">color</span>)
}
}</pre>
<p>The <tt>onCompleted</tt> handler is not responding to some <tt>completed</tt> signal from the Rectangle type. Instead, an object of the <tt>Component</tt> <i>attaching type</i> with a <tt>completed</tt> signal has automatically been <i>attached</i> to the Rectangle object by the QML engine, and the engine emits this signal when the object is fully created, thus triggering the <tt>Component.onCompleted</tt> signal handler.</p>
<p>Attached signal handlers allow objects to be notified of particular signals that are significant to each individual object. If there was no <tt>Component.onCompleted</tt> attached signal handler, for example, then an object could not receive this notification without registering for some special signal from some special object. The <i>attached signal handler</i> mechanism enables objects to receive particular signals without these extra processes.</p>
<p>See <a href="QtQml.qtqml-syntax-objectattributes.md#attached-properties-and-attached-signal-handlers">Attached properties and attached signal handlers</a> for more information on attached signal handlers.</p>
<h2>Adding Signals to Custom QML Types</h2>
<p>Signals can be added to custom QML types through the <tt>signal</tt> keyword.</p>
<p>The syntax for defining a new signal is:</p>
<p><tt>signal &lt;name&gt;[([&lt;type&gt; &lt;parameter name&gt;[, ..&#x2e;]])]</tt></p>
<p>A signal is emitted by invoking the signal as a method.</p>
<p>For example, say the code below is defined in a file named <tt>SquareButton.qml</tt>. The root Rectangle object has an <tt>activated</tt> signal. When the child MouseArea is clicked, it emits the parent's <tt>activated</tt> signal with the coordinates of the mouse click:</p>
<pre class="qml"><span class="comment">// SquareButton.qml</span>
<span class="type">Rectangle</span> {
<span class="name">id</span>: <span class="name">root</span>
signal <span class="type">activated</span>(real xPosition, real yPosition)
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onPressed</span>: <span class="name">root</span>.<span class="name">activated</span>(<span class="name">mouse</span>.<span class="name">x</span>, <span class="name">mouse</span>.<span class="name">y</span>)
}
}</pre>
<p>Now any objects of the <tt>SquareButton</tt> can connect to the <tt>activated</tt> signal using an <tt>onActivated</tt> signal handler:</p>
<pre class="qml"><span class="comment">// myapplication.qml</span>
<span class="type">SquareButton</span> {
<span class="name">onActivated</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Activated at &quot;</span> <span class="operator">+</span> <span class="name">xPosition</span> <span class="operator">+</span> <span class="string">&quot;,&quot;</span> <span class="operator">+</span> <span class="name">yPosition</span>)
}</pre>
<p>See <a href="QtQml.qtqml-syntax-objectattributes.md#signal-attributes">Signal Attributes</a> for more details on writing signals for custom QML types.</p>
<h2>Connecting Signals to Methods and Signals</h2>
<p>Signal objects have a <tt>connect()</tt> method to a connect a signal either to a method or another signal. When a signal is connected to a method, the method is automatically invoked whenever the signal is emitted. This mechanism enables a signal to be received by a method instead of a signal handler.</p>
<p>Below, the <tt>messageReceived</tt> signal is connected to three methods using the <tt>connect()</tt> method:</p>
<pre class="qml"><span class="type">Rectangle</span> {
<span class="name">id</span>: <span class="name">relay</span>
signal <span class="type">messageReceived</span>(string person, string notice)
<span class="name">Component</span>.onCompleted: {
<span class="name">relay</span>.<span class="name">messageReceived</span>.<span class="name">connect</span>(<span class="name">sendToPost</span>)
<span class="name">relay</span>.<span class="name">messageReceived</span>.<span class="name">connect</span>(<span class="name">sendToTelegraph</span>)
<span class="name">relay</span>.<span class="name">messageReceived</span>.<span class="name">connect</span>(<span class="name">sendToEmail</span>)
<span class="name">relay</span>.<span class="name">messageReceived</span>(<span class="string">&quot;Tom&quot;</span>, <span class="string">&quot;Happy Birthday&quot;</span>)
}
<span class="keyword">function</span> <span class="name">sendToPost</span>(<span class="name">person</span>, notice) {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Sending to post: &quot;</span> <span class="operator">+</span> <span class="name">person</span> <span class="operator">+</span> <span class="string">&quot;, &quot;</span> <span class="operator">+</span> <span class="name">notice</span>)
}
<span class="keyword">function</span> <span class="name">sendToTelegraph</span>(<span class="name">person</span>, notice) {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Sending to telegraph: &quot;</span> <span class="operator">+</span> <span class="name">person</span> <span class="operator">+</span> <span class="string">&quot;, &quot;</span> <span class="operator">+</span> <span class="name">notice</span>)
}
<span class="keyword">function</span> <span class="name">sendToEmail</span>(<span class="name">person</span>, notice) {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Sending to email: &quot;</span> <span class="operator">+</span> <span class="name">person</span> <span class="operator">+</span> <span class="string">&quot;, &quot;</span> <span class="operator">+</span> <span class="name">notice</span>)
}
}</pre>
<p>In many cases it is sufficient to receive signals through signal handlers rather than using the connect() function. However, using the <tt>connect</tt> method allows a signal to be received by multiple methods as shown above, which would not be possible with signal handlers as they must be uniquely named. Also, the <tt>connect</tt> method is useful when connecting signals to <a href="QtQml.qtqml-javascript-dynamicobjectcreation.md">dynamically created objects</a>.</p>
<p>There is a corresponding <tt>disconnect()</tt> method for removing connected signals:</p>
<pre class="qml"><span class="type">Rectangle</span> {
<span class="name">id</span>: <span class="name">relay</span>
<span class="comment">//...</span>
<span class="keyword">function</span> <span class="name">removeTelegraphSignal</span>() {
<span class="name">relay</span>.<span class="name">messageReceived</span>.<span class="name">disconnect</span>(<span class="name">sendToTelegraph</span>)
}
}</pre>
<h4>Signal to Signal Connect</h4>
<p>By connecting signals to other signals, the <tt>connect()</tt> method can form different signal chains.</p>
<pre class="qml"><span class="type">Rectangle</span> {
<span class="name">id</span>: <span class="name">forwarder</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
signal <span class="type">send</span>()
<span class="name">onSend</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Send clicked&quot;</span>)
<span class="type">MouseArea</span> {
<span class="name">id</span>: <span class="name">mousearea</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;MouseArea clicked&quot;</span>)
}
<span class="name">Component</span>.onCompleted: {
<span class="name">mousearea</span>.<span class="name">clicked</span>.<span class="name">connect</span>(<span class="name">send</span>)
}
}</pre>
<p>Whenever the MouseArea <tt>clicked</tt> signal is emitted, the <tt>send</tt> signal will automatically be emitted as well.</p>
<pre class="cpp">output:
MouseArea clicked
Send clicked</pre>
<!-- @@@qtqml-syntax-signals.html -->
