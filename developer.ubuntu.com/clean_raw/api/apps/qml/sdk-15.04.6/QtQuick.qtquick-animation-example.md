---
Title: QtQuick.qtquick-animation-example
---

# QtQuick.qtquick-animation-example

<span class="subtitle"></span>
<!-- $$$animation-description -->
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/f4a4722c-c347-444a-88e4-c1ebba5bfa39-../qtquick-animation-example/images/qml-animations-example.png" alt="" /></p><p><i>Animation</i> is a collection of small QML examples relating to animation. Each example is a small QML file emphasizing a particular type or feature.</p>
<p>For more information about animations, visit <a href="QtQuick.qtquick-statesanimations-topic.md">Important Concepts in Qt Quick - States, Transitions and Animations</a>.</p>
<h2 id="running-the-example">Running the Example</h2>
<p>To run the example from Qt Creator, open the <b>Welcome</b> mode and select the example from <b>Examples</b>. For more information, visit Building and Running an Example.</p>
<h2 id="coloranimation">ColorAnimation</h2>
<p><i>ColorAnimation</i> uses color animations to fade a sky from day to night.</p>
<pre class="qml"><span class="name">gradient</span>: <span class="name">Gradient</span> {
<span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> {
<span class="name">position</span>: <span class="number">0.0</span>
SequentialAnimation on <span class="name">color</span> {
<span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
<span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">from</span>: <span class="string">&quot;#14148c&quot;</span>; <span class="name">to</span>: <span class="string">&quot;#0E1533&quot;</span>; <span class="name">duration</span>: <span class="number">5000</span> }
<span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">from</span>: <span class="string">&quot;#0E1533&quot;</span>; <span class="name">to</span>: <span class="string">&quot;#14148c&quot;</span>; <span class="name">duration</span>: <span class="number">5000</span> }
}
}
<span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span> {
<span class="name">position</span>: <span class="number">1.0</span>
SequentialAnimation on <span class="name">color</span> {
<span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
<span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">from</span>: <span class="string">&quot;#14aaff&quot;</span>; <span class="name">to</span>: <span class="string">&quot;#437284&quot;</span>; <span class="name">duration</span>: <span class="number">5000</span> }
<span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">from</span>: <span class="string">&quot;#437284&quot;</span>; <span class="name">to</span>: <span class="string">&quot;#14aaff&quot;</span>; <span class="name">duration</span>: <span class="number">5000</span> }
}
}
}</pre>
<h2 id="propertyanimation">PropertyAnimation</h2>
<p><i>PropertyAnimation</i> uses number animations to bounce a circle up and down.</p>
<pre class="qml"><span class="comment">// Animate the y property. Setting loops to Animation.Infinite makes the</span>
<span class="comment">// animation repeat indefinitely, otherwise it would only run once.</span>
SequentialAnimation on <span class="name">y</span> {
<span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
<span class="comment">// Move from minHeight to maxHeight in 300ms, using the OutExpo easing function</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {
<span class="name">from</span>: <span class="name">smiley</span>.<span class="name">minHeight</span>; <span class="name">to</span>: <span class="name">smiley</span>.<span class="name">maxHeight</span>
<span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutExpo</span>; <span class="name">duration</span>: <span class="number">300</span>
}
<span class="comment">// Then move back to minHeight in 1 second, using the OutBounce easing function</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {
<span class="name">from</span>: <span class="name">smiley</span>.<span class="name">maxHeight</span>; <span class="name">to</span>: <span class="name">smiley</span>.<span class="name">minHeight</span>
<span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutBounce</span>; <span class="name">duration</span>: <span class="number">1000</span>
}
<span class="comment">// Then pause for 500ms</span>
<span class="type"><a href="QtQuick.PauseAnimation.md">PauseAnimation</a></span> { <span class="name">duration</span>: <span class="number">500</span> }
}</pre>
<h2 id="animators">Animators</h2>
<p><i>Animators</i> uses animators to bounce an icon up and down.</p>
<pre class="qml"><span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
<span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
<span class="type"><a href="QtQuick.ParallelAnimation.md">ParallelAnimation</a></span> {
<span class="type"><a href="QtQuick.YAnimator.md">YAnimator</a></span> {
<span class="name">target</span>: <span class="name">smiley</span>;
<span class="name">from</span>: <span class="name">smiley</span>.<span class="name">minHeight</span>;
<span class="name">to</span>: <span class="name">smiley</span>.<span class="name">maxHeight</span>
<span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutExpo</span>;
<span class="name">duration</span>: <span class="number">300</span>
}
<span class="type"><a href="QtQuick.ScaleAnimator.md">ScaleAnimator</a></span> {
<span class="name">target</span>: <span class="name">shadow</span>
<span class="name">from</span>: <span class="number">1</span>
<span class="name">to</span>: <span class="number">0.5</span>
<span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutExpo</span>;
<span class="name">duration</span>: <span class="number">300</span>
}
}
<span class="type"><a href="QtQuick.ParallelAnimation.md">ParallelAnimation</a></span> {
<span class="type"><a href="QtQuick.YAnimator.md">YAnimator</a></span> {
<span class="name">target</span>: <span class="name">smiley</span>;
<span class="name">from</span>: <span class="name">smiley</span>.<span class="name">maxHeight</span>;
<span class="name">to</span>: <span class="name">smiley</span>.<span class="name">minHeight</span>
<span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutBounce</span>;
<span class="name">duration</span>: <span class="number">1000</span>
}
<span class="type"><a href="QtQuick.ScaleAnimator.md">ScaleAnimator</a></span> {
<span class="name">target</span>: <span class="name">shadow</span>
<span class="name">from</span>: <span class="number">0.5</span>
<span class="name">to</span>: <span class="number">1</span>
<span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutBounce</span>;
<span class="name">duration</span>: <span class="number">1000</span>
}
}
}
<span class="type"><a href="QtQuick.PauseAnimation.md">PauseAnimation</a></span> { <span class="name">duration</span>: <span class="number">500</span> }
<span class="name">running</span>: <span class="number">true</span>
<span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
}</pre>
<h2 id="behaviors">Behaviors</h2>
<p><i>Behaviors</i> uses behaviors to move a rectangle to where you click.</p>
<pre class="qml"><span class="comment">// Set an 'elastic' behavior on the focusRect's y property.</span>
Behavior on <span class="name">y</span> {
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutElastic</span>; <span class="name">easing</span>.amplitude: <span class="number">3.0</span>; <span class="name">easing</span>.period: <span class="number">2.0</span>; <span class="name">duration</span>: <span class="number">300</span> }
}</pre>
<h2 id="wiggly-text">Wiggly Text</h2>
<p><i>Wiggly Text</i> demonstrates using more complex behaviors to animate and wiggle some text around as you drag it. It does this by assigning a complex binding to each letter:</p>
<pre class="qml">            <span class="name">x</span>: <span class="name">follow</span> ? <span class="name">follow</span>.<span class="name">x</span> <span class="operator">+</span> <span class="name">follow</span>.<span class="name">width</span> : <span class="name">container</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">6</span>
<span class="name">y</span>: <span class="name">follow</span> ? <span class="name">follow</span>.<span class="name">y</span> : <span class="name">container</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">2</span></pre>
<p>Then, it uses behaviors to animate the movement of each letter:</p>
<pre class="qml">            Behavior on <span class="name">x</span> { <span class="name">enabled</span>: <span class="name">container</span>.<span class="name">animated</span>; <span class="type"><a href="QtQuick.SpringAnimation.md">SpringAnimation</a></span> { <span class="name">spring</span>: <span class="number">3</span>; <span class="name">damping</span>: <span class="number">0.3</span>; <span class="name">mass</span>: <span class="number">1.0</span> } }
Behavior on <span class="name">y</span> { <span class="name">enabled</span>: <span class="name">container</span>.<span class="name">animated</span>; <span class="type"><a href="QtQuick.SpringAnimation.md">SpringAnimation</a></span> { <span class="name">spring</span>: <span class="number">3</span>; <span class="name">damping</span>: <span class="number">0.3</span>; <span class="name">mass</span>: <span class="number">1.0</span> } }</pre>
<h2 id="tv-tennis">Tv Tennis</h2>
<p><i>Tv Tennis</i> uses complex behaviors to make the paddles follow a ball to simulate an infinite tennis game. Again, a binding which depends on other values is applied to the position and a behavior provided the animation.</p>
<pre class="qml"><span class="name">y</span>: <span class="name">ball</span>.<span class="name">direction</span> <span class="operator">==</span> <span class="string">'left'</span> ? <span class="name">ball</span>.<span class="name">y</span> <span class="operator">-</span> <span class="number">45</span> : <span class="name">page</span>.<span class="name">height</span><span class="operator">/</span><span class="number">2</span> <span class="operator">-</span><span class="number">45</span>;
Behavior on <span class="name">y</span> { <span class="type"><a href="QtQuick.SpringAnimation.md">SpringAnimation</a></span>{ <span class="name">velocity</span>: <span class="number">300</span> } }</pre>
<h2 id="easing-curves">Easing Curves</h2>
<p><i>Easing Curves</i> shows off all the easing curves available in Qt Quick animations.</p>
<h2 id="states">States</h2>
<p><i>States</i> demonstrates how the properties of an item can vary between <a href="QtQuick.qtquick-statesanimations-states.md">states</a>.</p>
<p>It defines several states:</p>
<pre class="qml"><span class="comment">// In state 'middleRight', move the image to middleRightRect</span>
<span class="type"><a href="QtQuick.State.md">State</a></span> {
<span class="name">name</span>: <span class="string">&quot;middleRight&quot;</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">userIcon</span>; <span class="name">x</span>: <span class="name">middleRightRect</span>.<span class="name">x</span>; <span class="name">y</span>: <span class="name">middleRightRect</span>.<span class="name">y</span> }
},
<span class="comment">// In state 'bottomLeft', move the image to bottomLeftRect</span>
<span class="type"><a href="QtQuick.State.md">State</a></span> {
<span class="name">name</span>: <span class="string">&quot;bottomLeft&quot;</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">userIcon</span>; <span class="name">x</span>: <span class="name">bottomLeftRect</span>.<span class="name">x</span>; <span class="name">y</span>: <span class="name">bottomLeftRect</span>.<span class="name">y</span>  }
}</pre>
<h2 id="transitions">Transitions</h2>
<p><i>Transitions</i> takes the States example and animates the property changes by setting transitions:</p>
<pre class="qml"><span class="comment">// Transitions define how the properties change when the item moves between each state</span>
<span class="name">transitions</span>: [
<span class="comment">// When transitioning to 'middleRight' move x,y over a duration of 1 second,</span>
<span class="comment">// with OutBounce easing function.</span>
<span class="type"><a href="QtQuick.Transition.md">Transition</a></span> {
<span class="name">from</span>: <span class="string">&quot;*&quot;</span>; <span class="name">to</span>: <span class="string">&quot;middleRight&quot;</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutBounce</span>; <span class="name">duration</span>: <span class="number">1000</span> }
},
<span class="comment">// When transitioning to 'bottomLeft' move x,y over a duration of 2 seconds,</span>
<span class="comment">// with InOutQuad easing function.</span>
<span class="type"><a href="QtQuick.Transition.md">Transition</a></span> {
<span class="name">from</span>: <span class="string">&quot;*&quot;</span>; <span class="name">to</span>: <span class="string">&quot;bottomLeft&quot;</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span>; <span class="name">duration</span>: <span class="number">2000</span> }
},
<span class="comment">// For any other state changes move x,y linearly over duration of 200ms.</span>
<span class="type"><a href="QtQuick.Transition.md">Transition</a></span> {
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">duration</span>: <span class="number">200</span> }
}</pre>
<h2 id="pathanimation">PathAnimation</h2>
<p><i>PathAnimation</i> animates an image along a bezier curve using a <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#pathanimation">PathAnimation</a>.</p>
<pre class="qml"><span class="type"><a href="QtQuick.PathAnimation.md">PathAnimation</a></span> {
<span class="name">id</span>: <span class="name">pathAnim</span>
<span class="name">duration</span>: <span class="number">2000</span>
<span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InQuad</span>
<span class="name">target</span>: <span class="name">box</span>
<span class="name">orientation</span>: <span class="name">PathAnimation</span>.<span class="name">RightFirst</span>
<span class="name">anchorPoint</span>: <span class="name">Qt</span>.<span class="name">point</span>(<span class="name">box</span>.<span class="name">width</span><span class="operator">/</span><span class="number">2</span>, <span class="name">box</span>.<span class="name">height</span><span class="operator">/</span><span class="number">2</span>)
<span class="name">path</span>: <span class="name">Path</span> {
<span class="name">startX</span>: <span class="number">50</span>; <span class="name">startY</span>: <span class="number">50</span>
<span class="type"><a href="QtQuick.PathCubic.md">PathCubic</a></span> {
<span class="name">x</span>: <span class="name">window</span>.<span class="name">width</span> <span class="operator">-</span> <span class="number">50</span>
<span class="name">y</span>: <span class="name">window</span>.<span class="name">height</span> <span class="operator">-</span> <span class="number">50</span>
<span class="name">control1X</span>: <span class="name">x</span>; <span class="name">control1Y</span>: <span class="number">50</span>
<span class="name">control2X</span>: <span class="number">50</span>; <span class="name">control2Y</span>: <span class="name">y</span>
}
<span class="name">onChanged</span>: <span class="name">canvas</span>.<span class="name">requestPaint</span>()
}
}</pre>
<h2 id="pathinterpolator">PathInterpolator</h2>
<p><i>PathInterpolator</i> animates an image along the same bezier curve, using a <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#pathinterpolator">PathInterpolator</a> instead.</p>
<pre class="qml"><span class="type"><a href="QtQuick.PathInterpolator.md">PathInterpolator</a></span> {
<span class="name">id</span>: <span class="name">motionPath</span>
<span class="name">path</span>: <span class="name">Path</span> {
<span class="name">startX</span>: <span class="number">50</span>; <span class="name">startY</span>: <span class="number">50</span>
<span class="type"><a href="QtQuick.PathCubic.md">PathCubic</a></span> {
<span class="name">x</span>: <span class="name">window</span>.<span class="name">width</span> <span class="operator">-</span> <span class="number">50</span>
<span class="name">y</span>: <span class="name">window</span>.<span class="name">height</span> <span class="operator">-</span> <span class="number">50</span>
<span class="name">control1X</span>: <span class="name">x</span>; <span class="name">control1Y</span>: <span class="number">50</span>
<span class="name">control2X</span>: <span class="number">50</span>; <span class="name">control2Y</span>: <span class="name">y</span>
}
<span class="name">onChanged</span>: <span class="name">canvas</span>.<span class="name">requestPaint</span>()
}
SequentialAnimation on <span class="name">progress</span> {
<span class="name">running</span>: <span class="number">true</span>
<span class="name">loops</span>: -<span class="number">1</span>
<span class="type"><a href="QtQuick.PauseAnimation.md">PauseAnimation</a></span> { <span class="name">duration</span>: <span class="number">1000</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {
<span class="name">id</span>: <span class="name">progressAnim</span>
<span class="name">running</span>: <span class="number">false</span>
<span class="name">from</span>: <span class="number">0</span>; <span class="name">to</span>: <span class="number">1</span>
<span class="name">duration</span>: <span class="number">2000</span>
<span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InQuad</span>
}
}
}</pre>
<p>Files:</p>
<ul>
<li>animation/animation.qml</li>
<li>animation/basics/animators.qml</li>
<li>animation/basics/color-animation.qml</li>
<li>animation/basics/property-animation.qml</li>
<li>animation/behaviors/SideRect.qml</li>
<li>animation/behaviors/behavior-example.qml</li>
<li>animation/behaviors/tvtennis.qml</li>
<li>animation/behaviors/wigglytext.qml</li>
<li>animation/easing/easing.qml</li>
<li>animation/pathanimation/pathanimation.qml</li>
<li>animation/pathinterpolator/pathinterpolator.qml</li>
<li>animation/states/states.qml</li>
<li>animation/states/transitions.qml</li>
<li>animation/main.cpp</li>
<li>animation/animation.pro</li>
<li>animation/animation.qmlproject</li>
<li>animation/animation.qrc</li>
</ul>
<!-- @@@animation -->
