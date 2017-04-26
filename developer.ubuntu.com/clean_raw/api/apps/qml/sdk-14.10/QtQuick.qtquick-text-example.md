---
Title: QtQuick.qtquick-text-example
---

# QtQuick.qtquick-text-example

<span class="subtitle"></span>
<!-- $$$text-description -->
<p>This is a collection of QML examples relating to text<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/4d866488-3dea-4b44-8b75-fccf97ff1c55-../qtquick-text-example/images/qml-text-example.png" alt="" /></p><p>This is a collection of small QML examples relating to text. Each example is a small QML file, usually containing or emphasizing a particular type or feature. You can run and observe the behavior of each example.</p>
<p>'Hello' shows how to change and animate the letter spacing of a Text type. It uses a sequential animation to first animate the font.letterSpacing property from 0 to 50 over 3 seconds and then move the text to a random position on screen:</p>
<pre class="qml">            SequentialAnimation on <span class="name">font</span>.letterSpacing {
<span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>;
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">from</span>: <span class="number">0</span>; <span class="name">to</span>: <span class="number">50</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InQuad</span>; <span class="name">duration</span>: <span class="number">3000</span> }
<span class="type"><a href="QtQuick.ScriptAction.md">ScriptAction</a></span> {
<span class="name">script</span>: {
<span class="name">container</span>.<span class="name">y</span> <span class="operator">=</span> (<span class="name">screen</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">4</span>) <span class="operator">+</span> (<span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> <span class="name">screen</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">2</span>)
<span class="name">container</span>.<span class="name">x</span> <span class="operator">=</span> (<span class="name">screen</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">4</span>) <span class="operator">+</span> (<span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> <span class="name">screen</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>)
}
}
}</pre>
<p>'Fonts' shows different ways of using fonts with the Text type. Simply by name, using the font.family property directly:</p>
<pre class="qml">            <span class="name">font</span>.family: <span class="string">&quot;Times&quot;</span></pre>
<p>or using a <a href="QtQuick.FontLoader.md">FontLoader</a> type:</p>
<pre class="qml">    <span class="type"><a href="QtQuick.FontLoader.md">FontLoader</a></span> { <span class="name">id</span>: <span class="name">fixedFont</span>; <span class="name">name</span>: <span class="string">&quot;Courier&quot;</span> }</pre>
<p>or using a <a href="QtQuick.FontLoader.md">FontLoader</a> and specifying a local font file:</p>
<pre class="qml">    <span class="type"><a href="QtQuick.FontLoader.md">FontLoader</a></span> { <span class="name">id</span>: <span class="name">localFont</span>; <span class="name">source</span>: <span class="string">&quot;content/fonts/tarzeau_ocr_a.ttf&quot;</span> }</pre>
<p>or finally using a <a href="QtQuick.FontLoader.md">FontLoader</a> and specifying a remote font file:</p>
<pre class="qml">    <span class="type"><a href="QtQuick.FontLoader.md">FontLoader</a></span> { <span class="name">id</span>: <span class="name">webFont</span>; <span class="name">source</span>: <span class="string">&quot;http://www.princexml.com/fonts/steffmann/Starburst.ttf&quot;</span> }</pre>
<p>'Available Fonts' shows how to use the QML Qt global object and a list view to display all the fonts available on the system. The <a href="QtQuick.ListView.md">ListView</a> type uses the list of fonts available as its model:</p>
<pre class="qml">        <span class="name">model</span>: <span class="name">Qt</span>.<span class="name">fontFamilies</span>()</pre>
<p>Inside the delegate, the font family is set with the modelData:</p>
<pre class="qml">                <span class="name">font</span>.family: <span class="name">modelData</span></pre>
<p>'Banner' is a simple example showing how to create a banner using a row of text types and a <a href="QtQuick.NumberAnimation.md">NumberAnimation</a>.</p>
<p>'Img tag' shows different ways of displaying images in a text types using the &lt;img&gt; tag.</p>
<p>'Text Layout' shows how to create a more complex layout for a text item. This example lays out the text in two columns using the onLineLaidOut handler that allows you to position and resize each line:</p>
<pre class="qml">        <span class="name">onLineLaidOut</span>: {
<span class="name">line</span>.<span class="name">width</span> <span class="operator">=</span> <span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>  <span class="operator">-</span> (<span class="name">margin</span>)
<span class="keyword">if</span> (<span class="name">line</span>.<span class="name">y</span> <span class="operator">+</span> <span class="name">line</span>.<span class="name">height</span> <span class="operator">&gt;=</span> <span class="name">height</span>) {
<span class="name">line</span>.<span class="name">y</span> <span class="operator">-=</span> <span class="name">height</span> <span class="operator">-</span> <span class="name">margin</span>
<span class="name">line</span>.<span class="name">x</span> <span class="operator">=</span> <span class="name">width</span> <span class="operator">/</span> <span class="number">2</span> <span class="operator">+</span> <span class="name">margin</span>
}
}</pre>
<p>Files:</p>
<ul>
<li>text/styledtext-layout.qml</li>
<li>text/text.qml</li>
<li>text/fonts/availableFonts.qml</li>
<li>text/fonts/banner.qml</li>
<li>text/fonts/fonts.qml</li>
<li>text/fonts/hello.qml</li>
<li>text/imgtag/TextWithImage.qml</li>
<li>text/imgtag/imgtag.qml</li>
<li>text/textselection/textselection.qml</li>
<li>text/main.cpp</li>
<li>text/text.pro</li>
<li>text/text.qmlproject</li>
<li>text/text.qrc</li>
</ul>
<!-- @@@text -->
