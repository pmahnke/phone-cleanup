---
Title: QtQuick.Keys
---

# QtQuick.Keys

<span class="subtitle"></span>
<!-- $$$Keys-brief -->
<p>Provides key handling to Items More...</p>
<!-- @@@Keys -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import QtQuick 2.2</tt></td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#enabled-prop">enabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#forwardTo-prop">forwardTo</a></b></b> : list&lt;Object&gt;</li>
<li class="fn"><b><b><a href="#priority-prop">priority</a></b></b> : enumeration</li>
</ul>
<h2>Signals</h2>
<ul>
<li class="fn"><b><b><a href="#asteriskPressed-signal">asteriskPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#backPressed-signal">backPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#backtabPressed-signal">backtabPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#callPressed-signal">callPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#cancelPressed-signal">cancelPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#context1Pressed-signal">context1Pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#context2Pressed-signal">context2Pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#context3Pressed-signal">context3Pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#context4Pressed-signal">context4Pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#deletePressed-signal">deletePressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#digit0Pressed-signal">digit0Pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#digit1Pressed-signal">digit1Pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#digit2Pressed-signal">digit2Pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#digit3Pressed-signal">digit3Pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#digit4Pressed-signal">digit4Pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#digit5Pressed-signal">digit5Pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#digit6Pressed-signal">digit6Pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#digit7Pressed-signal">digit7Pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#digit8Pressed-signal">digit8Pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#digit9Pressed-signal">digit9Pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#downPressed-signal">downPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#enterPressed-signal">enterPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#escapePressed-signal">escapePressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#flipPressed-signal">flipPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#hangupPressed-signal">hangupPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#leftPressed-signal">leftPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#menuPressed-signal">menuPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#noPressed-signal">noPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#pressed-signal">pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#released-signal">released</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#returnPressed-signal">returnPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#rightPressed-signal">rightPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#selectPressed-signal">selectPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#spacePressed-signal">spacePressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#tabPressed-signal">tabPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#upPressed-signal">upPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#volumeDownPressed-signal">volumeDownPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#volumeUpPressed-signal">volumeUpPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#yesPressed-signal">yesPressed</a></b></b>(KeyEvent <i>event</i>)</li>
</ul>
<!-- $$$Keys-description -->
<h2>Detailed Description</h2>
<p>All visual primitives support key handling via the Keys attached property. Keys can be handled via the onPressed and onReleased signal properties.</p>
<p>The signal properties have a <a href="QtQuick.KeyEvent.md">KeyEvent</a> parameter, named <i>event</i> which contains details of the event. If a key is handled <i>event.accepted</i> should be set to true to prevent the event from propagating up the item hierarchy.</p>
<h2>Example Usage</h2>
<p>The following example shows how the general onPressed handler can be used to test for a certain key; in this case, the left cursor key:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">Keys</span>.onPressed: {
<span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_Left</span>) {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;move left&quot;</span>);
<span class="name">event</span>.<span class="name">accepted</span> <span class="operator">=</span> <span class="number">true</span>;
}
}
}</pre>
<p>Some keys may alternatively be handled via specific signal properties, for example <i>onSelectPressed</i>. These handlers automatically set <i>event.accepted</i> to true.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">Keys</span>.onLeftPressed: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;move left&quot;</span>)
}</pre>
<p>See Qt.Key for the list of keyboard codes.</p>
<h2>Key Handling Priorities</h2>
<p>The Keys attached property can be configured to handle key events before or after the item it is attached to. This makes it possible to intercept events in order to override an item's default behavior, or act as a fallback for keys not handled by the item.</p>
<p>If <a href="#priority-prop">priority</a> is Keys.BeforeItem (default) the order of key event processing is:</p>
<ol class="1">
<li>Items specified in <tt>forwardTo</tt></li>
<li>specific key handlers, e.g&#x2e; onReturnPressed</li>
<li>onPressed, onReleased handlers</li>
<li>Item specific key handling, e.g&#x2e; <a href="QtQuick.TextInput.md">TextInput</a> key handling</li>
<li>parent item</li>
</ol>
<p>If priority is Keys.AfterItem the order of key event processing is:</p>
<ol class="1">
<li>Item specific key handling, e.g&#x2e; <a href="QtQuick.TextInput.md">TextInput</a> key handling</li>
<li>Items specified in <tt>forwardTo</tt></li>
<li>specific key handlers, e.g&#x2e; onReturnPressed</li>
<li>onPressed, onReleased handlers</li>
<li>parent item</li>
</ol>
<p>If the event is accepted during any of the above steps, key propagation stops.</p>
<p><b>See also </b><a href="QtQuick.KeyEvent.md">KeyEvent</a> and <a href="QtQuick.KeyNavigation.md">KeyNavigation attached property</a>.</p>
<!-- @@@Keys -->
<h2>Property Documentation</h2>
<!-- $$$enabled -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">enabled</span> : <span class="type">bool</span></p></td></tr></table><p>This flags enables key handling if true (default); otherwise no key handlers will be called.</p>
<!-- @@@enabled -->
<br/>
<!-- $$$forwardTo -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">forwardTo</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td></tr></table><p>This property provides a way to forward key presses, key releases, and keyboard input coming from input methods to other items. This can be useful when you want one item to handle some keys (e.g&#x2e; the up and down arrow keys), and another item to handle other keys (e.g&#x2e; the left and right arrow keys). Once an item that has been forwarded keys accepts the event it is no longer forwarded to items later in the list.</p>
<p>This example forwards key events to two lists:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">id</span>: <span class="name">list1</span>
<span class="comment">// ...</span>
}
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">id</span>: <span class="name">list2</span>
<span class="comment">// ...</span>
}
<span class="name">Keys</span>.forwardTo: [<span class="name">list1</span>, <span class="name">list2</span>]
<span class="name">focus</span>: <span class="number">true</span>
}</pre>
<!-- @@@forwardTo -->
<br/>
<!-- $$$priority -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">priority</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property determines whether the keys are processed before or after the attached item's own key handling.</p>
<ul>
<li>Keys.BeforeItem (default) - process the key events before normal item key processing. If the event is accepted it will not be passed on to the item.</li>
<li>Keys.AfterItem - process the key events after normal item key handling. If the item accepts the key event it will not be handled by the Keys attached property handler.</li>
</ul>
<!-- @@@priority -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$asteriskPressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">asteriskPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Asterisk '*' has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onAsteriskPressed</tt>.</p>
<!-- @@@asteriskPressed -->
<br/>
<!-- $$$backPressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">backPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Back key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onBackPressed</tt>.</p>
<!-- @@@backPressed -->
<br/>
<!-- $$$backtabPressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">backtabPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Shift+Tab key combination (Backtab) has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onBacktabPressed</tt>.</p>
<!-- @@@backtabPressed -->
<br/>
<!-- $$$callPressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">callPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Call key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onCallPressed</tt>.</p>
<!-- @@@callPressed -->
<br/>
<!-- $$$cancelPressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">cancelPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Cancel key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onCancelPressed</tt>.</p>
<!-- @@@cancelPressed -->
<br/>
<!-- $$$context1Pressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">context1Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Context1 key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onContext1Pressed</tt>.</p>
<!-- @@@context1Pressed -->
<br/>
<!-- $$$context2Pressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">context2Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Context2 key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onContext2Pressed</tt>.</p>
<!-- @@@context2Pressed -->
<br/>
<!-- $$$context3Pressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">context3Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Context3 key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onContext3Pressed</tt>.</p>
<!-- @@@context3Pressed -->
<br/>
<!-- $$$context4Pressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">context4Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Context4 key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onContext4Pressed</tt>.</p>
<!-- @@@context4Pressed -->
<br/>
<!-- $$$deletePressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">deletePressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Delete key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onDeletePressed</tt>.</p>
<!-- @@@deletePressed -->
<br/>
<!-- $$$digit0Pressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">digit0Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the digit '0' has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onDigit0Pressed</tt>.</p>
<!-- @@@digit0Pressed -->
<br/>
<!-- $$$digit1Pressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">digit1Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the digit '1' has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onDigit1Pressed</tt>.</p>
<!-- @@@digit1Pressed -->
<br/>
<!-- $$$digit2Pressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">digit2Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the digit '2' has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onDigit2Pressed</tt>.</p>
<!-- @@@digit2Pressed -->
<br/>
<!-- $$$digit3Pressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">digit3Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the digit '3' has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onDigit3Pressed</tt>.</p>
<!-- @@@digit3Pressed -->
<br/>
<!-- $$$digit4Pressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">digit4Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the digit '4' has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onDigit4Pressed</tt>.</p>
<!-- @@@digit4Pressed -->
<br/>
<!-- $$$digit5Pressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">digit5Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the digit '5' has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onDigit5Pressed</tt>.</p>
<!-- @@@digit5Pressed -->
<br/>
<!-- $$$digit6Pressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">digit6Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the digit '6' has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onDigit6Pressed</tt>.</p>
<!-- @@@digit6Pressed -->
<br/>
<!-- $$$digit7Pressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">digit7Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the digit '7' has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onDigit7Pressed</tt>.</p>
<!-- @@@digit7Pressed -->
<br/>
<!-- $$$digit8Pressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">digit8Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the digit '8' has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onDigit8Pressed</tt>.</p>
<!-- @@@digit8Pressed -->
<br/>
<!-- $$$digit9Pressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">digit9Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the digit '9' has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onDigit9Pressed</tt>.</p>
<!-- @@@digit9Pressed -->
<br/>
<!-- $$$downPressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">downPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Down arrow has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onDownPressed</tt>.</p>
<!-- @@@downPressed -->
<br/>
<!-- $$$enterPressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">enterPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Enter key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onEnterPressed</tt>.</p>
<!-- @@@enterPressed -->
<br/>
<!-- $$$escapePressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">escapePressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Escape key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onEscapePressed</tt>.</p>
<!-- @@@escapePressed -->
<br/>
<!-- $$$flipPressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">flipPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Flip key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onFlipPressed</tt>.</p>
<!-- @@@flipPressed -->
<br/>
<!-- $$$hangupPressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">hangupPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Hangup key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onHangupPressed</tt>.</p>
<!-- @@@hangupPressed -->
<br/>
<!-- $$$leftPressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">leftPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Left arrow has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onLeftPressed</tt>.</p>
<!-- @@@leftPressed -->
<br/>
<!-- $$$menuPressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">menuPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Menu key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onMenuPressed</tt>.</p>
<!-- @@@menuPressed -->
<br/>
<!-- $$$noPressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">noPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the No key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onNoPressed</tt>.</p>
<!-- @@@noPressed -->
<br/>
<!-- $$$pressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when a key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onPressed</tt>.</p>
<!-- @@@pressed -->
<br/>
<!-- $$$released -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">released</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when a key has been released. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onReleased</tt>.</p>
<!-- @@@released -->
<br/>
<!-- $$$returnPressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">returnPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Return key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onReturnPressed</tt>.</p>
<!-- @@@returnPressed -->
<br/>
<!-- $$$rightPressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">rightPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Right arrow has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onRightPressed</tt>.</p>
<!-- @@@rightPressed -->
<br/>
<!-- $$$selectPressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">selectPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Select key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onSelectPressed</tt>.</p>
<!-- @@@selectPressed -->
<br/>
<!-- $$$spacePressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">spacePressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Space key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onSpacePressed</tt>.</p>
<!-- @@@spacePressed -->
<br/>
<!-- $$$tabPressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">tabPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Tab key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onTabPressed</tt>.</p>
<!-- @@@tabPressed -->
<br/>
<!-- $$$upPressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">upPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Up arrow has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onUpPressed</tt>.</p>
<!-- @@@upPressed -->
<br/>
<!-- $$$volumeDownPressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">volumeDownPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the VolumeDown key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onVolumeDownPressed</tt>.</p>
<!-- @@@volumeDownPressed -->
<br/>
<!-- $$$volumeUpPressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">volumeUpPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the VolumeUp key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onVolumeUpPressed</tt>.</p>
<!-- @@@volumeUpPressed -->
<br/>
<!-- $$$yesPressed -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="name">yesPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Yes key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <tt>onYesPressed</tt>.</p>
<!-- @@@yesPressed -->
<br/>
