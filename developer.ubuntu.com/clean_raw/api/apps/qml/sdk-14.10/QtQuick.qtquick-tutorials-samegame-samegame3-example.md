---
Title: QtQuick.qtquick-tutorials-samegame-samegame3-example
---

# QtQuick.qtquick-tutorials-samegame-samegame3-example

<span class="subtitle"></span>
<!-- $$$tutorials/samegame/samegame3-description -->
<h3>Making a playable game</h3>
<p>Now that we have all the game components, we can add the game logic that dictates how a player interacts with the blocks and plays the game until it is won or lost.</p>
<p>To do this, we have added the following functions to <tt>samegame.js</tt>:</p>
<ul>
<li><tt>handleClick(x,y)</tt></li>
<li><tt>floodFill(xIdx,yIdx,type)</tt></li>
<li><tt>shuffleDown()</tt></li>
<li><tt>victoryCheck()</tt></li>
<li><tt>floodMoveCheck(xIdx, yIdx, type)</tt></li>
</ul>
<p>As this is a tutorial about QML, not game design, we will only discuss <tt>handleClick()</tt> and <tt>victoryCheck()</tt> below since they interface directly with the QML types. Note that although the game logic here is written in JavaScript, it could have been written in C++ and then exposed to QML.</p>
<h4>Enabling mouse click interaction</h4>
<p>To make it easier for the JavaScript code to interface with the QML types, we have added an Item called <tt>gameCanvas</tt> to <tt>samegame.qml</tt>. It replaces the background as the item which contains the blocks. It also accepts mouse input from the user. Here is the item code:</p>
<pre class="qml">        <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">gameCanvas</span>
property <span class="type">int</span> <span class="name">score</span>: <span class="number">0</span>
property <span class="type">int</span> <span class="name">blockSize</span>: <span class="number">40</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">-</span> (<span class="name">parent</span>.<span class="name">width</span> <span class="operator">%</span> <span class="name">blockSize</span>)
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">-</span> (<span class="name">parent</span>.<span class="name">height</span> <span class="operator">%</span> <span class="name">blockSize</span>)
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">SameGame</span>.<span class="name">handleClick</span>(<span class="name">mouse</span>.<span class="name">x</span>, <span class="name">mouse</span>.<span class="name">y</span>)
}
}</pre>
<p>The <tt>gameCanvas</tt> item is the exact size of the board, and has a <tt>score</tt> property and a <a href="QtQuick.MouseArea.md">MouseArea</a> to handle mouse clicks. The blocks are now created as its children, and its dimensions are used to determine the board size so that the application scales to the available screen size. Since its size is bound to a multiple of <tt>blockSize</tt>, <tt>blockSize</tt> was moved out of <tt>samegame.js</tt> and into <tt>samegame.qml</tt> as a QML property. Note that it can still be accessed from the script.</p>
<p>When clicked, the <a href="QtQuick.MouseArea.md">MouseArea</a> calls <tt>handleClick()</tt> in <tt>samegame.js</tt>, which determines whether the player's click should cause any blocks to be removed, and updates <tt>gameCanvas.score</tt> with the current score if necessary. Here is the <tt>handleClick()</tt> function:</p>
<pre class="js"><span class="keyword">function</span> <span class="name">handleClick</span>(<span class="name">xPos</span>, yPos) {
var <span class="name">column</span> = <span class="name">Math</span>.<span class="name">floor</span>(<span class="name">xPos</span> <span class="operator">/</span> <span class="name">gameCanvas</span>.<span class="name">blockSize</span>);
var <span class="name">row</span> = <span class="name">Math</span>.<span class="name">floor</span>(<span class="name">yPos</span> <span class="operator">/</span> <span class="name">gameCanvas</span>.<span class="name">blockSize</span>);
<span class="keyword">if</span> (<span class="name">column</span> <span class="operator">&gt;=</span> <span class="name">maxColumn</span> <span class="operator">||</span> <span class="name">column</span> <span class="operator">&lt;</span> <span class="number">0</span> <span class="operator">||</span> <span class="name">row</span> <span class="operator">&gt;=</span> <span class="name">maxRow</span> <span class="operator">||</span> <span class="name">row</span> <span class="operator">&lt;</span> <span class="number">0</span>)
<span class="keyword">return</span>;
<span class="keyword">if</span> (<span class="name">board</span>[<span class="name">index</span>(<span class="name">column</span>, <span class="name">row</span>)] <span class="operator">==</span> <span class="number">null</span>)
<span class="keyword">return</span>;
<span class="comment">//If it's a valid block, remove it and all connected (does nothing if it's not connected)</span>
<span class="name">floodFill</span>(<span class="name">column</span>, <span class="name">row</span>, -<span class="number">1</span>);
<span class="keyword">if</span> (<span class="name">fillFound</span> <span class="operator">&lt;=</span> <span class="number">0</span>)
<span class="keyword">return</span>;
<span class="name">gameCanvas</span>.<span class="name">score</span> <span class="operator">+=</span> (<span class="name">fillFound</span> <span class="operator">-</span> <span class="number">1</span>) <span class="operator">*</span> (<span class="name">fillFound</span> <span class="operator">-</span> <span class="number">1</span>);
<span class="name">shuffleDown</span>();
<span class="name">victoryCheck</span>();
}</pre>
<p>Note that if <tt>score</tt> was a global variable in the <tt>samegame.js</tt> file you would not be able to bind to it. You can only bind to QML properties.</p>
<h4>Updating the score</h4>
<p>When the player clicks a block and triggers <tt>handleClick()</tt>, <tt>handleClick()</tt> also calls <tt>victoryCheck()</tt> to update the score and to check whether the player has completed the game. Here is the <tt>victoryCheck()</tt> code:</p>
<pre class="js"><span class="keyword">function</span> <span class="name">victoryCheck</span>() {
<span class="comment">//Award bonus points if no blocks left</span>
var <span class="name">deservesBonus</span> = <span class="number">true</span>;
<span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">column</span> = <span class="name">maxColumn</span> <span class="operator">-</span> <span class="number">1</span>; <span class="name">column</span> <span class="operator">&gt;=</span> <span class="number">0</span>; column--)
<span class="keyword">if</span> (<span class="name">board</span>[<span class="name">index</span>(<span class="name">column</span>, <span class="name">maxRow</span> <span class="operator">-</span> <span class="number">1</span>)] <span class="operator">!=</span> <span class="number">null</span>)
<span class="name">deservesBonus</span> <span class="operator">=</span> <span class="number">false</span>;
<span class="keyword">if</span> (<span class="name">deservesBonus</span>)
<span class="name">gameCanvas</span>.<span class="name">score</span> <span class="operator">+=</span> <span class="number">500</span>;
<span class="comment">//Check whether game has finished</span>
<span class="keyword">if</span> (<span class="name">deservesBonus</span> <span class="operator">||</span> !(<span class="name">floodMoveCheck</span>(<span class="number">0</span>, <span class="name">maxRow</span> <span class="operator">-</span> <span class="number">1</span>, -<span class="number">1</span>)))
<span class="name">dialog</span>.<span class="name">show</span>(<span class="string">&quot;Game Over. Your score is &quot;</span> <span class="operator">+</span> <span class="name">gameCanvas</span>.<span class="name">score</span>);
}</pre>
<p>This updates the <tt>gameCanvas.score</tt> value and displays a &quot;Game Over&quot; dialog if the game is finished.</p>
<p>The Game Over dialog is created using a <tt>Dialog</tt> type that is defined in <tt>Dialog.qml</tt>. Here is the <tt>Dialog.qml</tt> code. Notice how it is designed to be usable imperatively from the script file, via the functions and signals:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">container</span>
<span class="keyword">function</span> <span class="name">show</span>(<span class="name">text</span>) {
<span class="name">dialogText</span>.<span class="name">text</span> <span class="operator">=</span> <span class="name">text</span>;
<span class="name">container</span>.<span class="name">opacity</span> <span class="operator">=</span> <span class="number">1</span>;
}
<span class="keyword">function</span> <span class="name">hide</span>() {
<span class="name">container</span>.<span class="name">opacity</span> <span class="operator">=</span> <span class="number">0</span>;
}
<span class="name">width</span>: <span class="name">dialogText</span>.<span class="name">width</span> <span class="operator">+</span> <span class="number">20</span>
<span class="name">height</span>: <span class="name">dialogText</span>.<span class="name">height</span> <span class="operator">+</span> <span class="number">20</span>
<span class="name">opacity</span>: <span class="number">0</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">dialogText</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;&quot;</span>
}
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">hide</span>();
}
}</pre>
<p>And this is how it is used in the main <tt>samegame.qml</tt> file:</p>
<pre class="qml">    <span class="type">Dialog</span> {
<span class="name">id</span>: <span class="name">dialog</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">z</span>: <span class="number">100</span>
}</pre>
<p>We give the dialog a <a href="QtQuick.Item.md#z-prop">z</a> value of 100 to ensure it is displayed on top of our other components. The default <tt>z</tt> value for an item is 0.</p>
<h4>A dash of color</h4>
<p>It's not much fun to play Same Game if all the blocks are the same color, so we've modified the <tt>createBlock()</tt> function in <tt>samegame.js</tt> to randomly create a different type of block (for either red, green or blue) each time it is called. <tt>Block.qml</tt> has also changed so that each block contains a different image depending on its type:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">block</span>
property <span class="type">int</span> <span class="name">type</span>: <span class="number">0</span>
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">id</span>: <span class="name">img</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">source</span>: {
<span class="keyword">if</span> (<span class="name">type</span> <span class="operator">==</span> <span class="number">0</span>)
<span class="keyword">return</span> <span class="string">&quot;../shared/pics/redStone.png&quot;</span>;
<span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">type</span> <span class="operator">==</span> <span class="number">1</span>)
<span class="keyword">return</span> <span class="string">&quot;../shared/pics/blueStone.png&quot;</span>;
<span class="keyword">else</span>
<span class="keyword">return</span> <span class="string">&quot;../shared/pics/greenStone.png&quot;</span>;
}
}
}</pre>
<h3>A working game</h3>
<p>Now we now have a working game! The blocks can be clicked, the player can score, and the game can end (and then you can start a new one). Here is a screenshot of what has been accomplished so far:</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/3f58463a-8e40-4acb-9e71-b5a7f786174c-../qtquick-tutorials-samegame-samegame3-example/images/declarative-adv-tutorial3.png" alt="" /></p><p>This is what <tt>samegame.qml</tt> looks like now:</p>
<pre class="qml">import QtQuick 2.0
import &quot;samegame.js&quot; as SameGame
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">screen</span>
<span class="name">width</span>: <span class="number">490</span>; <span class="name">height</span>: <span class="number">720</span>
<span class="type"><a href="QtQuick.SystemPalette.md">SystemPalette</a></span> { <span class="name">id</span>: <span class="name">activePalette</span> }
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="type">anchors</span> { <span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>; <span class="name">bottom</span>: <span class="name">toolBar</span>.<span class="name">top</span> }
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">id</span>: <span class="name">background</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">source</span>: <span class="string">&quot;../shared/pics/background.jpg&quot;</span>
<span class="name">fillMode</span>: <span class="name">Image</span>.<span class="name">PreserveAspectCrop</span>
}
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">gameCanvas</span>
property <span class="type">int</span> <span class="name">score</span>: <span class="number">0</span>
property <span class="type">int</span> <span class="name">blockSize</span>: <span class="number">40</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">-</span> (<span class="name">parent</span>.<span class="name">width</span> <span class="operator">%</span> <span class="name">blockSize</span>)
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">-</span> (<span class="name">parent</span>.<span class="name">height</span> <span class="operator">%</span> <span class="name">blockSize</span>)
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">SameGame</span>.<span class="name">handleClick</span>(<span class="name">mouse</span>.<span class="name">x</span>, <span class="name">mouse</span>.<span class="name">y</span>)
}
}
}
<span class="type">Dialog</span> {
<span class="name">id</span>: <span class="name">dialog</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">z</span>: <span class="number">100</span>
}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">toolBar</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="number">30</span>
<span class="name">color</span>: <span class="name">activePalette</span>.<span class="name">window</span>
<span class="name">anchors</span>.bottom: <span class="name">screen</span>.<span class="name">bottom</span>
<span class="type">Button</span> {
<span class="type">anchors</span> { <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>; <span class="name">verticalCenter</span>: <span class="name">parent</span>.<span class="name">verticalCenter</span> }
<span class="name">text</span>: <span class="string">&quot;New Game&quot;</span>
<span class="name">onClicked</span>: <span class="name">SameGame</span>.<span class="name">startNewGame</span>()
}
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">score</span>
<span class="type">anchors</span> { <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>; <span class="name">verticalCenter</span>: <span class="name">parent</span>.<span class="name">verticalCenter</span> }
<span class="name">text</span>: <span class="string">&quot;Score: Who knows?&quot;</span>
}
}
}</pre>
<p>The game works, but it's a little boring right now. Where are the smooth animated transitions? Where are the high scores? If you were a QML expert you could have written these in the first iteration, but in this tutorial they've been saved until the next chapter - where your application becomes alive!</p>
<p>Files:</p>
<ul>
<li>tutorials/samegame/samegame3/Block.qml</li>
<li>tutorials/samegame/samegame3/Button.qml</li>
<li>tutorials/samegame/samegame3/Dialog.qml</li>
<li>tutorials/samegame/samegame3/samegame.js</li>
<li>tutorials/samegame/samegame3/samegame.qml</li>
<li>tutorials/samegame/samegame3/samegame3.qmlproject</li>
</ul>
<!-- @@@tutorials/samegame/samegame3 -->
<p class="naviNextPrevious footerNavi">
<a class="prevPage" href="https://developer.ubuntu.comapps/qml/sdk-14.10/QtQuick.tutorials-samegame-samegame2/">QML Advanced Tutorial 2 - Populating the Game Canvas</a>
<a class="nextPage" href="https://developer.ubuntu.comapps/qml/sdk-14.10/QtQuick.tutorials-samegame-samegame4/">QML Advanced Tutorial 4 - Finishing Touches</a>
</p>
