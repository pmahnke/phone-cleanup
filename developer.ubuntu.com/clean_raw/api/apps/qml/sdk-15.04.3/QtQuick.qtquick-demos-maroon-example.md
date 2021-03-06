---
Title: QtQuick.qtquick-demos-maroon-example
---

# QtQuick.qtquick-demos-maroon-example

<span class="subtitle"></span>
<!-- $$$demos/maroon-description -->
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/8c61d7f4-ae82-4201-b42e-5988eb377ef1-../qtquick-demos-maroon-example/images/qtquick-demo-maroon-med-2.png" alt="" /></p><p><i>Maroon in Trouble</i> demonstrates QML features that are useful when developing games:</p>
<ul>
<li>Using custom QML types to create different screens for different stages of the game.</li>
<li>Using the <a href="QtQuick.Item.md">Item</a> and <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.3/QtQuick.imageelements/#image">Image</a> types to construct a game background.</li>
<li>Using the <a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a>, <a href="QtQuick.NumberAnimation.md">NumberAnimation</a>, <a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a>, <a href="QtQuick.Particles.Emitter.md">Emitter</a>, and <a href="QtQuick.Particles.Wander.md">Wander</a> types to animate background objects.</li>
<li>Using the Timer and <a href="QtQuick.Repeater.md">Repeater</a> types to display a countdown sequence before starting the game.</li>
<li>Using a custom QML type with custom properties to construct a game board.</li>
<li>Using the <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.3/QtQuick.imageelements/#spritesequence">SpriteSequence</a> and <a href="QtQuick.Sprite.md">Sprite</a> types to add animated objects to the game board.</li>
<li>Using a custom QML type that uses the <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.3/QtQuick.imageelements/#image">Image</a> type with some custom properties to add a menu where the players can buy objects.</li>
<li>Using custom properties with private functions to keep track of game statistics and a custom QML type to display them to the players.</li>
<li>Using the <a href="QtQuick.State.md">State</a> type with JavaScript functions to manage game states.</li>
<li>Using the SoundEffect type to play individual sound effects depending on the object type and the action applied to the object.</li>
<li>Using signal handlers to specify keyboard shortcuts for some game actions.</li>
<li>Using resource files to package game resources for deployment and delivery.</li>
</ul>
<h2 id="running-the-example">Running the Example</h2>
<p>To run the example from Qt Creator, open the <b>Welcome</b> mode and select the example from <b>Examples</b>. For more information, visit Building and Running an Example.</p>
<h2 id="adding-screens">Adding Screens</h2>
<p>In the Maroon in Trouble app, we use the following custom types that are each defined in a separate .qml file to create the game screens:</p>
<ul>
<li>NewGameScreen.qml</li>
<li>GameCanvas.qml</li>
<li>GameOverScreen.qml</li>
</ul>
<p>To use the custom types, we add an import statement to the main QML file, maroon.qml that imports the folder called <code>content</code> where the types are located:</p>
<pre class="qml">import &quot;content&quot;</pre>
<p>We use the screen types at different stages of the game. The NewGameScreen type is used to create the screen that appears when the players start the app. In NewGameScreen.qml, we use an <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.3/QtQuick.imageelements/#image">Image</a> type to create a New Game button that the players can press to start a new game.</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/d5bc08ca-36b6-4be0-80f3-3dce56758636-../qtquick-demos-maroon-example/images/qtquick-demo-maroon-med-1.png" alt="" /></p><p>Tapping the button initiates a countdown timer that triggers the creation of the game canvas by using the GameCanvas type. Another Timer type spawns mobs of fish inside bubbles that the players must free before they reach the surface. The players can tap on the screen to open a menu where they can buy different types of weapons (melee, ranged, and bombs) to burst the bubbles.</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/3653a713-a5f9-49b5-bd78-9c0c2aa391e1-../qtquick-demos-maroon-example/images/qtquick-demo-maroon-med-2.png" alt="" /></p><p>When the game finishes, a screen created by using the GameOverScreen type appears. On this screen, the players can see their score and start a new game.</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/81305e7b-ff06-47c5-bb10-3d591911c5da-../qtquick-demos-maroon-example/images/qtquick-demo-maroon-med-3.jpg" alt="" /></p><p>The screens are all created on the same background and use some of the same images and animations.</p>
<h2 id="constructing-the-background">Constructing the Background</h2>
<p>In the maroon.qml file, we use an <a href="QtQuick.Item.md">Item</a> type with the id <code>root</code> and a fixed width and height to create a main window for the game:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">root</span>
<span class="name">width</span>: <span class="number">320</span>
<span class="name">height</span>: <span class="number">480</span>
property <span class="type">var</span> <span class="name">gameState</span>
property <span class="type">bool</span> <span class="name">passedSplash</span>: <span class="number">false</span></pre>
<p>We declare two custom properties for the root item, <code>gameState</code> and <code>passedSplash</code> that we will use later to manage game states.</p>
<p>We use an <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.3/QtQuick.imageelements/#image">Image</a> item to display the game background image:</p>
<pre class="qml">    <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">source</span>:<span class="string">&quot;content/gfx/background.png&quot;</span>
<span class="name">anchors</span>.bottom: <span class="name">view</span>.<span class="name">bottom</span></pre>
<p>We want to be able to load the background image only once at app startup and still use different scenes for the game screens. Therefore, background.png is three times the length of the root item and displays a scene that stretches from the bottom of sea to the sky above the horizon.</p>
<p>We use the <code>anchors.bottom</code> property to anchor the background image to the bottom of the <a href="QtQuick.qtquick-positioning-layouts.md#column">Column</a> layout that we use to position the screens:</p>
<pre class="qml">    <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">id</span>: <span class="name">view</span>
<span class="name">y</span>: -(<span class="name">height</span> <span class="operator">-</span> <span class="number">480</span>)
<span class="name">width</span>: <span class="number">320</span>
<span class="type">GameOverScreen</span> { <span class="name">gameCanvas</span>: <span class="name">canvas</span> }</pre>
<p>We set a negative value for the <code>y</code> property to set the first scene at the bottom of the sea. We calculate the position by subtracting the height of a screen from the <code>height</code> property.</p>
<p>Within the column layout, we use an <a href="QtQuick.Item.md">Item</a> type to add objects to the background. Within the item, we use <a href="QtQuick.qtquick-positioning-layouts.md#row">Row</a> layout objects to position <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.3/QtQuick.imageelements/#image">Image</a> objects that display waves on the game canvas and the game over screen:</p>
<pre class="qml">        <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">canvasArea</span>
<span class="name">width</span>: <span class="number">320</span>
<span class="name">height</span>: <span class="number">480</span>
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="name">height</span>: <span class="name">childrenRect</span>.<span class="name">height</span>
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">id</span>: <span class="name">wave</span>
<span class="name">y</span>: <span class="number">30</span>
<span class="name">source</span>:<span class="string">&quot;content/gfx/wave.png&quot;</span>
}
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">y</span>: <span class="number">30</span>
<span class="name">source</span>:<span class="string">&quot;content/gfx/wave.png&quot;</span>
}
...
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="name">opacity</span>: <span class="number">0.5</span>
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">id</span>: <span class="name">wave2</span>
<span class="name">y</span>: <span class="number">25</span>
<span class="name">source</span>: <span class="string">&quot;content/gfx/wave.png&quot;</span>
}
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">y</span>: <span class="number">25</span>
<span class="name">source</span>: <span class="string">&quot;content/gfx/wave.png&quot;</span>
}</pre>
<p>The second row of waves is positioned on the y axis with a slight offset to the first row. We also use the <code>opacity</code> property to make the waves appear lighter in color than the first two waves, which gives the background some depth.</p>
<p>We use <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.3/QtQuick.imageelements/#image">Image</a> objects to also display sunlight on the new game screen and on the game canvas:</p>
<pre class="qml">            <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">source</span>: <span class="string">&quot;content/gfx/sunlight.png&quot;</span>
<span class="name">opacity</span>: <span class="number">0.02</span>
<span class="name">y</span>: <span class="number">0</span>
<span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
...
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">source</span>: <span class="string">&quot;content/gfx/sunlight.png&quot;</span>
<span class="name">opacity</span>: <span class="number">0.04</span>
<span class="name">y</span>: <span class="number">20</span>
<span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span></pre>
<p>We set the <code>opacity</code> property of the images to <code>0.02</code> and <code>0.04</code> to give some depth to the rays of sunshine. We use the <code>y</code> property to position the images at fixed locations on the y axis and the <code>anchors.horizontalCenter</code> property to center them horizontally in relation to their parent.</p>
<p>We use an <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.3/QtQuick.imageelements/#image">Image</a> type to display an image that adds a deepening shadow to the background:</p>
<pre class="qml">            <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">source</span>: <span class="string">&quot;content/gfx/grid.png&quot;</span>
<span class="name">opacity</span>: <span class="number">0.5</span>
}</pre>
<p>We set the <code>opacity</code> property of the image to <code>0.5</code> to make the background visible behind the shadow.</p>
<p>To make the background more interesting, we animate some of the objects we added to it.</p>
<h2 id="animating-background-objects">Animating Background Objects</h2>
<p>We use <a href="QtQuick.NumberAnimation.md">NumberAnimation</a> to move the waves horizontally across the screen in opposite directions and <a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a> with <a href="QtQuick.NumberAnimation.md">NumberAnimation</a> to move them up and down.</p>
<p>We apply the number animation to the <code>x</code> property of <code>wave</code> as a property value source to animate the x value from its current value to the <code>-(wave.width)</code>, over 16 seconds. We set the <code>loops</code> property to <code>Animation.Infinite</code> to repeat the animation indefinitely:</p>
<pre class="qml">                NumberAnimation on <span class="name">x</span> { <span class="name">from</span>: <span class="number">0</span>; <span class="name">to</span>: -(<span class="name">wave</span>.<span class="name">width</span>); <span class="name">duration</span>: <span class="number">16000</span>; <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span> }</pre>
<p>We apply the sequential animation to the <code>y</code> property of the image as a property value source to animate the y value. We use one number animation to animate the image from the y position of two below the value of y to two above it, over 1600 milliseconds. We use another number animation to subsequently animate the image in the opposite direction, again over 1600 milliseconds. The animation is repeated indefinitely:</p>
<pre class="qml">                SequentialAnimation on <span class="name">y</span> {
<span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>: <span class="name">y</span> <span class="operator">-</span> <span class="number">2</span>; <span class="name">to</span>: <span class="name">y</span> <span class="operator">+</span> <span class="number">2</span>; <span class="name">duration</span>: <span class="number">1600</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>: <span class="name">y</span> <span class="operator">+</span> <span class="number">2</span>; <span class="name">to</span>: <span class="name">y</span> <span class="operator">-</span> <span class="number">2</span>; <span class="name">duration</span>: <span class="number">1600</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
}</pre>
<p>We use the easing curve of the type <code>Easing.InOutQuad</code> for a quintic (t^5) function to accelerate the motion until halfway and then decelerate it.</p>
<p>We use sequential animation and number animation to animate <code>wave2</code> similarly to <code>wave</code>, but in the opposite direction:</p>
<pre class="qml">                SequentialAnimation on <span class="name">y</span> {
<span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>: <span class="name">y</span> <span class="operator">+</span> <span class="number">2</span>; <span class="name">to</span>: <span class="name">y</span> <span class="operator">-</span> <span class="number">2</span>; <span class="name">duration</span>: <span class="number">1600</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>: <span class="name">y</span> <span class="operator">-</span> <span class="number">2</span>; <span class="name">to</span>: <span class="name">y</span> <span class="operator">+</span> <span class="number">2</span>; <span class="name">duration</span>: <span class="number">1600</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
}</pre>
<p>We use sequential animation to rotate the rays of sunlight in degrees clockwise around an origin point that we set to <code>Item.Top</code> in the <code>transformOrigin</code> property. The animation is repeated indefinitely:</p>
<pre class="qml">                <span class="name">transformOrigin</span>: <span class="name">Item</span>.<span class="name">Top</span>
SequentialAnimation on <span class="name">rotation</span> {
<span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>: -<span class="number">10</span>; <span class="name">to</span>: <span class="number">10</span>; <span class="name">duration</span>: <span class="number">8000</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutSine</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>: <span class="number">10</span>; <span class="name">to</span>: -<span class="number">10</span>; <span class="name">duration</span>: <span class="number">8000</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutSine</span> }
}</pre>
<p>We use one number animation to rotate the image from <code>-10</code> degrees to <code>10</code> degrees over 8 seconds and another to subsequently rotate it from <code>10</code> degrees to <code>-10</code> degrees over the same duration.</p>
<p>We use the easing curve of the type <code>Easing.InOutSine</code> for a sinusoidal (sin(t)) function to accelerate the motion until halfway and then decelerate it.</p>
<p>We use sequential animation and number animation to animate another sunlight.png image similarly, but in the opposite direction:</p>
<pre class="qml">                <span class="name">transformOrigin</span>: <span class="name">Item</span>.<span class="name">Top</span>
SequentialAnimation on <span class="name">rotation</span> {
<span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>: <span class="number">10</span>; <span class="name">to</span>: -<span class="number">10</span>; <span class="name">duration</span>: <span class="number">8000</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutSine</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>: -<span class="number">10</span>; <span class="name">to</span>: <span class="number">10</span>; <span class="name">duration</span>: <span class="number">8000</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutSine</span> }
}</pre>
<p>For examples of using <a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a> and <a href="QtQuick.NumberAnimation.md">NumberAnimation</a> on the <code>x</code> and <code>y</code> properties and the <code>width</code> and <code>height</code> properties, see NewGameScreen.qml.</p>
<h2 id="emitting-particles">Emitting Particles</h2>
<p>In addition to animation, we use particles to generate motion on the game screens. We use the <a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a> QML type in maroon.qml to make bubbles appear at the bottom of the new game screen and game canvas and slowly float towards the top on varying trajectories.</p>
<p>To use the <a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a> type, we must import Qt Quick Particles:</p>
<pre class="qml">import QtQuick.Particles 2.0</pre>
<p>To have the particles appear on the game background, we place the <a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a> type within the <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.3/QtQuick.imageelements/#image">Image</a> type that displays the game background:</p>
<pre class="qml">    <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">source</span>:<span class="string">&quot;content/gfx/background.png&quot;</span>
<span class="name">anchors</span>.bottom: <span class="name">view</span>.<span class="name">bottom</span>
<span class="type"><a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a></span> {
<span class="name">id</span>: <span class="name">particles</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span></pre>
<p>In the <a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a>, we use an <a href="QtQuick.Particles.Emitter.md">Emitter</a> type to emit particles from the location of the emitter at the rate of two per second with the life span of 15 seconds:</p>
<pre class="qml">            <span class="type"><a href="QtQuick.Particles.Emitter.md">Emitter</a></span> {
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="number">150</span>
<span class="name">anchors</span>.bottom: <span class="name">parent</span>.<span class="name">bottom</span>
<span class="name">anchors</span>.bottomMargin: <span class="number">3</span>
<span class="name">startTime</span>: <span class="number">15000</span>
<span class="name">emitRate</span>: <span class="number">2</span>
<span class="name">lifeSpan</span>: <span class="number">15000</span>
<span class="name">acceleration</span>: <span class="name">PointDirection</span>{ <span class="name">y</span>: -<span class="number">6</span>; <span class="name">xVariation</span>: <span class="number">2</span>; <span class="name">yVariation</span>: <span class="number">2</span> }
<span class="name">size</span>: <span class="number">24</span>
<span class="name">sizeVariation</span>: <span class="number">16</span>
}</pre>
<p>The <code>acceleration</code> property uses the <a href="QtQuick.Particles.PointDirection.md">PointDirection</a> type to specify random variation of the x and y coordinates, so that the bubbles appear inside a rectangular area around the emitter that is anchored to the bottom of the image.</p>
<p>The <code>size</code> property sets the base size of the particles at the beginning of their life to 24 pixels and the <code>sizeVariation</code> property randomly increases or decreases the particle size by up to 16 pixels, so that we get bubbles in different sizes.</p>
<p>As emitters have no visualization, we use the <a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a> type to render the catch.png image at the particle location:</p>
<pre class="qml">            <span class="type"><a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a></span> {
<span class="name">id</span>: <span class="name">bubble</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">source</span>: <span class="string">&quot;content/gfx/catch.png&quot;</span>
<span class="name">opacity</span>: <span class="number">0.25</span>
}</pre>
<p>A <a href="QtQuick.Particles.Wander.md">Wander</a> type applies a random trajectory to the particles, so that the bubbles follow random routes from the bottom to the top.</p>
<pre class="qml">            <span class="type"><a href="QtQuick.Particles.Wander.md">Wander</a></span> {
<span class="name">xVariance</span>: <span class="number">25</span>;
<span class="name">pace</span>: <span class="number">25</span>;
}</pre>
<p>For another example of using the <a href="QtQuick.Particles.ParticleSystem.md">ParticleSystem</a> type, see the GameOverScreen.qml file, where an <a href="QtQuick.Particles.ImageParticle.md">ImageParticle</a> type is used to make clouds move across the sky.</p>
<h2 id="using-timers">Using Timers</h2>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/a11c6ed1-8557-4c35-a226-97896698e7e7-../qtquick-demos-maroon-example/images/qtquick-demo-maroon-med-4.jpg" alt="" /></p><p>In maroon.qml, we use the Timer type with a <a href="QtQuick.Repeater.md">Repeater</a> type to display a countdown sequence before using another timer to start a new game. Both timers are started simultaneously in the <code>&quot;gameOn&quot;</code> state, that is when the players tap the New Game button and <code>passedSplash</code> is <code>true</code>. This is explained in more detail in <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.3/QtQuick.demos-maroon/#managing-game-states">Managing Game States</a>.</p>
<p>We use the <code>countdownTimer</code> to display the countdown sequence:</p>
<pre class="qml">            <span class="type">Timer</span> {
<span class="name">id</span>: <span class="name">countdownTimer</span>
<span class="name">interval</span>: <span class="number">1000</span>
<span class="name">running</span>: <span class="name">root</span>.<span class="name">countdown</span> <span class="operator">&lt;</span> <span class="number">5</span>
<span class="name">repeat</span>: <span class="number">true</span>
<span class="name">onTriggered</span>: root.countdown++
}</pre>
<p>The <code>onTriggered</code> signal handler is called when the timer is triggered to increment the value of the <code>countdown</code> custom property.</p>
<p>We set the <code>repeat</code> property to <code>true</code> to specify that the timer is triggered at the interval of 1 second as long as the value of <code>countdown</code> is less than 5.</p>
<p>The <code>countdown</code> property is defined in the root item with an initial value of <code>10</code>, so that <code>countdownTimer</code> is not running by default:</p>
<pre class="qml">    property <span class="type">int</span> <span class="name">countdown</span>: <span class="number">10</span></pre>
<p>Each time the timer is triggered, an image from the countdown sequence is displayed. We use a <a href="QtQuick.Repeater.md">Repeater</a> type to instantiate the <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.3/QtQuick.imageelements/#image">Image</a> delegate in the context of the repeater's parent, <code>canvasArea</code> item, seeded with data from the <code>model</code>:</p>
<pre class="qml">            <span class="type"><a href="QtQuick.Repeater.md">Repeater</a></span> {
<span class="name">model</span>: [<span class="string">&quot;content/gfx/text-blank.png&quot;</span>, <span class="string">&quot;content/gfx/text-3.png&quot;</span>, <span class="string">&quot;content/gfx/text-2.png&quot;</span>, <span class="string">&quot;content/gfx/text-1.png&quot;</span>, <span class="string">&quot;content/gfx/text-go.png&quot;</span>]
<span class="name">delegate</span>: <span class="name">Image</span> {
<span class="name">visible</span>: <span class="name">root</span>.<span class="name">countdown</span> <span class="operator">&lt;=</span> <span class="name">index</span>
<span class="name">opacity</span>: <span class="name">root</span>.<span class="name">countdown</span> <span class="operator">==</span> <span class="name">index</span> ? <span class="number">0.5</span> : <span class="number">0.1</span>
<span class="name">scale</span>: <span class="name">root</span>.<span class="name">countdown</span> <span class="operator">&gt;=</span> <span class="name">index</span> ? <span class="number">1.0</span> : <span class="number">0.0</span>
<span class="name">source</span>: <span class="name">modelData</span>
Behavior on <span class="name">opacity</span> { <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {} }
Behavior on <span class="name">scale</span> { <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {} }
}
}</pre>
<p>We scale the images from <code>0.0</code> to <code>1.0</code> and use the <code>visible</code> property to hide the images for the previous steps as the countdown progresses. We also raise the opacity of the image that matches the current countdown step, keeping the others nearly transparent.</p>
<p>By animating the changes in the <code>opacity</code> and <code>scale</code> properties using a <a href="QtQuick.Behavior.md">Behavior</a> type, we achieve a countdown sequence where numbers zoom in towards the players.</p>
<h2 id="constructing-the-game-board">Constructing the Game Board</h2>
<p>To construct the game board, we use the GameCanvas custom type that is defined in GameCanvas.qml.</p>
<p>In maroon.qml, we use the GameCanvas type to display the game canvas at the position of 32 on the x axis and 20 pixels from the bottom of its parent item, <code>canvasArea</code>:</p>
<pre class="qml">            <span class="type">GameCanvas</span> {
<span class="name">id</span>: <span class="name">canvas</span>
<span class="name">anchors</span>.bottom: <span class="name">parent</span>.<span class="name">bottom</span>
<span class="name">anchors</span>.bottomMargin: <span class="number">20</span>
<span class="name">x</span>: <span class="number">32</span>
<span class="name">focus</span>: <span class="number">true</span>
}</pre>
<p>We set the <code>focus</code> property to <code>true</code> to give <code>canvas</code> active focus on startup.</p>
<p>In GameCanvas.qml, we use an <a href="QtQuick.Item.md">Item</a> type and define custom properties for it to create a grid of equally sized squares divided to 4 columns on 6 rows:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">grid</span>
property <span class="type">int</span> <span class="name">squareSize</span>: <span class="number">64</span>
property <span class="type">int</span> <span class="name">rows</span>: <span class="number">6</span>
property <span class="type">int</span> <span class="name">cols</span>: <span class="number">4</span>
property <span class="type"><a href="QtQuick.Item.md">Item</a></span> <span class="name">canvas</span>: <span class="name">grid</span></pre>
<p>We use the custom properties to set the <code>width</code> and <code>height</code> of the <code>grid</code> item as the amount of columns and rows multiplied by square size:</p>
<pre class="qml">    <span class="name">width</span>: <span class="name">cols</span> <span class="operator">*</span> <span class="name">squareSize</span>
<span class="name">height</span>: <span class="name">rows</span> <span class="operator">*</span> <span class="name">squareSize</span></pre>
<p>We use an <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.3/QtQuick.imageelements/#image">Image</a> type with a <a href="QtQuick.MouseArea.md">MouseArea</a> type to display a help button that the players can tap to view an image that contains instructions for playing the game:</p>
<pre class="qml">    <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">id</span>: <span class="name">helpButton</span>
<span class="name">z</span>: <span class="number">1010</span>
<span class="name">source</span>: <span class="string">&quot;gfx/button-help.png&quot;</span>
<span class="keyword">function</span> <span class="name">goAway</span>() {
<span class="name">helpMA</span>.<span class="name">enabled</span> <span class="operator">=</span> <span class="number">false</span>;
<span class="name">helpButton</span>.<span class="name">opacity</span> <span class="operator">=</span> <span class="number">0</span>;
}
<span class="keyword">function</span> <span class="name">comeBack</span>() {
<span class="name">helpMA</span>.<span class="name">enabled</span> <span class="operator">=</span> <span class="number">true</span>;
<span class="name">helpButton</span>.<span class="name">opacity</span> <span class="operator">=</span> <span class="number">1</span>;
}
Behavior on <span class="name">opacity</span> { <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {} }
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">id</span>: <span class="name">helpMA</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: {<span class="name">helpImage</span>.<span class="name">visible</span> <span class="operator">=</span> <span class="number">true</span>; <span class="name">helpButton</span>.<span class="name">visible</span> <span class="operator">=</span> <span class="number">false</span>;}
}
<span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
<span class="name">anchors</span>.bottom: <span class="name">parent</span>.<span class="name">bottom</span>
<span class="name">anchors</span>.bottomMargin: <span class="number">0</span>
}</pre>
<p>We declare the <code>goAway()</code> private function to disable the mouse area and make the image fully transparent and a <code>comeBack()</code> function to enable the mouse area and make the button fully opaque. We use a <a href="QtQuick.Behavior.md">Behavior</a> type on the <code>opacity</code> property to apply the default number animation when the value of <code>opacity</code> changes.</p>
<p>When the players tap the help button, the <code>onClicked</code> signal handler is called to hide the help button by setting the <code>helpButton.visible</code> property to <code>false</code> and to show the help image by setting the <code>helpImage.visible</code> property to <code>false</code>.</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/6c0966b0-dce7-4236-9e60-04bba034fa37-../qtquick-demos-maroon-example/images/qtquick-demo-maroon-med-6.jpg" alt="" /></p><p>We use anchoring to position the help button at the bottom center of the game canvas.</p>
<p>We use another <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.3/QtQuick.imageelements/#image">Image</a> type to display the help image:</p>
<pre class="qml">    <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">id</span>: <span class="name">helpImage</span>
<span class="name">z</span>: <span class="number">1010</span>
<span class="name">source</span>: <span class="string">&quot;gfx/help.png&quot;</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">visible</span>: <span class="number">false</span>
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">helpImage</span>.<span class="name">visible</span> <span class="operator">=</span> <span class="number">false</span>;
}
}</pre>
<p>To hide the help image when the players tap it, the <code>onClicked</code> signal handler within the <a href="QtQuick.MouseArea.md">MouseArea</a> type is called to set the <code>helpImage.visible</code> property to <code>true</code>.</p>
<p>To ensure that the images are placed on top when they are visible, we set a high value for their <code>z</code> property.</p>
<p>The following sections describe how to use timers to add animated objects to the game board and how to create a menu dialog from which the players can add more objects to it.</p>
<h2 id="animating-objects-on-the-game-board">Animating Objects on the Game Board</h2>
<p>We use sprite animation to animate objects on the game board. The Qt Quick <a href="QtQuick.qtquick-effects-sprites.md">sprite engine</a> is a stochastic state machine combined with the ability to chop up images containing multiple frames of an animation.</p>
<h3 >Spawning Fish</h3>
<p>We use a Timer element with the <code>tick()</code> function in GameCanvas.qml to spawn mobs of fish in waves at an increasing rate, starting at 16 milliseconds:</p>
<pre class="qml">    <span class="type">Timer</span> {
<span class="name">interval</span>: <span class="number">16</span>
<span class="name">running</span>: <span class="number">true</span>
<span class="name">repeat</span>: <span class="number">true</span>
<span class="name">onTriggered</span>: <span class="name">Logic</span>.<span class="name">tick</span>()
}</pre>
<p>We use the MobBase custom type that is defined in MobBase.qml to animate mobs of fish that swim inside bubbles. We use an <a href="QtQuick.Item.md">Item</a> type with custom properties and private functions to create the fish and the bubbles and to define the actions that can be applied to them:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span>  {
<span class="name">id</span>: <span class="name">container</span>
property <span class="type">string</span> <span class="name">name</span>: <span class="string">&quot;Fish&quot;</span>
property <span class="type">int</span> <span class="name">col</span>: <span class="number">0</span>
property <span class="type">real</span> <span class="name">hp</span>: <span class="number">3</span>
property <span class="type">real</span> <span class="name">damage</span>: <span class="number">1</span>
property <span class="type">real</span> <span class="name">speed</span>: <span class="number">0.25</span>
property <span class="type">int</span> <span class="name">rof</span>: <span class="number">30</span> <span class="comment">//In ticks</span>
property <span class="type">int</span> <span class="name">fireCounter</span>: <span class="number">0</span>
property <span class="type">bool</span> <span class="name">dying</span>: <span class="number">false</span>
<span class="name">width</span>: <span class="name">parent</span> ? <span class="name">parent</span>.<span class="name">squareSize</span> : <span class="number">0</span>
<span class="name">height</span>: <span class="name">parent</span> ? <span class="name">parent</span>.<span class="name">squareSize</span> : <span class="number">0</span>
<span class="name">x</span>: <span class="name">col</span> <span class="operator">*</span> <span class="name">width</span>
<span class="name">z</span>: <span class="number">1001</span>
<span class="keyword">function</span> <span class="name">fire</span>() { }
...</pre>
<p>We use a <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.3/QtQuick.imageelements/#spritesequence">SpriteSequence</a> type to animate the fish:</p>
<pre class="qml">    <span class="type"><a href="QtQuick.SpriteSequence.md">SpriteSequence</a></span> {
<span class="name">id</span>: <span class="name">fishSprite</span>
<span class="name">width</span>: <span class="number">64</span>
<span class="name">height</span>: <span class="number">64</span>
<span class="name">interpolate</span>: <span class="number">false</span>
<span class="name">goalSprite</span>: <span class="string">&quot;&quot;</span></pre>
<p>The <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.3/QtQuick.imageelements/#spritesequence">SpriteSequence</a> type renders and controls a list of animations defined by <a href="QtQuick.Sprite.md">Sprite</a> types:</p>
<pre class="qml">        <span class="type"><a href="QtQuick.Sprite.md">Sprite</a></span> {
<span class="name">name</span>: <span class="string">&quot;left&quot;</span>
<span class="name">source</span>: <span class="string">&quot;../gfx/mob-idle.png&quot;</span>
<span class="name">frameWidth</span>: <span class="number">64</span>
<span class="name">frameHeight</span>: <span class="number">64</span>
<span class="name">frameCount</span>: <span class="number">1</span>
<span class="name">frameDuration</span>: <span class="number">800</span>
<span class="name">frameDurationVariation</span>: <span class="number">400</span>
<span class="name">to</span>: { &quot;front&quot; : <span class="number">1</span> }
}
<span class="type"><a href="QtQuick.Sprite.md">Sprite</a></span> {
<span class="name">name</span>: <span class="string">&quot;front&quot;</span>
<span class="name">source</span>: <span class="string">&quot;../gfx/mob-idle.png&quot;</span>
<span class="name">frameCount</span>: <span class="number">1</span>
<span class="name">frameX</span>: <span class="number">64</span>
<span class="name">frameWidth</span>: <span class="number">64</span>
<span class="name">frameHeight</span>: <span class="number">64</span>
<span class="name">frameDuration</span>: <span class="number">800</span>
<span class="name">frameDurationVariation</span>: <span class="number">400</span>
<span class="name">to</span>: { &quot;left&quot; : <span class="number">1</span>, &quot;right&quot; : <span class="number">1</span> }
}
<span class="type"><a href="QtQuick.Sprite.md">Sprite</a></span> {
<span class="name">name</span>: <span class="string">&quot;right&quot;</span>
<span class="name">source</span>: <span class="string">&quot;../gfx/mob-idle.png&quot;</span>
<span class="name">frameCount</span>: <span class="number">1</span>
<span class="name">frameX</span>: <span class="number">128</span>
<span class="name">frameWidth</span>: <span class="number">64</span>
<span class="name">frameHeight</span>: <span class="number">64</span>
<span class="name">frameDuration</span>: <span class="number">800</span>
<span class="name">frameDurationVariation</span>: <span class="number">400</span>
<span class="name">to</span>: { &quot;front&quot; : <span class="number">1</span> }
}</pre>
<p>In the <code>fishSprite</code> sprite sequence, each sprite defines one frame within the mob-idle.png file, which shows a fish facing right, front, and left:</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/89c9cc83-f715-41c7-a224-91bde2bbc587-../qtquick-demos-maroon-example/images/mob-idle.png" alt="" /></p><p>We use the <code>frameWidth</code>, <code>frameHeight</code>, and <code>frameX</code> properties to determine that the first 64x64-pixel square of the image is framed in the <code>&quot;left&quot;</code> sprite, the second in the <code>&quot;front&quot;</code> sprite, and the third in the <code>&quot;right&quot;</code> sprite. For each sprite, the <code>frameCount</code> property is set to <code>1</code> to specify that the sprite contains one frame.</p>
<p>We use the <code>frameDuration</code> and <code>frameDurationVariation</code> properties to specify that the duration of an animation can vary from <code>400</code> to <code>1200</code> milliseconds.</p>
<p>The <code>to</code> property specifies that the sprites have weighted transitions to other sprites. The <code>&quot;left&quot;</code> and <code>&quot;right&quot;</code> sprites always transfer to the <code>&quot;front&quot;</code> sprite. When the <code>&quot;front&quot;</code> animation finishes, the sprite engine chooses <code>&quot;left&quot;</code> or <code>&quot;right&quot;</code> randomly, but at roughly equal proportions, because they both have the weight <code>1</code>.</p>
<p>When the fish are set free, we want them to swim away in the direction they are facing until they get off the screen. If they were facing front, we use the <code>jumpTo</code> method with the JavaScript <code>Math.random()</code> method in the <code>die()</code> private function to randomly jump to the <code>&quot;left&quot;</code> or <code>&quot;right&quot;</code> sprite:</p>
<pre class="qml">    <span class="keyword">function</span> <span class="name">die</span>() {
<span class="keyword">if</span> (<span class="name">dying</span>)
<span class="keyword">return</span>;
<span class="name">dying</span> <span class="operator">=</span> <span class="number">true</span>;
<span class="name">bubble</span>.<span class="name">jumpTo</span>(<span class="string">&quot;burst&quot;</span>);
<span class="keyword">if</span> (<span class="name">fishSprite</span>.<span class="name">currentSprite</span> <span class="operator">==</span> <span class="string">&quot;front&quot;</span>)
<span class="name">fishSprite</span>.<span class="name">jumpTo</span>(<span class="name">Math</span>.<span class="name">random</span>() <span class="operator">&gt;</span> <span class="number">0.5</span> ? <span class="string">&quot;left&quot;</span> : <span class="string">&quot;right&quot;</span> );
<span class="name">fishSwim</span>.<span class="name">start</span>();
<span class="name">Logic</span>.<span class="name">gameState</span>.<span class="name">score</span> <span class="operator">+=</span> <span class="number">1</span>;
<span class="name">killedSound</span>.<span class="name">play</span>();
<span class="name">bubble</span>.<span class="name">scale</span> <span class="operator">=</span> <span class="number">0.9</span>
<span class="name">destroy</span>(<span class="number">350</span>);
}</pre>
<p>We then use the <code>start()</code> function to run a <a href="QtQuick.NumberAnimation.md">NumberAnimation</a> that applies a number animation to the x value from its current value to <code>-360</code> or <code>360</code>, depending on whether the <code>goingLeft</code> custom property is <code>true</code>, in 300 milliseconds:</p>
<pre class="qml">        NumberAnimation on <span class="name">x</span> {
<span class="name">id</span>: <span class="name">fishSwim</span>
<span class="name">running</span>: <span class="number">false</span>
property <span class="type">bool</span> <span class="name">goingLeft</span>: <span class="name">fishSprite</span>.<span class="name">currentSprite</span> <span class="operator">==</span> <span class="string">&quot;right&quot;</span>
<span class="name">to</span>: <span class="name">goingLeft</span> ? -<span class="number">360</span> : <span class="number">360</span>
<span class="name">duration</span>: <span class="number">300</span>
}</pre>
<h3 >Bursting Bubbles</h3>
<p>We use another <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.3/QtQuick.imageelements/#spritesequence">SpriteSequence</a> to animate the bubbles so that they become smaller and finally burst when they are attacked by a shooter or a melee. For this effect, we set the value of the <code>scale</code> property to decrease by <code>0.2</code> each time the custom <code>hp</code> property changes:</p>
<pre class="qml">    <span class="type"><a href="QtQuick.SpriteSequence.md">SpriteSequence</a></span> {
<span class="name">id</span>: <span class="name">bubble</span>
<span class="name">width</span>: <span class="number">64</span>
<span class="name">height</span>: <span class="number">64</span>
<span class="name">scale</span>: <span class="number">0.4</span> <span class="operator">+</span> (<span class="number">0.2</span>  <span class="operator">*</span> <span class="name">hp</span>)
<span class="name">interpolate</span>: <span class="number">false</span>
<span class="name">goalSprite</span>: <span class="string">&quot;&quot;</span></pre>
<p>We use a <a href="QtQuick.Behavior.md">Behavior</a> type to apply a <a href="QtQuick.NumberAnimation.md">NumberAnimation</a> when the value of <code>scale</code> changes. We use the <code>Easing.OutBack</code> easing type for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing out curve that decelerates the motion to zero velocity in 150 milliseconds:</p>
<pre class="qml">        Behavior on <span class="name">scale</span> {
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">duration</span>: <span class="number">150</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutBack</span> }
}</pre>
<p>The <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.3/QtQuick.imageelements/#spritesequence">SpriteSequence</a> consist of two sprites that display different images. The first sprite, <code>&quot;big&quot;</code>, uses the catch.png image to display an empty bubble:</p>
<pre class="qml">        <span class="type"><a href="QtQuick.Sprite.md">Sprite</a></span> {
<span class="name">name</span>: <span class="string">&quot;big&quot;</span>
<span class="name">source</span>: <span class="string">&quot;../gfx/catch.png&quot;</span>
<span class="name">frameCount</span>: <span class="number">1</span>
<span class="name">to</span>: { &quot;burst&quot; : <span class="number">0</span> }
}</pre>
<p>We set the <code>to</code> property to <code>&quot;burst&quot;</code> with the weight <code>0</code> to make the second sprite, <code>&quot;burst&quot;</code>, a valid goal for the <code>jumpTo</code> method that we use in the <code>die()</code> private function to jump directly to the <code>&quot;burst&quot;</code> sprite without playing the first sprite.</p>
<p>In the <code>&quot;burst&quot;</code> sprite, we set the <code>frameCount</code> property to <code>3</code> and the <code>frameX</code> property to <code>64</code> to specify that the animation starts at pixel location 64 and loads each frame for the duration of 200 milliseconds.</p>
<pre class="qml">        <span class="type"><a href="QtQuick.Sprite.md">Sprite</a></span> {
<span class="name">name</span>: <span class="string">&quot;burst&quot;</span>
<span class="name">source</span>: <span class="string">&quot;../gfx/catch-action.png&quot;</span>
<span class="name">frameCount</span>: <span class="number">3</span>
<span class="name">frameX</span>: <span class="number">64</span>
<span class="name">frameDuration</span>: <span class="number">200</span>
}</pre>
<p>Within the <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.3/QtQuick.imageelements/#spritesequence">SpriteSequence</a>, we use <a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a> with <a href="QtQuick.NumberAnimation.md">NumberAnimation</a> to animate the transitions between the frames. To create a pulsating effect on the bubbles, we apply a sequential animation on the <code>width</code> property with two number animations to first increase the bubble width from <code>* 1</code> to <code>* 1.1</code> over 800 milliseconds and then bring it back over 1 second:</p>
<pre class="qml">        SequentialAnimation on <span class="name">width</span> {
<span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>: <span class="name">width</span> <span class="operator">*</span> <span class="number">1</span>; <span class="name">to</span>: <span class="name">width</span> <span class="operator">*</span> <span class="number">1.1</span>; <span class="name">duration</span>: <span class="number">800</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>: <span class="name">width</span> <span class="operator">*</span> <span class="number">1.1</span>; <span class="name">to</span>: <span class="name">width</span> <span class="operator">*</span> <span class="number">1</span>; <span class="name">duration</span>: <span class="number">1000</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
}</pre>
<p>Similarly, we increase the bubble height from <code>* 1</code> to <code>* 1.15</code> over 1200 milliseconds and then bring it back over 1 second:</p>
<pre class="qml">        SequentialAnimation on <span class="name">height</span> {
<span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>: <span class="name">height</span> <span class="operator">*</span> <span class="number">1</span>; <span class="name">to</span>: <span class="name">height</span> <span class="operator">*</span> <span class="number">1.15</span>; <span class="name">duration</span>: <span class="number">1200</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>: <span class="name">height</span> <span class="operator">*</span> <span class="number">1.15</span>; <span class="name">to</span>: <span class="name">height</span> <span class="operator">*</span> <span class="number">1</span>; <span class="name">duration</span>: <span class="number">1000</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
}</pre>
<p>We use yet another <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.3/QtQuick.imageelements/#spritesequence">SpriteSequence</a> to display the effect of squid ink on the bubbles. For more examples of using sprite sequences, see the QML files in the <code>towers</code> directory.</p>
<h2 id="adding-dialogs">Adding Dialogs</h2>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/03edacda-1e99-41da-abbe-3daaa8f4299b-../qtquick-demos-maroon-example/images/qtquick-demo-maroon-med-5.jpg" alt="" /></p><p>In GameCanvas.qml, we use an <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.3/QtQuick.imageelements/#image">Image</a> type with some custom properties to create a menu where the players can buy tower objects:</p>
<pre class="qml">    <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">id</span>: <span class="name">towerMenu</span>
<span class="name">visible</span>: <span class="number">false</span>
<span class="name">z</span>: <span class="number">1500</span>
<span class="name">scale</span>: <span class="number">0.9</span>
<span class="name">opacity</span>: <span class="number">0.7</span>
property <span class="type">int</span> <span class="name">dragDistance</span>: <span class="number">16</span>
property <span class="type">int</span> <span class="name">targetRow</span>: <span class="number">0</span>
property <span class="type">int</span> <span class="name">targetCol</span>: <span class="number">0</span>
property <span class="type">bool</span> <span class="name">shown</span>: <span class="number">false</span>
property <span class="type">bool</span> <span class="name">towerExists</span>: <span class="number">false</span></pre>
<p>We set the <code>visible</code> property to <code>false</code> to hide the menu by default. The <code>z</code> property is set to 1500 to ensure that the menu is displayed in front of all other items when it is visible.</p>
<p>We use a <a href="QtQuick.MouseArea.md">MouseArea</a> type to open or close the menu when players tap on the canvas:</p>
<pre class="qml">    <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">id</span>: <span class="name">ma</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: {
<span class="keyword">if</span> (<span class="name">towerMenu</span>.<span class="name">visible</span>)
<span class="name">towerMenu</span>.<span class="name">finish</span>()
<span class="keyword">else</span>
<span class="name">towerMenu</span>.<span class="name">open</span>(<span class="name">mouse</span>.<span class="name">x</span>, <span class="name">mouse</span>.<span class="name">y</span>)
}
}</pre>
<p>We set the <code>anchors.fill</code> property to <code>parent</code> to allow the players to tap anywhere on the game canvas. We use a condition in the <code>onClicked</code> signal handler to call the <code>finish()</code> function if the menu is visible and the <code>open()</code> function otherwise.</p>
<p>The <code>finish()</code> function hides the menu by setting the <code>shown</code> custom property to <code>false</code>:</p>
<pre class="qml">        <span class="keyword">function</span> <span class="name">finish</span>() {
<span class="name">shown</span> <span class="operator">=</span> <span class="number">false</span>
}</pre>
<p>The <code>open()</code> function displays the menu at the x and y position of the mouse pointer:</p>
<pre class="qml">        <span class="keyword">function</span> <span class="name">open</span>(<span class="name">xp</span>,yp) {
<span class="keyword">if</span> (!<span class="name">grid</span>.<span class="name">gameRunning</span>)
<span class="keyword">return</span>
<span class="name">targetRow</span> <span class="operator">=</span> <span class="name">Logic</span>.<span class="name">row</span>(<span class="name">yp</span>)
<span class="name">targetCol</span> <span class="operator">=</span> <span class="name">Logic</span>.<span class="name">col</span>(<span class="name">xp</span>)
<span class="keyword">if</span> (<span class="name">targetRow</span> <span class="operator">==</span> <span class="number">0</span>)
<span class="name">towerMenu</span>.<span class="name">y</span> <span class="operator">=</span> (<span class="name">targetRow</span> <span class="operator">+</span> <span class="number">1</span>) <span class="operator">*</span> <span class="name">grid</span>.<span class="name">squareSize</span>
<span class="keyword">else</span>
<span class="name">towerMenu</span>.<span class="name">y</span> <span class="operator">=</span> (<span class="name">targetRow</span> <span class="operator">-</span> <span class="number">1</span>) <span class="operator">*</span> <span class="name">grid</span>.<span class="name">squareSize</span>
<span class="name">towerExists</span> <span class="operator">=</span> (<span class="name">grid</span>.<span class="name">towers</span>[<span class="name">Logic</span>.<span class="name">towerIdx</span>(<span class="name">targetCol</span>, <span class="name">targetRow</span>)] <span class="operator">!=</span> <span class="number">null</span>)
<span class="name">shown</span> <span class="operator">=</span> <span class="number">true</span>
<span class="name">helpButton</span>.<span class="name">goAway</span>();
}</pre>
<p>If <code>gameRunning</code> is <code>true</code>, we call the JavaScript <code>row()</code> function to calculate the value of the <code>targetRow</code> custom property and the <code>col()</code> function to calculate the value of the <code>targetCol</code> custom property. If the value of <code>targetRow</code> equals <code>0</code>, the y position is set to one square above the mouse pointer. Otherwise, it is set to one square below the mouse pointer.</p>
<p>We use the <code>towerIdx()</code> function to set the value of the <code>towerExists</code> custom property.</p>
<p>We set the <code>shown</code> custom property to <code>true</code> to show the menu and call the <code>helpButton.goAway()</code> function to hide the help button when the menu opens.</p>
<p>We use states and transitions to display the menu when the <code>shown</code> property is <code>true</code> and the <code>gameOver</code> property is <code>false</code>:</p>
<pre class="qml">        <span class="name">states</span>: <span class="name">State</span> {
<span class="name">name</span>: <span class="string">&quot;shown&quot;</span>; <span class="name">when</span>: <span class="name">towerMenu</span>.<span class="name">shown</span> <span class="operator">&amp;&amp;</span> !<span class="name">grid</span>.<span class="name">gameOver</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">towerMenu</span>; <span class="name">visible</span>: <span class="number">true</span>; <span class="name">scale</span>: <span class="number">1</span>; <span class="name">opacity</span>: <span class="number">1</span> }
}
<span class="name">transitions</span>: <span class="name">Transition</span> {
<span class="type"><a href="QtQuick.PropertyAction.md">PropertyAction</a></span> { <span class="name">property</span>: <span class="string">&quot;visible&quot;</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;opacity,scale&quot;</span>; <span class="name">duration</span>: <span class="number">500</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutElastic</span> }
}</pre>
<p>To set the visibility of the menu to <code>&quot;visible&quot;</code> without animating the property change, we use a <a href="QtQuick.PropertyAction.md">PropertyAction</a> type. We do want to animate the changes in opacity and scale, though, so we use number animation to animate the value of the <code>scale</code> property from <code>0.9</code> to <code>1</code> and the value of <code>opacity</code> property from <code>0.7</code> to <code>1</code>, over 500 milliseconds. We use the <code>Easing.outElastic</code> easing type for an elastic (exponentially decaying sine wave) function easing curve that decelerates from zero velocity.</p>
<p>To construct the menu, we use a BuildButton custom type that is defined in BuildButton.qml. In GameCanvas.qml, we create one build button for each tower object that the players can buy and position them in a <a href="QtQuick.qtquick-positioning-layouts.md#row">Row</a> layout in front of the menu background image, dialog.png:</p>
<pre class="qml">        <span class="name">x</span>: -<span class="number">32</span>
<span class="name">source</span>: <span class="string">&quot;gfx/dialog.png&quot;</span>
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="name">id</span>: <span class="name">buttonRow</span>
<span class="name">height</span>: <span class="number">100</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">spacing</span>: <span class="number">8</span>
<span class="type">BuildButton</span> {
<span class="name">row</span>: <span class="name">towerMenu</span>.<span class="name">targetRow</span>; <span class="name">col</span>: <span class="name">towerMenu</span>.<span class="name">targetCol</span>
<span class="name">anchors</span>.verticalCenter: <span class="name">parent</span>.<span class="name">verticalCenter</span>
<span class="name">towerType</span>: <span class="number">1</span>; <span class="name">index</span>: <span class="number">0</span>
<span class="name">canBuild</span>: !<span class="name">towerMenu</span>.<span class="name">towerExists</span>
<span class="name">source</span>: <span class="string">&quot;gfx/dialog-melee.png&quot;</span>
<span class="name">onClicked</span>: <span class="name">towerMenu</span>.<span class="name">finish</span>()
}
<span class="type">BuildButton</span> {
<span class="name">row</span>: <span class="name">towerMenu</span>.<span class="name">targetRow</span>; <span class="name">col</span>: <span class="name">towerMenu</span>.<span class="name">targetCol</span>
<span class="name">anchors</span>.verticalCenter: <span class="name">parent</span>.<span class="name">verticalCenter</span>
<span class="name">towerType</span>: <span class="number">2</span>; <span class="name">index</span>: <span class="number">1</span>
<span class="name">canBuild</span>: !<span class="name">towerMenu</span>.<span class="name">towerExists</span>
<span class="name">source</span>: <span class="string">&quot;gfx/dialog-shooter.png&quot;</span>
<span class="name">onClicked</span>: <span class="name">towerMenu</span>.<span class="name">finish</span>()
}
<span class="type">BuildButton</span> {
<span class="name">row</span>: <span class="name">towerMenu</span>.<span class="name">targetRow</span>; <span class="name">col</span>: <span class="name">towerMenu</span>.<span class="name">targetCol</span>
<span class="name">anchors</span>.verticalCenter: <span class="name">parent</span>.<span class="name">verticalCenter</span>
<span class="name">towerType</span>: <span class="number">3</span>; <span class="name">index</span>: <span class="number">2</span>
<span class="name">canBuild</span>: !<span class="name">towerMenu</span>.<span class="name">towerExists</span>
<span class="name">source</span>: <span class="string">&quot;gfx/dialog-bomb.png&quot;</span>
<span class="name">onClicked</span>: <span class="name">towerMenu</span>.<span class="name">finish</span>()
}
<span class="type">BuildButton</span> {
<span class="name">row</span>: <span class="name">towerMenu</span>.<span class="name">targetRow</span>; <span class="name">col</span>: <span class="name">towerMenu</span>.<span class="name">targetCol</span>
<span class="name">anchors</span>.verticalCenter: <span class="name">parent</span>.<span class="name">verticalCenter</span>
<span class="name">towerType</span>: <span class="number">4</span>; <span class="name">index</span>: <span class="number">3</span>
<span class="name">canBuild</span>: !<span class="name">towerMenu</span>.<span class="name">towerExists</span>
<span class="name">source</span>: <span class="string">&quot;gfx/dialog-factory.png&quot;</span>
<span class="name">onClicked</span>: <span class="name">towerMenu</span>.<span class="name">finish</span>()
}
}
}</pre>
<p>For each build button, we set the values of <code>towerType</code> and <code>index</code> custom properties that we define in BuildButton.qml.</p>
<p>We use the <code>canBuild</code> custom property to prevent players from adding tower objects in locations where tower objects already exist.</p>
<p>We use the <code>source</code> property to display the image for the tower type.</p>
<p>The <code>onClicked</code> signal handler is called to execute the <code>finish()</code> function that closes the menu when the players tap an enabled build button.</p>
<p>Build buttons are enabled when the players have enough coins to buy the tower objects. We use an <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.3/QtQuick.imageelements/#image">Image</a> type in BuildButton.qml to display images on the buttons:</p>
<pre class="qml">    <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">id</span>: <span class="name">img</span>
<span class="name">opacity</span>: (<span class="name">canBuild</span> <span class="operator">&amp;&amp;</span> <span class="name">gameCanvas</span>.<span class="name">coins</span> <span class="operator">&gt;=</span> <span class="name">Logic</span>.<span class="name">towerData</span>[<span class="name">towerType</span><span class="operator">-</span><span class="number">1</span>].<span class="name">cost</span>) ? <span class="number">1.0</span> : <span class="number">0.4</span>
}</pre>
<p>We use the <code>opacity</code> property to make the buttons appear enabled. If <code>canBuild</code> is <code>true</code> and the value of the <code>gameCanvas.coins</code> property is larger than or equal to the cost of a tower object, the images are fully opaque, otherwise their opacity is set to <code>0.4</code>.</p>
<p>We use a <a href="QtQuick.qtquick-releasenotes.md#text">Text</a> type to display the cost of each tower item, as specified by the <code>towerData</code> variable, depending on <code>towerType</code>:</p>
<pre class="qml">    <span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">font</span>.pointSize: <span class="number">14</span>
<span class="name">font</span>.bold: <span class="number">true</span>
<span class="name">color</span>: <span class="string">&quot;#ffffff&quot;</span>
<span class="name">text</span>: <span class="name">Logic</span>.<span class="name">towerData</span>[<span class="name">towerType</span> <span class="operator">-</span> <span class="number">1</span>].<span class="name">cost</span>
}</pre>
<p>To display a pointer on the screen at the position where the tower object will be added, we use the <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.3/QtQuick.imageelements/#image">Image</a> type. We use the <code>visible</code> property to determine whether the dialog-pointer.png image should be positioned below or above the menu. When the value of the <code>col</code> property equals the <code>index</code> and the value or the <code>row</code> property is not <code>0</code>, we anchor the image to the bottom of its parent, BuildButton.</p>
<p>When the value or the <code>row</code> property is <code>0</code>, we anchor the image to the top of BuildButton to position the pointer above the menu and use the <code>rotation</code> property to rotate it by 180 degrees, so that it points upwards:</p>
<pre class="qml">    <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">visible</span>: <span class="name">col</span> <span class="operator">==</span> <span class="name">index</span> <span class="operator">&amp;&amp;</span> <span class="name">row</span> <span class="operator">!=</span> <span class="number">0</span>
<span class="name">source</span>: <span class="string">&quot;gfx/dialog-pointer.png&quot;</span>
<span class="name">anchors</span>.top: <span class="name">parent</span>.<span class="name">bottom</span>
<span class="name">anchors</span>.topMargin: <span class="number">4</span>
<span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
}
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">visible</span>: <span class="name">col</span> <span class="operator">==</span> <span class="name">index</span> <span class="operator">&amp;&amp;</span> <span class="name">row</span> <span class="operator">==</span> <span class="number">0</span>
<span class="name">source</span>: <span class="string">&quot;gfx/dialog-pointer.png&quot;</span>
<span class="name">rotation</span>: <span class="number">180</span>
<span class="name">anchors</span>.bottom: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">anchors</span>.bottomMargin: <span class="number">6</span>
<span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
}</pre>
<h2 id="keeping-track-of-game-statistics">Keeping Track of Game Statistics</h2>
<p>To keep track of the game statistics, we use the InfoBar custom type (that is defined in InfoBar.qml) in maroon.qml:</p>
<pre class="qml">            <span class="type">InfoBar</span> { <span class="name">anchors</span>.bottom: <span class="name">canvas</span>.<span class="name">top</span>; <span class="name">anchors</span>.bottomMargin: <span class="number">6</span>; <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> }</pre>
<p>We use the <code>anchors.bottom</code> and <code>anchors.bottomMargin</code> properties to position the info bar at 6 points from the top of the game canvas. We bind the <code>width</code> property of the info bar to that of its parent.</p>
<p>In InfoBar.qml, we use an <a href="QtQuick.Item.md">Item</a> type to create the info bar. Within it, we use a <a href="QtQuick.qtquick-positioning-layouts.md#row">Row</a> layout type to display the number of lives the players have left, the number of fish that have been saved, and the amount of coins that are available for use.</p>
<p>We use the <code>anchors</code> property to position the rows in relationship to their parent and to each other. In the first <a href="QtQuick.qtquick-positioning-layouts.md#row">Row</a> object, we use the <code>anchors.left</code> and <code>anchors.leftMargin</code> properties to position the heart icons at 10 points from the left border of the parent item:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">height</span>: <span class="name">childrenRect</span>.<span class="name">height</span>
<span class="comment">// Display the number of lives</span>
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="name">anchors</span>.left: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">anchors</span>.leftMargin: <span class="number">10</span>
<span class="name">spacing</span>: <span class="number">5</span>
<span class="type"><a href="QtQuick.Repeater.md">Repeater</a></span> {
<span class="name">id</span>: <span class="name">rep</span>
<span class="name">model</span>: <span class="name">Math</span>.<span class="name">min</span>(<span class="number">10</span>, <span class="name">canvas</span>.<span class="name">lives</span>)
<span class="name">delegate</span>: <span class="name">Image</span> { <span class="name">source</span>: <span class="string">&quot;gfx/lifes.png&quot;</span> }
}
}</pre>
<p>We use a <a href="QtQuick.Repeater.md">Repeater</a> type with a <code>model</code> and a <code>delegate</code> to display as many hearts as the players have lives left. We use the <code>spacing</code> property to leave 5 pixels between the displayed icons.</p>
<p>In the second <a href="QtQuick.qtquick-positioning-layouts.md#row">Row</a> object, we use the <code>anchors.right</code> and <code>anchors.rightMargin</code> properties to position the number of fish saved at 20 points left of the third <a href="QtQuick.qtquick-positioning-layouts.md#row">Row</a> object that displays the number of coins available (and has the id <code>points</code>):</p>
<pre class="qml">    <span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="name">anchors</span>.right: <span class="name">points</span>.<span class="name">left</span>
<span class="name">anchors</span>.rightMargin: <span class="number">20</span>
<span class="name">spacing</span>: <span class="number">5</span>
<span class="type"><a href="QtQuick.Image.md">Image</a></span> { <span class="name">source</span>: <span class="string">&quot;gfx/scores.png&quot;</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">text</span>: <span class="name">canvas</span>.<span class="name">score</span>
<span class="name">font</span>.bold: <span class="number">true</span>
}
}
<span class="comment">// Display the number of coins</span>
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="name">id</span>: <span class="name">points</span>
<span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">anchors</span>.rightMargin: <span class="number">10</span>
<span class="name">spacing</span>: <span class="number">5</span>
<span class="type"><a href="QtQuick.Image.md">Image</a></span> { <span class="name">source</span>: <span class="string">&quot;gfx/points.png&quot;</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">pointsLabel</span>
<span class="name">text</span>: <span class="name">canvas</span>.<span class="name">coins</span>
<span class="name">font</span>.bold: <span class="number">true</span>
}
}
}</pre>
<p>In these objects, we set spacing to 5 pixels to separate the icons from the numbers that we display by using a <a href="QtQuick.qtquick-releasenotes.md#text">Text</a> type.</p>
<p>In GameCanvas.qml, we define custom properties to hold the game statistics:</p>
<pre class="qml">    property <span class="type">int</span> <span class="name">score</span>: <span class="number">0</span>
property <span class="type">int</span> <span class="name">coins</span>: <span class="number">100</span>
property <span class="type">int</span> <span class="name">lives</span>: <span class="number">3</span></pre>
<p>We declare the <code>freshState()</code> function to set the initial game statistics when a new game starts:</p>
<pre class="qml">    <span class="keyword">function</span> <span class="name">freshState</span>() {
<span class="name">lives</span> <span class="operator">=</span> <span class="number">3</span>
<span class="name">coins</span> <span class="operator">=</span> <span class="number">100</span>
<span class="name">score</span> <span class="operator">=</span> <span class="number">0</span>
<span class="name">waveNumber</span> <span class="operator">=</span> <span class="number">0</span>
<span class="name">waveProgress</span> <span class="operator">=</span> <span class="number">0</span>
<span class="name">gameOver</span> <span class="operator">=</span> <span class="number">false</span>
<span class="name">gameRunning</span> <span class="operator">=</span> <span class="number">false</span>
<span class="name">towerMenu</span>.<span class="name">shown</span> <span class="operator">=</span> <span class="number">false</span>
<span class="name">helpButton</span>.<span class="name">comeBack</span>();
}</pre>
<p>We use the <code>Logic.gameState.score</code> variable in the <code>die()</code> function that we declare in MobBase.qml to increase the score by one when the players set a fish free:</p>
<pre class="qml">        <span class="name">Logic</span>.<span class="name">gameState</span>.<span class="name">score</span> <span class="operator">+=</span> <span class="number">1</span>;</pre>
<h2 id="managing-game-states">Managing Game States</h2>
<p>In maroon.qml, we use a <a href="QtQuick.State.md">State</a> type and JavaScript to switch between screens according to the game state. The logic.js file contains definitions for the functions. To use the functions in a QML file, we import logic.js as the <code>Logic</code> namespace in that file:</p>
<pre class="qml">import &quot;content/logic.js&quot; as Logic</pre>
<p>The base state displays the new game screen when the application starts. In addition, we call the Component.onCompleted signal handler to initialize a new game:</p>
<pre class="qml">    <span class="name">Component</span>.onCompleted: <span class="name">gameState</span> <span class="operator">=</span> <span class="name">Logic</span>.<span class="name">newGameState</span>(<span class="name">canvas</span>);</pre>
<p>In NewGameScreen.qml we use the <code>onClicked</code> signal handler to emit the <code>startButtonClicked()</code> signal when the players tap the New Game button:</p>
<pre class="qml">    <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">source</span>: <span class="string">&quot;gfx/button-play.png&quot;</span>
<span class="name">anchors</span>.bottom: <span class="name">parent</span>.<span class="name">bottom</span>
<span class="name">anchors</span>.bottomMargin: <span class="number">60</span>
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">newGameScreen</span>.<span class="name">startButtonClicked</span>()
}</pre>
<p>In maroon.qml, we use the <code>onStartButtonClicked</code> signal handler to set the <code>passedSplash</code> property of the <code>root</code> item to <code>true</code>:</p>
<pre class="qml">        <span class="type">NewGameScreen</span> {
<span class="name">onStartButtonClicked</span>: <span class="name">root</span>.<span class="name">passedSplash</span> <span class="operator">=</span> <span class="number">true</span>
}</pre>
<p>We then use the <code>passedSplash</code> property in the <code>when</code> property of the <code>gameOn</code> state to trigger the <code>gameStarter</code> timer:</p>
<pre class="qml">        <span class="type"><a href="QtQuick.State.md">State</a></span> {
<span class="name">name</span>: <span class="string">&quot;gameOn&quot;</span>; <span class="name">when</span>: <span class="name">gameState</span>.<span class="name">gameOver</span> <span class="operator">==</span> <span class="number">false</span> <span class="operator">&amp;&amp;</span> <span class="name">passedSplash</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">view</span>; <span class="name">y</span>: -(<span class="name">height</span> <span class="operator">-</span> <span class="number">960</span>) }
<span class="type"><a href="QtQuick.StateChangeScript.md">StateChangeScript</a></span> { <span class="name">script</span>: <span class="name">root</span>.<span class="name">countdown</span> <span class="operator">=</span> <span class="number">0</span>; }
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">gameStarter</span>; <span class="name">running</span>: <span class="number">true</span> }
},</pre>
<p>We also switch to the <code>&quot;gameOn&quot;</code> state and move to the y position <code>-(height - 960)</code> to display the game canvas.</p>
<p>In the <code>gameStarter</code> Timer object we use the <code>onTriggered</code> signal handler to call the <code>startGame()</code> function that starts a new game:</p>
<pre class="qml">    <span class="type">Timer</span> {
<span class="name">id</span>: <span class="name">gameStarter</span>
<span class="name">interval</span>: <span class="number">4000</span>
<span class="name">running</span>: <span class="number">false</span>
<span class="name">repeat</span>: <span class="number">false</span>
<span class="name">onTriggered</span>: <span class="name">Logic</span>.<span class="name">startGame</span>(<span class="name">canvas</span>);
}</pre>
<p>The game continues until <code>gameState.gameOver</code> is set to <code>true</code> and <code>gameState.gameRunning</code> is set to <code>false</code> by calling the <code>endGame()</code> function when the value of the <code>gameState.lives</code> property becomes less than or equal to <code>0</code>.</p>
<p>In GameOverScreen.qml, we use a <a href="QtQuick.MouseArea.md">MouseArea</a> type and an <code>onClicked</code> signal handler within an <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.3/QtQuick.imageelements/#image">Image</a> type to return to the game canvas when the players tap the New Game button:</p>
<pre class="qml">    <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">source</span>: <span class="string">&quot;gfx/button-play.png&quot;</span>
<span class="name">anchors</span>.bottom: <span class="name">parent</span>.<span class="name">bottom</span>
<span class="name">anchors</span>.bottomMargin: <span class="number">0</span>
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">gameCanvas</span>.<span class="name">gameOver</span> <span class="operator">=</span> <span class="number">false</span><span class="comment">//This will actually trigger the state change in main.qml</span>
}
}</pre>
<p>The <code>onClicked</code> signal handler triggers a state change in maroon.qml to display the game canvas:</p>
<pre class="qml">        <span class="type"><a href="QtQuick.State.md">State</a></span> {
<span class="name">name</span>: <span class="string">&quot;gameOver&quot;</span>; <span class="name">when</span>: <span class="name">gameState</span>.<span class="name">gameOver</span> <span class="operator">==</span> <span class="number">true</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">view</span>; <span class="name">y</span>: <span class="number">0</span> }
}</pre>
<h2 id="playing-sound-effects">Playing Sound Effects</h2>
<p>The app can play sound effects if the Qt Multimedia module is installed. In the SoundEffect.qml file, we proxy a SoundEffect type:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">container</span>
property <span class="type">QtObject</span> <span class="name">effect</span>: <span class="name">Qt</span>.<span class="name">createQmlObject</span>(<span class="string">&quot;import QtMultimedia 5.0; SoundEffect{ source: '&quot;</span> <span class="operator">+</span> <span class="name">container</span>.<span class="name">source</span> <span class="operator">+</span> <span class="string">&quot;'; muted: !Qt.application.active }&quot;</span>, <span class="name">container</span>);
property <span class="type">url</span> <span class="name">source</span>: <span class="string">&quot;&quot;</span>
<span class="name">onSourceChanged</span>: <span class="keyword">if</span> (<span class="name">effect</span> <span class="operator">!=</span> <span class="number">null</span>) <span class="name">effect</span>.<span class="name">source</span> <span class="operator">=</span> <span class="name">source</span>;
<span class="keyword">function</span> <span class="name">play</span>() {
<span class="keyword">if</span> (<span class="name">effect</span> <span class="operator">!=</span> <span class="number">null</span>)
<span class="name">effect</span>.<span class="name">play</span>();
}</pre>
<p>We add the <code>qtHaveModule()</code> qmake command to the app .pro file, maroon.pro, to check whether the Qt Multimedia module is present:</p>
<pre class="qml">QT += qml quick
qtHaveModule(multimedia): QT += multimedia</pre>
<p>In each QML file that defines a custom type used on the game canvas, we use a SoundEffect type to specify the audio file to play for that type of objects. For example, in Bomb.qml, we specify the sound that a bomb makes when it explodes:</p>
<pre class="qml">    <span class="type">SoundEffect</span> {
<span class="name">id</span>: <span class="name">sound</span>
<span class="name">source</span>: <span class="string">&quot;../audio/bomb-action.wav&quot;</span>
}</pre>
<p>To play the sound effect when a bomb explodes, we call the <code>sound.play()</code> function that we declare as a member of the private <code>fire()</code> function within the TowerBase custom type:</p>
<pre class="qml">    <span class="keyword">function</span> <span class="name">fire</span>() {
<span class="name">sound</span>.<span class="name">play</span>()
<span class="name">sprite</span>.<span class="name">jumpTo</span>(<span class="string">&quot;shoot&quot;</span>)
<span class="name">animDelay</span>.<span class="name">start</span>()
}</pre>
<p>For more examples of playing sound effects, see the QML files in the <code>towers</code> directory and MobBase.qml.</p>
<h2 id="adding-keyboard-shortcuts">Adding Keyboard Shortcuts</h2>
<p>This is a touch example, so you should not really need to handle key presses. However, we do not want you to have to spend more time playing the game than you want to while testing it, so we use the <code>Keys.onPressed</code> signal handler to specify keyboard shortcuts. You can press Shift+Up to increment the values of the <code>coins</code> property to add coins, Shift+Left to increment the value of <code>lives</code>, Shift+Down to increment the value of the <code>waveProgress</code> property to spawn mobs of fish faster, and Shift+Right to call the <code>endGame()</code> function to quit the game:</p>
<pre class="qml">    <span class="name">Keys</span>.onPressed: { <span class="comment">// Cheat Codes while Testing</span>
<span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_Up</span> <span class="operator">&amp;&amp;</span> (<span class="name">event</span>.<span class="name">modifiers</span> <span class="operator">&amp;</span> <span class="name">Qt</span>.<span class="name">ShiftModifier</span>))
<span class="name">grid</span>.<span class="name">coins</span> <span class="operator">+=</span> <span class="number">10</span>;
<span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_Left</span> <span class="operator">&amp;&amp;</span> (<span class="name">event</span>.<span class="name">modifiers</span> <span class="operator">&amp;</span> <span class="name">Qt</span>.<span class="name">ShiftModifier</span>))
<span class="name">grid</span>.<span class="name">lives</span> <span class="operator">+=</span> <span class="number">1</span>;
<span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_Down</span> <span class="operator">&amp;&amp;</span> (<span class="name">event</span>.<span class="name">modifiers</span> <span class="operator">&amp;</span> <span class="name">Qt</span>.<span class="name">ShiftModifier</span>))
<span class="name">Logic</span>.<span class="name">gameState</span>.<span class="name">waveProgress</span> <span class="operator">+=</span> <span class="number">1000</span>;
<span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_Right</span> <span class="operator">&amp;&amp;</span> (<span class="name">event</span>.<span class="name">modifiers</span> <span class="operator">&amp;</span> <span class="name">Qt</span>.<span class="name">ShiftModifier</span>))
<span class="name">Logic</span>.<span class="name">endGame</span>();
}</pre>
<h2 id="packaging-resources-for-deployment">Packaging Resources for Deployment</h2>
<p>To be able to run the app on mobile devices, we package all QML, JavaScript, image, and sound files into a Qt resource file (.qrc). For more information, see The Qt Resource System.</p>
<p>Files:</p>
<ul>
<li>demos/maroon/maroon.qml</li>
<li>demos/maroon/content/BuildButton.qml</li>
<li>demos/maroon/content/GameCanvas.qml</li>
<li>demos/maroon/content/GameOverScreen.qml</li>
<li>demos/maroon/content/InfoBar.qml</li>
<li>demos/maroon/content/NewGameScreen.qml</li>
<li>demos/maroon/content/SoundEffect.qml</li>
<li>demos/maroon/content/logic.js</li>
<li>demos/maroon/content/mobs/MobBase.qml</li>
<li>demos/maroon/content/towers/Bomb.qml</li>
<li>demos/maroon/content/towers/Factory.qml</li>
<li>demos/maroon/content/towers/Melee.qml</li>
<li>demos/maroon/content/towers/Ranged.qml</li>
<li>demos/maroon/content/towers/TowerBase.qml</li>
<li>demos/maroon/main.cpp</li>
<li>demos/maroon/maroon.pro</li>
<li>demos/maroon/maroon.qmlproject</li>
<li>demos/maroon/maroon.qrc</li>
</ul>
<p><b>See also </b>QML Applications.</p>
<!-- @@@demos/maroon -->
