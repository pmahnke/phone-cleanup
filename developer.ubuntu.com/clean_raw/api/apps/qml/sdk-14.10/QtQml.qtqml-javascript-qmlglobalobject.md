---
Title: QtQml.qtqml-javascript-qmlglobalobject
---

# QtQml.qtqml-javascript-qmlglobalobject

<span class="subtitle"></span>
<!-- $$$qtqml-javascript-qmlglobalobject.html-description -->
<p>The QML JavaScript host environment implements the following host objects and functions. These are built in and can be used from any JavaScript code loaded in QML, without additional imports:</p>
<ul>
<li>The <a href="QtQml.Qt.md#qmlglobalqtobject">Qt object</a>: This object is specific to QML, and provides helper methods and properties specific to the QML environment.</li>
<li>qsTr(), qsTranslate(), qsTrId(), QT_TR_NOOP(), QT_TRANSLATE_NOOP(), and QT_TRID_NOOP() functions: These functions are specific to QML, and provide translation capabilities to the QML environment.</li>
<li>gc() function: This function is specific to QML, and provides a way to manually trigger garbage collection.</li>
<li>print() function: This function is specific to QML, and provides a simple way to output information to the console.</li>
<li>The console object: This object implements a subset of the <a href="http://getfirebug.com/wiki/index.php/Console_API">FireBug Console API</a>.</li>
<li>XMLHttpRequest, DOMException: These objects implement a subset of the W3C XMLHttpRequest specification.</li>
</ul>
<h2>XMLHttpRequest</h2>
<p>The XMLHttpRequest object, which can be used to asynchronously obtain data from over a network.</p>
<p>The XMLHttpRequest API implements the same W3C standard as many popular web browsers with following exceptions:</p>
<ul>
<li>QML's XMLHttpRequest does not enforce the same origin policy.</li>
<li>QML's XMLHttpRequest does not support <i>synchronous</i> requests.</li>
</ul>
<p>Additionally, the <tt>responseXML</tt> XML DOM tree currently supported by QML is a reduced subset of the <a href="http://www.w3.org/TR/DOM-Level-3-Core/">DOM Level 3 Core</a> API supported in a web browser. The following objects and properties are supported by the QML implementation:</p>
<table class="generic">
<thead><tr class="qt-style"><th ><b>Node</b></th><th ><b>Document</b></th><th ><b>Element</b></th><th ><b>Attr</b></th><th ><b>CharacterData</b></th><th ><b>Text</b></th></tr></thead>
<tr valign="top"><td ><ul>
<li>nodeName</li>
<li>nodeValue</li>
<li>nodeType</li>
<li>parentNode</li>
<li>childNodes</li>
<li>firstChild</li>
<li>lastChild</li>
<li>previousSibling</li>
<li>nextSibling</li>
<li>attributes</li>
</ul>
</td><td ><ul>
<li>xmlVersion</li>
<li>xmlEncoding</li>
<li>xmlStandalone</li>
<li>documentElement</li>
</ul>
</td><td ><ul>
<li>tagName</li>
</ul>
</td><td ><ul>
<li>name</li>
<li>value</li>
<li>ownerElement</li>
</ul>
</td><td ><ul>
<li>data</li>
<li>length</li>
</ul>
</td><td ><ul>
<li>isElementContentWhitespace</li>
<li>wholeText</li>
</ul>
</td></tr>
</table>
<p>The XMLHttpRequest example demonstrates how to use the XMLHttpRequest object to make a request and read the response headers.</p>
<!-- @@@qtqml-javascript-qmlglobalobject.html -->
