---
Title: QtQuick.qtquick-positioning-righttoleft
---

# QtQuick.qtquick-positioning-righttoleft

<span class="subtitle"></span>
<!-- $$$qtquick-positioning-righttoleft.html-description -->
<h2>Overview</h2>
<p>This chapter discusses different approaches and options available for implementing right-to-left language support for Qt Quick applications. Some common right-to-left languages include Arabic, Hebrew, Persian and Urdu. Most changes include making sure that text translated to right-to-left languages is properly aligned to the right, and horizontally ordered content in views, lists and grids flows correctly from the right to left.</p>
<p>In right-to-left language speaking cultures, people naturally scan and read graphic elements and text from the right to left. The general rule of thumb is that content (like photos, videos and maps) is not mirrored, but positioning of the content (like application layouts and the flow of visual elements) is mirrored. For example, photos shown in chronological order should flow from right to left, the low end range of the horizontal sliders should be located at the right side of the slider, and text lines should should be aligned to the right side of the available text area. The location of visual elements should not be mirrored when the position is related to a content; for example, when a position marker is shown to indicate a location on a map. Also, there are some special cases you may need to take into account where right-to-left language speakers are used to left-to-right positioning, for example when using number dialers in phones and media play, pause, rewind and forward buttons in music players.</p>
<h2>Text Alignment</h2>
<p>(This applies to the <a href="QtQuick.Text.md">Text</a>, <a href="QtQuick.TextInput.md">TextInput</a> and <a href="QtQuick.TextEdit.md">TextEdit</a> types.)</p>
<p>When the horizontal alignment of a text item is not explicitly set, the text element is automatically aligned to the natural reading direction of the text. By default left-to-right text like English is aligned to the left side of the text area, and right-to-left text like Arabic is aligned to the right side of the text area. The alignment of a text element with empty text takes its alignment cue from QInputMethod::inputDirection(), which is based on the active system locale.</p>
<p>This default locale-based alignment can be overridden by setting the <tt>horizontalAlignment</tt> property for the text element, or by enabling layout mirroring using the <a href="QtQuick.LayoutMirroring.md">LayoutMirroring</a> attached property, which causes any explicit left and right horizontal alignments to be mirrored. Note that when <a href="QtQuick.LayoutMirroring.md">LayoutMirroring</a> is set, the <tt>horizontalAlignment</tt> property value remains unchanged; the effective alignment of the text element that takes the mirroring into account can be read from the <tt>effectiveHorizontalAlignment</tt> property.</p>
<pre class="qml"><span class="comment">// automatically aligned to the left</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">text</span>: <span class="string">&quot;Phone&quot;</span>
<span class="name">width</span>: <span class="number">200</span>
}
<span class="comment">// automatically aligned to the right</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">text</span>: <span class="string">&quot;��������&quot;</span>
<span class="name">width</span>: <span class="number">200</span>
}
<span class="comment">// aligned to the left</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">text</span>: <span class="string">&quot;��������&quot;</span>
<span class="name">horizontalAlignment</span>: <span class="name">Text</span>.<span class="name">AlignLeft</span>
<span class="name">width</span>: <span class="number">200</span>
}
<span class="comment">// aligned to the right</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">text</span>: <span class="string">&quot;��������&quot;</span>
<span class="name">horizontalAlignment</span>: <span class="name">Text</span>.<span class="name">AlignLeft</span>
<span class="name">LayoutMirroring</span>.enabled: <span class="number">true</span>
<span class="name">width</span>: <span class="number">200</span>
}</pre>
<h2>Layout direction of positioners and views</h2>
<p>(This applies to the <a href="QtQuick.Row.md">Row</a>, <a href="QtQuick.Grid.md">Grid</a>, <a href="QtQuick.Flow.md">Flow</a>, <a href="QtQuick.ListView.md">ListView</a> and <a href="QtQuick.GridView.md">GridView</a> types.)</p>
<p>From Qt Quick 1.1 onwards, types used for horizontal positioning and model views have gained a <tt>layoutDirection</tt> property for controlling the horizontal direction of the layouts. Setting <tt>layoutDirection</tt> to <tt>Qt.RightToLeft</tt> causes items to be laid out from the right to left. By default Qt Quick follows the left-to-right layout direction.</p>
<p>The horizontal layout direction can also be reversed through the <a href="QtQuick.LayoutMirroring.md">LayoutMirroring</a> attached property. This causes the effective <tt>layoutDirection</tt> of positioners and views to be mirrored. Note the actual value of the <tt>layoutDirection</tt> property will remain unchanged; the effective layout direction of positioners and views that takes the mirroring into account can be read from the <tt>effectiveLayoutDirection</tt> property.</p>
<pre class="qml"><span class="comment">// by default child items are positioned from left to right</span>
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="type">Child</span> {}
<span class="type">Child</span> {}
}
<span class="comment">// position child items from right to left</span>
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="name">layoutDirection</span>: <span class="name">Qt</span>.<span class="name">RightToLeft</span>
<span class="type">Child</span> {}
<span class="type">Child</span> {}
}
<span class="comment">// position child items from left to right</span>
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="name">LayoutMirroring</span>.enabled: <span class="number">true</span>
<span class="name">layoutDirection</span>: <span class="name">Qt</span>.<span class="name">RightToLeft</span>
<span class="type">Child</span> {}
<span class="type">Child</span> {}
}</pre>
<h2>Layout mirroring</h2>
<p>The attached property <a href="QtQuick.LayoutMirroring.md">LayoutMirroring</a> is provided as a convenience for easily implementing right-to-left support for existing left-to-right Qt Quick applications. It mirrors the behavior of <a href="QtQuick.qtquick-positioning-anchors.md#anchor-layout">Item anchors</a>, the layout direction of <a href="QtQuick.qtquick-positioning-layouts.md">positioners</a> and <a href="QtQuick.qtquick-modelviewsdata-modelview.md">model views</a>, and the explicit text alignment of QML text types.</p>
<p>You can enable layout mirroring for a particular <a href="QtQuick.Item.md">Item</a>:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">height</span>: <span class="number">50</span>; <span class="name">width</span>: <span class="number">150</span>
<span class="name">LayoutMirroring</span>.enabled: <span class="number">true</span>
<span class="name">anchors</span>.left: <span class="name">parent</span>.<span class="name">left</span>   <span class="comment">// anchor left becomes right</span>
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="comment">// items flow from left to right (as per default)</span>
<span class="type">Child</span> {}
<span class="type">Child</span> {}
<span class="type">Child</span> {}
}
}</pre>
<p>Or set all child types to also inherit the layout direction:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">height</span>: <span class="number">50</span>; <span class="name">width</span>: <span class="number">150</span>
<span class="name">LayoutMirroring</span>.enabled: <span class="number">true</span>
<span class="name">LayoutMirroring</span>.childrenInherit: <span class="number">true</span>
<span class="name">anchors</span>.left: <span class="name">parent</span>.<span class="name">left</span>   <span class="comment">// anchor left becomes right</span>
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="comment">// setting childrenInherit in the parent causes these</span>
<span class="comment">// items to flow from right to left instead</span>
<span class="type">Child</span> {}
<span class="type">Child</span> {}
<span class="type">Child</span> {}
}
}</pre>
<p>Applying mirroring in this manner does not change the actual value of the relevant anchor, <tt>layoutDirection</tt> or <tt>horizontalAlignment</tt> properties. The separate read-only property <tt>effectiveLayoutDirection</tt> can be used to query the effective layout direction of positioners and model views that takes the mirroring into account. Similarly the <a href="QtQuick.Text.md">Text</a>, <a href="QtQuick.TextInput.md">TextInput</a> and <a href="QtQuick.TextEdit.md">TextEdit</a> types have gained the read-only property <tt>effectiveHorizontalAlignment</tt> for querying the effective visual alignment of text. For anchors, the read only <a href="QtQuick.Item.md#anchors.top-prop">anchors.mirrored</a> property reflects whether anchors have been mirrored.</p>
<p>Note that application layouts and animations that are defined using <a href="QtQuick.Item.md#x-prop">x</a> property values (as opposed to anchors or positioner types) are not affected by the <a href="QtQuick.LayoutMirroring.md">LayoutMirroring</a> attached property. Therefore, adding right-to-left support to these types of layouts may require some code changes to your application, especially in views that rely on both the anchors and x coordinate-based positioning. Here is one way to use the <a href="QtQuick.LayoutMirroring.md">LayoutMirroring</a> attached property to apply mirroring to an item that is positioned using <a href="QtQuick.Item.md#x-prop">x</a> coordinates:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;black&quot;</span>
<span class="name">height</span>: <span class="number">50</span>; <span class="name">width</span>: <span class="number">50</span>
<span class="name">x</span>: <span class="name">mirror</span>(<span class="number">10</span>)
<span class="keyword">function</span> <span class="name">mirror</span>(<span class="name">value</span>) {
<span class="keyword">return</span> <span class="name">LayoutMirroring</span>.<span class="name">enabled</span> ? (<span class="name">parent</span>.<span class="name">width</span> <span class="operator">-</span> <span class="name">width</span> <span class="operator">-</span> <span class="name">value</span>) : <span class="name">value</span>;
}
}</pre>
<p>Not all layouts should necessarily be mirrored. There are cases where a visual type is positioned to the right side of the screen for improved one-handed use, because most people are right-handed, and not because of the reading direction. In the case that a child type should not be affected by mirroring, set the <a href="QtQuick.LayoutMirroring.md#enabled-prop">LayoutMirroring.enabled</a> property for that type to false.</p>
<p>Qt Quick is designed for developing animated, fluid user interfaces. When mirroring your application, remember to test that the animations and transitions continue to work as expected. If you do not have the resources to add right-to-left support for your application, it may be better to just keep the application layouts left aligned and just make sure that text is translated and aligned properly.</p>
<h2>Mirroring icons</h2>
<p>(This applies to <a href="QtQuick.Image.md">Image</a>, <a href="QtQuick.BorderImage.md">BorderImage</a> and <a href="QtQuick.AnimatedImage.md">AnimatedImage</a> types.)</p>
<p>Most images do not need to be mirrored, but some directional icons, such as arrows, may need to be mirrored. The painting of these icons can be mirrored with a dedicated <tt>mirror</tt> property introduced in Qt Quick 1.1:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">source</span>: <span class="string">&quot;arrow.png&quot;</span>
<span class="name">mirror</span>: <span class="number">true</span>
}</pre>
<h2>Default layout direction</h2>
<p>The Qt.application.layoutDirection property can be used to query the active layout direction of the application. It is based on QGuiApplication::layoutDirection(), which most commonly determines the layout direction from the active language translation file.</p>
<p>To define the layout direction for a particular locale, declare the dedicated string literal <tt>QT_LAYOUT_DIRECTION</tt> in context <tt>QGuiApplication</tt> as either &quot;LTR&quot; or &quot;RTL&quot;.</p>
<p>You can do this by first introducing this line</p>
<pre class="cpp">QT_TRANSLATE_NOOP(<span class="string">&quot;QGuiApplication&quot;</span><span class="operator">,</span> <span class="string">&quot;QT_LAYOUT_DIRECTION&quot;</span>);</pre>
<p>somewhere in your QML source code and calling <tt>lupdate</tt> to generate the translation source file.</p>
<pre class="cpp">lupdate myapp<span class="operator">.</span>qml <span class="operator">-</span>ts myapp<span class="operator">.</span>ts</pre>
<p>This will append the following declaration to the translation file, where you can fill in either &quot;LTR&quot; or &quot;RTL&quot; as the translation for the locale.</p>
<pre class="cpp"><span class="operator">&lt;</span>context<span class="operator">&gt;</span>
<span class="operator">&lt;</span>name<span class="operator">&gt;</span><span class="type">QGuiApplication</span><span class="operator">&lt;</span><span class="operator">/</span>name<span class="operator">&gt;</span>
<span class="operator">&lt;</span>message<span class="operator">&gt;</span>
<span class="operator">&lt;</span>location filename<span class="operator">=</span><span class="string">&quot;myapp.qml&quot;</span> line<span class="operator">=</span><span class="string">&quot;33&quot;</span><span class="operator">/</span><span class="operator">&gt;</span>
<span class="operator">&lt;</span>source<span class="operator">&gt;</span>QT_LAYOUT_DIRECTION<span class="operator">&lt;</span><span class="operator">/</span>source<span class="operator">&gt;</span>
<span class="operator">&lt;</span>translation type<span class="operator">=</span><span class="string">&quot;unfinished&quot;</span><span class="operator">&gt;</span>RTL<span class="operator">&lt;</span><span class="operator">/</span>translation<span class="operator">&gt;</span>
<span class="operator">&lt;</span><span class="operator">/</span>message<span class="operator">&gt;</span>
<span class="operator">&lt;</span><span class="operator">/</span>context<span class="operator">&gt;</span></pre>
<p>You can test that the layout direction works as expected by running your Qt Quick application with the compiled translation file:</p>
<pre class="cpp">qmlscene myapp<span class="operator">.</span>qml <span class="operator">-</span>translation myapp<span class="operator">.</span>qm</pre>
<p>You can test your application in right-to-left layout direction simply by executing qmlscene with a command-line parameter &quot;-reverse&quot;:</p>
<pre class="cpp">qmlscene myapp<span class="operator">.</span>qml <span class="operator">-</span>reverse</pre>
<p>The layout direction can also be set from C++ by calling the static function QGuiApplication::setLayoutDirection():</p>
<pre class="cpp"><span class="type">QGuiApplication</span> app(argc<span class="operator">,</span> argv);
app<span class="operator">.</span>setLayoutDirection(<span class="type">Qt</span><span class="operator">::</span>RightToLeft);</pre>
<!-- @@@qtquick-positioning-righttoleft.html -->
