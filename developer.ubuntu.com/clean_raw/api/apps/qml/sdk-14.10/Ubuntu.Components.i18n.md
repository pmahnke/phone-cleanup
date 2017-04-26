---
Title: Ubuntu.Components.i18n
---

# Ubuntu.Components.i18n

<span class="subtitle"></span>
<!-- $$$i18n-brief -->
<p>i18n is a context property that provides internationalization support. More...</p>
<!-- @@@i18n -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import Ubuntu.Components 1.1</tt></td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#domain-prop">domain</a></b></b> : string</li>
<li class="fn"><b><b><a href="#language-prop">language</a></b></b> : string</li>
</ul>
<h2>Methods</h2>
<ul>
<li class="fn">string <b><b><a href="#dtr-method-2">dtr</a></b></b>(string <i>domain</i>, string <i>singular</i>, string <i>plural</i>, int <i>n</i>)</li>
<li class="fn">string <b><b><a href="#dtr-method">dtr</a></b></b>(string <i>domain</i>, string <i>text</i>)</li>
<li class="fn">string <b><b><a href="#tr-method-2">tr</a></b></b>(string <i>singular</i>, string <i>plural</i>, int <i>n</i>)</li>
<li class="fn">string <b><b><a href="#tr-method">tr</a></b></b>(string <i>text</i>)</li>
</ul>
<!-- $$$i18n-description -->
<h2>Detailed Description</h2>
<p>i18n cannot be instantiated, and is already available as a context property. It is based on <a href="https://www.gnu.org/software/gettext/">gettext</a>, and thus the standard gettext tools can be used for translating a project. Example:</p>
<pre class="qml">import QtQuick 2.0
import Ubunut.Components 0.1
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Press me&quot;</span>)
}
}</pre>
<!-- @@@i18n -->
<h2>Property Documentation</h2>
<!-- $$$domain -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">domain</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td></tr></table><p>The gettext domain to be used for the translation. The default domain is the applicationName specified in the application's <a href="Ubuntu.Components.MainView.md">MainView</a>, or the empty string &quot;&quot; if no applicationName was given or no <a href="Ubuntu.Components.MainView.md">MainView</a> is used. Use <a href="#dtr-method">dtr()</a> functions instead of <a href="#tr-method">tr()</a> to use a different domain for a single translation that ignores i18n.domain.</p>
<!-- @@@domain -->
<br/>
<!-- $$$language -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">language</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td></tr></table><p>The language that is used for the translation. The default value is the user's locale dending on $LC_ALL, $LC_MESSAGES and $LANG at the time of running the application. See the gettext manual for details.</p>
<!-- @@@language -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$dtr -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span> <span class="name">dtr</span>(<span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span><i> domain</i>, <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span><i> singular</i>, <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span><i> plural</i>, <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-int.html">int</a></span><i> n</i>)</p></td></tr></table><p>Translate the given text using gettext. Should be called like this: tr(domain, &quot;%n file&quot;, &quot;%n files&quot;, count) Uses <i>domain</i> for the domain instead of i18n.domain, and <i>singular</i> or <i>plural</i> as input for the translation depending on the number of items <i>n</i>.</p>
<!-- @@@dtr -->
<br/>
<!-- $$$dtr -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span> <span class="name">dtr</span>(<span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span><i> domain</i>, <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span><i> text</i>)</p></td></tr></table><p>Translate <i>text</i> using gettext. Uses the specified domain <i>domain</i> instead of i18n.domain.</p>
<!-- @@@dtr -->
<br/>
<!-- $$$tr -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span> <span class="name">tr</span>(<span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span><i> singular</i>, <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span><i> plural</i>, <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-int.html">int</a></span><i> n</i>)</p></td></tr></table><p>Translate the given input string <i>singular</i> or <i>plural</i> (depending on the number of items <i>n</i>) using gettext. Should be called like this: tr(&quot;%n file&quot;, &quot;%n files&quot;, count)</p>
<!-- @@@tr -->
<br/>
<!-- $$$tr -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span> <span class="name">tr</span>(<span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span><i> text</i>)</p></td></tr></table><p>Translate <i>text</i> using gettext and return the translation.</p>
<!-- @@@tr -->
<br/>
