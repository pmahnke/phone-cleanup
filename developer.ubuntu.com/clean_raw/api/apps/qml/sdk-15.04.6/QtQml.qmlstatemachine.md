---
Title: QtQml.qmlstatemachine
---

# QtQml.qmlstatemachine

<span class="subtitle"></span>
<!-- $$$qmlstatemachine.html-description -->
<p>The Declarative State Machine Framework provides types for creating and executing state graphs in QML. It is similar to the C++ State Machine framework based on Harel's Statecharts: A visual formalism for complex systems, which is also the basis for UML state diagrams. Like its C++ counterpart, the framework provides an API and execution model based on State Chart XML (SCXML) to embed the elements and semantics of statecharts in QML applications.</p>
<p>For user interfaces with multiple visual states, independent of the application's logical state, consider using QML States and Transitions.</p>
<p>These following QML types are provided by framework to create event-driven state machines:</p>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p><a href="QtQml.FinalState.md">FinalState</a></p></td><td class="tblDescr"><p>Provides a final state</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="QtQml.HistoryState.md">HistoryState</a></p></td><td class="tblDescr"><p>Type provides a means of returning to a previously active substate</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="QtQml.SignalTransition.md">SignalTransition</a></p></td><td class="tblDescr"><p>Type provides a transition based on a Qt signal</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="QtQml.State.md">State</a></p></td><td class="tblDescr"><p>Provides a general-purpose state for StateMachine</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="QtQml.StateMachine.md">StateMachine</a></p></td><td class="tblDescr"><p>Provides a hierarchical finite state machine</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="QtQml.TimeoutTransition.md">TimeoutTransition</a></p></td><td class="tblDescr"><p>Type provides a transition based on a timer</p></td></tr>
</table>
<h2 id="using-both-qtquick-and-qtqml-statemachine-imports">Using both QtQuick and QtQml.StateMachine imports</h2>
<p><b>Warning:</b> If you're attempting to import both QtQuick and <i>QtQml.StateMachine</i> in one single QML file, make sure to import <i>QtQml.StateMachine</i> <i>last</i>. This way, the <i>State</i> type is provided by the Declarative State Machine Framework and not by QtQuick:</p>
<pre class="qml">import QtQuick 2.0
import QtQml.StateMachine 1.0
<span class="type"><a href="QtQml.StateMachine.md">StateMachine</a></span> {
<span class="type"><a href="QtQml.State.md">State</a></span> {
<span class="comment">// okay, is of type QtQml.StateMachine.State</span>
}
}</pre>
<p>Alternatively, you can import <i>QtQml.StateMachine</i> into a separate namespace to avoid any ambiguity with QtQuick's <i>State</i> item:</p>
<pre class="qml">import QtQuick 2.0
import QtQml.StateMachine 1.0 as DSM
<span class="type">DSM</span>.StateMachine {
<span class="type">DSM</span>.State {
<span class="comment">// ...</span>
}
}</pre>
<h2 id="a-simple-state-machine">A Simple State Machine</h2>
<p>To demonstrate the core functionality of the State Machine API, let's look at an example: A state machine with three states, <code>s1</code>, <code>s2</code> and <code>s3</code>. The state machine is controlled by a single Button; when the button is clicked, the machine transitions to another state. Initially, the state machine is in state <code>s1</code>. The following is a state chart showing the different states in our example.</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/fd5593f9-f4fb-422d-83bc-6ab6988f59f3-../qmlstatemachine/images/statemachine-button.png" alt="" /></p><p>The following snippet shows the code needed to create such a state machine.</p>
<pre class="qml">    <span class="type">Button</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">id</span>: <span class="name">button</span>
<span class="comment">// change the button label to the active state id</span>
<span class="name">text</span>: <span class="name">s1</span>.<span class="name">active</span> ? <span class="string">&quot;s1&quot;</span> : <span class="name">s2</span>.<span class="name">active</span> ? <span class="string">&quot;s2&quot;</span> : <span class="string">&quot;s3&quot;</span>
}
<span class="type"><a href="QtQml.StateMachine.md">StateMachine</a></span> {
<span class="name">id</span>: <span class="name">stateMachine</span>
<span class="comment">// set the initial state</span>
<span class="name">initialState</span>: <span class="name">s1</span>
<span class="comment">// start the state machine</span>
<span class="name">running</span>: <span class="number">true</span>
<span class="type"><a href="QtQml.State.md">State</a></span> {
<span class="name">id</span>: <span class="name">s1</span>
<span class="comment">// create a transition from s1 to s2 when the button is clicked</span>
<span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
<span class="name">targetState</span>: <span class="name">s2</span>
<span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
}
<span class="comment">// do something when the state enters/exits</span>
<span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s1 entered&quot;</span>)
<span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s1 exited&quot;</span>)
}
<span class="type"><a href="QtQml.State.md">State</a></span> {
<span class="name">id</span>: <span class="name">s2</span>
<span class="comment">// create a transition from s2 to s3 when the button is clicked</span>
<span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
<span class="name">targetState</span>: <span class="name">s3</span>
<span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
}
<span class="comment">// do something when the state enters/exits</span>
<span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s2 entered&quot;</span>)
<span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s2 exited&quot;</span>)
}
<span class="type"><a href="QtQml.State.md">State</a></span> {
<span class="name">id</span>: <span class="name">s3</span>
<span class="comment">// create a transition from s3 to s1 when the button is clicked</span>
<span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
<span class="name">targetState</span>: <span class="name">s1</span>
<span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
}
<span class="comment">// do something when the state enters/exits</span>
<span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s3 entered&quot;</span>)
<span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s3 exited&quot;</span>)
}
}</pre>
<p>The state machine runs asynchronously to become part of your application's event loop.</p>
<h2 id="state-machines-that-finish">State Machines That Finish</h2>
<p>The state machine defined in the previous section never finishes. In order for a state machine to be able to finish, it needs to have a top-level <i>final</i> state (<a href="QtQml.FinalState.md">FinalState</a> object). When the state machine enters the top-level final state, the machine emits the <a href="QtQml.State.md#finished-signal">finished</a> signal and halts.</p>
<p>All you need to do to introduce a final state in the graph is create a <a href="QtQml.FinalState.md">FinalState</a> object and use it as the target of one or more transitions.</p>
<h2 id="sharing-transitions">Sharing Transitions</h2>
<p>Assume we wanted the user to be able to quit the application at any time by clicking a Quit button. In order to achieve this, we need to create a final state and make it the target of a transition associated with the Quit button's <i>clicked()</i> signal. We could add a transition for each state; however, this seems redundant and one would also have to remember to add such a transition from every new state that is added in the future.</p>
<p>We can achieve the same behavior (namely that clicking the Quit button quits the state machine, regardless of which state the state machine is in) by grouping states <code>s1</code>, <code>s2</code> and <code>s3</code>. This is done by creating a new top-level state and making the three original states children of the new state. The following diagram shows the new state machine.</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/969d3873-19ee-4d00-aecd-dde6f5279326-../qmlstatemachine/images/statemachine-button-nested.png" alt="" /></p><p>The three original states have been renamed <code>s11</code>, <code>s12</code> and <code>s13</code> to reflect that they are now childrens of the new top-level state, <code>s1</code>. Child states implicitly inherit the transitions of their parent state. This means it is now sufficient to add a single transition from <code>s1</code> to the final state, <code>s2</code>. New states added to <code>s1</code> will automatically inherit this transition.</p>
<p>All that's needed to group states is to specify the proper parent when the state is created. You also need to specify which of the child states is the initial one (the child state the state machine should enter when the parent state is the target of a transition).</p>
<pre class="qml">    <span class="type">Row</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">spacing</span>: <span class="number">2</span>
<span class="type">Button</span> {
<span class="name">id</span>: <span class="name">button</span>
<span class="comment">// change the button label to the active state id</span>
<span class="name">text</span>: <span class="name">s11</span>.<span class="name">active</span> ? <span class="string">&quot;s11&quot;</span> : <span class="name">s12</span>.<span class="name">active</span> ? <span class="string">&quot;s12&quot;</span> : <span class="string">&quot;s13&quot;</span>
}
<span class="type">Button</span> {
<span class="name">id</span>: <span class="name">quitButton</span>
<span class="name">text</span>: <span class="string">&quot;quit&quot;</span>
}
}
<span class="type"><a href="QtQml.StateMachine.md">StateMachine</a></span> {
<span class="name">id</span>: <span class="name">stateMachine</span>
<span class="comment">// set the initial state</span>
<span class="name">initialState</span>: <span class="name">s1</span>
<span class="comment">// start the state machine</span>
<span class="name">running</span>: <span class="number">true</span>
<span class="type"><a href="QtQml.State.md">State</a></span> {
<span class="name">id</span>: <span class="name">s1</span>
<span class="comment">// set the initial state</span>
<span class="name">initialState</span>: <span class="name">s11</span>
<span class="comment">// create a transition from s1 to s2 when the button is clicked</span>
<span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
<span class="name">targetState</span>: <span class="name">s2</span>
<span class="name">signal</span>: <span class="name">quitButton</span>.<span class="name">clicked</span>
}
<span class="comment">// do something when the state enters/exits</span>
<span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s1 entered&quot;</span>)
<span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s1 exited&quot;</span>)
<span class="type"><a href="QtQml.State.md">State</a></span> {
<span class="name">id</span>: <span class="name">s11</span>
<span class="comment">// create a transition from s11 to s12 when the button is clicked</span>
<span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
<span class="name">targetState</span>: <span class="name">s12</span>
<span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
}
<span class="comment">// do something when the state enters/exits</span>
<span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s11 entered&quot;</span>)
<span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s11 exited&quot;</span>)
}
<span class="type"><a href="QtQml.State.md">State</a></span> {
<span class="name">id</span>: <span class="name">s12</span>
<span class="comment">// create a transition from s12 to s13 when the button is clicked</span>
<span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
<span class="name">targetState</span>: <span class="name">s13</span>
<span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
}
<span class="comment">// do something when the state enters/exits</span>
<span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s12 entered&quot;</span>)
<span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s12 exited&quot;</span>)
}
<span class="type"><a href="QtQml.State.md">State</a></span> {
<span class="name">id</span>: <span class="name">s13</span>
<span class="comment">// create a transition from s13 to s11 when the button is clicked</span>
<span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
<span class="name">targetState</span>: <span class="name">s11</span>
<span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
}
<span class="comment">// do something when the state enters/exits</span>
<span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s13 entered&quot;</span>)
<span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s13 exited&quot;</span>)
}
}
<span class="type"><a href="QtQml.FinalState.md">FinalState</a></span> {
<span class="name">id</span>: <span class="name">s2</span>
<span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s2 entered&quot;</span>)
<span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s2 exited&quot;</span>)
}
<span class="name">onFinished</span>: <span class="name">Qt</span>.<span class="name">quit</span>()
}</pre>
<p>In this case we want the application to quit when the state machine is finished, so the machine's <i>finished()</i> signal is connected to the application's <i>quit()</i> slot.</p>
<p>A child state can override an inherited transition. For example, the following code adds a transition that effectively causes the Quit button to be ignored when the state machine is in state, <code>s12</code>.</p>
<pre class="qml">            <span class="type"><a href="QtQml.State.md">State</a></span> {
<span class="name">id</span>: <span class="name">s12</span>
<span class="comment">// create a transition from s12 to s13 when the button is clicked</span>
<span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
<span class="name">targetState</span>: <span class="name">s13</span>
<span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
}
<span class="comment">// ignore Quit button when we are in state 12</span>
<span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
<span class="name">targetState</span>: <span class="name">s12</span>
<span class="name">signal</span>: <span class="name">quitButton</span>.<span class="name">clicked</span>
}
<span class="comment">// do something when the state enters/exits</span>
<span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s12 entered&quot;</span>)
<span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s12 exited&quot;</span>)
}</pre>
<p>A transition can have any state as its target irrespective of where the target state is in the state hierarchy.</p>
<h2 id="using-history-states">Using History States</h2>
<p>Imagine that we wanted to add an &quot;interrupt&quot; mechanism to the example discussed in the previous section; the user should be able to click a button to have the state machine perform some non-related task, after which the state machine should resume whatever it was doing before (i.e&#x2e; return to the old state, which is one of the three states in this case).</p>
<p>Such behavior can easily be modeled using <i>history states</i>. A history state (<a href="QtQml.HistoryState.md">HistoryState</a> object) is a pseudo-state that represents the child state that the parent state was in before it exited last.</p>
<p>A history state is created as a child of the state for which we wish to record the current child state; when the state machine detects the presence of such a state at runtime, it automatically records the current (real) child state when the parent state exits. A transition to the history state is in fact a transition to the child state that the state machine had previously saved; the state machine automatically &quot;forwards&quot; the transition to the real child state.</p>
<p>The following diagram shows the state machine after the interrupt mechanism has been added.</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/2dc77499-268e-4b72-9e26-85655782f636-../qmlstatemachine/images/statemachine-button-history.png" alt="" /></p><p>The following code shows how it can be implemented; in this example we simply display a message box when <code>s3</code> is entered, then immediately return to the previous child state of <code>s1</code> via the history state.</p>
<pre class="qml">    <span class="type">Row</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">spacing</span>: <span class="number">2</span>
<span class="type">Button</span> {
<span class="name">id</span>: <span class="name">button</span>
<span class="comment">// change the button label to the active state id</span>
<span class="name">text</span>: <span class="name">s11</span>.<span class="name">active</span> ? <span class="string">&quot;s11&quot;</span> : <span class="name">s12</span>.<span class="name">active</span> ? <span class="string">&quot;s12&quot;</span> :  <span class="name">s13</span>.<span class="name">active</span> ? <span class="string">&quot;s13&quot;</span> : <span class="string">&quot;s3&quot;</span>
}
<span class="type">Button</span> {
<span class="name">id</span>: <span class="name">interruptButton</span>
<span class="name">text</span>: <span class="name">s1</span>.<span class="name">active</span> ? <span class="string">&quot;Interrupt&quot;</span> : <span class="string">&quot;Resume&quot;</span>
}
<span class="type">Button</span> {
<span class="name">id</span>: <span class="name">quitButton</span>
<span class="name">text</span>: <span class="string">&quot;quit&quot;</span>
}
}
<span class="type"><a href="QtQml.StateMachine.md">StateMachine</a></span> {
<span class="name">id</span>: <span class="name">stateMachine</span>
<span class="comment">// set the initial state</span>
<span class="name">initialState</span>: <span class="name">s1</span>
<span class="comment">// start the state machine</span>
<span class="name">running</span>: <span class="number">true</span>
<span class="type"><a href="QtQml.State.md">State</a></span> {
<span class="name">id</span>: <span class="name">s1</span>
<span class="comment">// set the initial state</span>
<span class="name">initialState</span>: <span class="name">s11</span>
<span class="comment">// create a transition from s1 to s2 when the button is clicked</span>
<span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
<span class="name">targetState</span>: <span class="name">s2</span>
<span class="name">signal</span>: <span class="name">quitButton</span>.<span class="name">clicked</span>
}
<span class="comment">// do something when the state enters/exits</span>
<span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s1 entered&quot;</span>)
<span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s1 exited&quot;</span>)
<span class="type"><a href="QtQml.State.md">State</a></span> {
<span class="name">id</span>: <span class="name">s11</span>
<span class="comment">// create a transition from s1 to s2 when the button is clicked</span>
<span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
<span class="name">targetState</span>: <span class="name">s12</span>
<span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
}
<span class="comment">// do something when the state enters/exits</span>
<span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s11 entered&quot;</span>)
<span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s11 exited&quot;</span>)
}
<span class="type"><a href="QtQml.State.md">State</a></span> {
<span class="name">id</span>: <span class="name">s12</span>
<span class="comment">// create a transition from s2 to s3 when the button is clicked</span>
<span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
<span class="name">targetState</span>: <span class="name">s13</span>
<span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
}
<span class="comment">// do something when the state enters/exits</span>
<span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s12 entered&quot;</span>)
<span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s12 exited&quot;</span>)
}
<span class="type"><a href="QtQml.State.md">State</a></span> {
<span class="name">id</span>: <span class="name">s13</span>
<span class="comment">// create a transition from s3 to s1 when the button is clicked</span>
<span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
<span class="name">targetState</span>: <span class="name">s1</span>
<span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
}
<span class="comment">// do something when the state enters/exits</span>
<span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s13 entered&quot;</span>)
<span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s13 exited&quot;</span>)
}
<span class="comment">// create a transition from s1 to s3 when the button is clicked</span>
<span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
<span class="name">targetState</span>: <span class="name">s3</span>
<span class="name">signal</span>: <span class="name">interruptButton</span>.<span class="name">clicked</span>
}
<span class="type"><a href="QtQml.HistoryState.md">HistoryState</a></span> {
<span class="name">id</span>: <span class="name">s1h</span>
}
}
<span class="type"><a href="QtQml.FinalState.md">FinalState</a></span> {
<span class="name">id</span>: <span class="name">s2</span>
<span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s2 entered&quot;</span>)
<span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s2 exited&quot;</span>)
}
<span class="type"><a href="QtQml.State.md">State</a></span> {
<span class="name">id</span>: <span class="name">s3</span>
<span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
<span class="name">targetState</span>: <span class="name">s1h</span>
<span class="name">signal</span>: <span class="name">interruptButton</span>.<span class="name">clicked</span>
}
<span class="comment">// do something when the state enters/exits</span>
<span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s3 entered&quot;</span>)
<span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;s3 exited&quot;</span>)
}
<span class="name">onFinished</span>: <span class="name">Qt</span>.<span class="name">quit</span>()
}</pre>
<h2 id="using-parallel-states">Using Parallel States</h2>
<p>Assume that you wanted to model a set of mutually exclusive properties of a car in a single state machine. Let's say the properties we are interested in are Clean vs Dirty, and Moving vs Not moving. It would take four mutually exclusive states and eight transitions to represent the states and freely move between all possible combinations as shown in the following state chart.</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/d139d916-8036-43d4-9472-ca1bbb7ff36e-../qmlstatemachine/images/statemachine-nonparallel.png" alt="" /></p><p>If we added a third property (say, Red vs Blue), the total number of states would double, to eight; and if we added a fourth property (say, Enclosed vs Convertible), the total number of states would double again, to 16.</p>
<p>This exponential increase can be reduced using parallel states, which enables linear growth in the number of states and transitions as we add more properties. Furthermore, states can be added to or removed from the parallel state without affecting any of their sibling states. The following state chart shows the different paralles states for the car example.</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/6b2b711b-aaa1-4952-bca4-cdb3a41c417b-../qmlstatemachine/images/statemachine-parallel.png" alt="" /></p><p>To create a parallel state group, set childMode to QState.ParallelStates.</p>
<pre class="qml"><span class="type"><a href="QtQml.State.md">State</a></span> {
<span class="name">id</span>: <span class="name">s1</span>
<span class="name">childMode</span>: <span class="name">QState</span>.<span class="name">ParallelStates</span>
<span class="type"><a href="QtQml.State.md">State</a></span> {
<span class="name">id</span>: <span class="name">s11</span>
}
<span class="type"><a href="QtQml.State.md">State</a></span> {
<span class="name">id</span>: <span class="name">s12</span>
}
}</pre>
<p>When a parallel state group is entered, all its child states will be simultaneously entered. Transitions within the individual child states operate normally. However, any of the child states may take a transition which exits the parent state. When this happens, the parent state and all of its child states are exited.</p>
<p>The parallelism in the State Machine framework follows an interleaved semantics. All parallel operations will be executed in a single, atomic step of the event processing, so no event can interrupt the parallel operations. However, events will still be processed sequentially, as the machine itself is single threaded. For example, consider the situation where there are two transitions that exit the same parallel state group, and their conditions become true simultaneously. In this case, the event that is processed last of the two will not have any effect.</p>
<h2 id="exiting-a-composite-state">Exiting a Composite State</h2>
<p>A child state can be final (a <a href="QtQml.FinalState.md">FinalState</a> object); when a final child state is entered, the parent state emits the <a href="QtQml.State.md#finished-signal">State::finished</a> signal. The following diagram shows a composite state <code>s1</code> which does some processing before entering a final state:</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/d64cfc1b-7641-4147-8f13-5ff6c5f6f761-../qmlstatemachine/images/statemachine-finished.png" alt="" /></p><p>When <code>s1</code> 's final state is entered, <code>s1</code> will automatically emit <a href="QtQml.State.md#finished-signal">finished</a>. We use a signal transition to cause this event to trigger a state change:</p>
<pre class="qml"><span class="type"><a href="QtQml.State.md">State</a></span> {
<span class="name">id</span>: <span class="name">s1</span>
<span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
<span class="name">targetState</span>: <span class="name">s2</span>
<span class="name">signal</span>: <span class="name">s1</span>.<span class="name">finished</span>
}
}</pre>
<p>Using final states in composite states is useful when you want to hide the internal details of a composite state. The outside world should be able to enter the state and get a notification when the state has completed its work, without the need to know the internal details. This is a very powerful abstraction and encapsulation mechanism when building complex (deeply nested) state machines. (In the above example, you could of course create a transition directly from <code>s1</code> 's <code>done</code> state rather than relying on <code>s1</code> 's finished() signal, but with the consequence that implementation details of <code>s1</code> are exposed and depended on).</p>
<p>For parallel state groups, the <a href="QtQml.State.md#finished-signal">State::finished</a> signal is emitted when <i>all</i> the child states have entered final states.</p>
<h2 id="targetless-transitions">Targetless Transitions</h2>
<p>A transition need not have a target state. A transition without a target can be triggered the same way as any other transition; the difference is that it doesn't cause any state changes. This allows you to react to a signal or event when your machine is in a certain state, without having to leave that state. For example:</p>
<pre class="qml"><span class="type">Button</span> {
<span class="name">id</span>: <span class="name">button</span>
<span class="name">text</span>: <span class="string">&quot;button&quot;</span>
<span class="type"><a href="QtQml.StateMachine.md">StateMachine</a></span> {
<span class="name">id</span>: <span class="name">stateMachine</span>
<span class="name">initialState</span>: <span class="name">s1</span>
<span class="name">running</span>: <span class="number">true</span>
<span class="type"><a href="QtQml.State.md">State</a></span> {
<span class="name">id</span>: <span class="name">s1</span>
<span class="type"><a href="QtQml.SignalTransition.md">SignalTransition</a></span> {
<span class="name">signal</span>: <span class="name">button</span>.<span class="name">clicked</span>
<span class="name">onTriggered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;button pressed&quot;</span>)
}
}
}
}</pre>
<p>The &quot;button pressed&quot; message will be displayed each time the button is clicked, but the state machine will remain in its current state (s1). If the target state were explicitly set to s1, s1 would be exited and re-entered each time (the <a href="QtQml.QAbstractState.md#entered-signal">QAbstractState::entered</a> and <a href="QtQml.QAbstractState.md#exited-signal">QAbstractState::exited</a> signals would be emitted).</p>
<h2 id="related-information">Related Information</h2>
<ul>
<li>Declarative State Machine QML Types</li>
<li>The State Machine Framework</li>
</ul>
<!-- @@@qmlstatemachine.html -->
