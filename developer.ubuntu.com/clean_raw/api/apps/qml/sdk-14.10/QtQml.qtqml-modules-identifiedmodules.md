---
Title: QtQml.qtqml-modules-identifiedmodules
---

# QtQml.qtqml-modules-identifiedmodules

<span class="subtitle"></span>
<!-- $$$qtqml-modules-identifiedmodules.html-description -->
<p>Identified modules are modules that are installed and identifiable to the QML engine by a URI in the form of a dotted identifier string, which should be specified by the module in its <tt>qmldir</tt> file. This enables such modules to be imported with a unique identifier that remains the same no matter where the module is located on the local file system.</p>
<p>When importing an identified module, an unquoted identifier is used, with a mandatory version number:</p>
<pre class="qml">import QtQuick 2.0
import com.nokia.qml.mymodule 1.0</pre>
<p>Identified modules must be installed into the <a href="QtQml.qtqml-syntax-imports.md#qml-import-path">import path</a> in order to be found by the QML engine.</p>
<h2>Locally Installed Identified Modules</h2>
<p>A directory of QML and/or C++ files can be shared as an identified module if it contains a <a href="QtQml.qtqml-modules-qmldir.md">qmldir file</a> with the module metadata and is installed into the QML import path. Any QML file on the local file system can import this directory as a module by using an <a href="QtQml.qtqml-syntax-imports.md">import</a> statement that refers to the module's URI, enabling the file to use the <a href="QtQml.qtqml-typesystem-objecttypes.md">QML object types</a> and <a href="QtQml.qtqml-javascript-resources.md">JavaScript resources</a> defined by the module.</p>
<p>The module's <tt>qmldir</tt> file must reside in a directory structure within the <a href="QtQml.qtqml-syntax-imports.md#qml-import-path">import path</a> that reflects the URI dotted identifier string, where each dot (&quot;.&quot;) in the identifier reflects a sub-level in the directory tree. For example, the <tt>qmldir</tt> file of the module <tt>com.mycompany.mymodule</tt> must be located in the sub-path <tt>com/mycompany/mymodule/qmldir</tt> somewhere in the <a href="QtQml.qtqml-syntax-imports.md#qml-import-path">import path</a>.</p>
<p>It is possible to store different versions of a module in subdirectories of its own. For example, a version 2.1 of a module could be located under <tt>com/mycompany/mymodule.2/qmldir</tt> or <tt>com/mycompany/mymodule.2&#x2e;1/qmldir</tt>. The engine will automatically load the module which matches best.</p>
<p>Alternatively, versioning for different types can be defined within a qmldir file itself, however this can make updating such a module more difficult (as a <tt>qmldir</tt> file merge must take place as part of the update procedure).</p>
<h3>An Example</h3>
<p>Consider the following QML project directory structure. Under the top level directory <tt>myapp</tt>, there are a set of common UI components in a sub-directory named <tt>mycomponents</tt>, and the main application code in a sub-directory named <tt>main</tt>, like this:</p>
<pre class="cpp">myapp
<span class="operator">|</span><span class="operator">-</span> mycomponents
<span class="operator">|</span><span class="operator">-</span> CheckBox<span class="operator">.</span>qml
<span class="operator">|</span><span class="operator">-</span> DialogBox<span class="operator">.</span>qml
<span class="operator">|</span><span class="operator">-</span> Slider<span class="operator">.</span>qml
<span class="operator">|</span><span class="operator">-</span> main
<span class="operator">|</span><span class="operator">-</span> application<span class="operator">.</span>qml</pre>
<p>To make the <tt>mycomponents</tt> directory available as an identified module, the directory must include a <a href="QtQml.qtqml-modules-qmldir.md">qmldir file</a> that defines the module identifier, and describes the object types made available by the module. For example, to make the <tt>CheckBox</tt>, <tt>DialogBox</tt> and <tt>Slider</tt> types available for version 1.0 of the module, the <tt>qmldir</tt> file would contain the following:</p>
<pre class="cpp">module myapp<span class="operator">.</span>mycomponents
CheckBox <span class="number">1.0</span> CheckBox<span class="operator">.</span>qml
DialogBox <span class="number">1.0</span> DialogBox<span class="operator">.</span>qml
Slider <span class="number">1.0</span> Slider<span class="operator">.</span>qml</pre>
<p>Additionally, the location of the <tt>qmldir</tt> file in the <a href="QtQml.qtqml-syntax-imports.md#qml-import-path">import path</a> must match the module's dotted identifier string. So, say the top level <tt>myapp</tt> directory is located in <tt>C:\qml\projects</tt>, and say the module should be identified as &quot;myapp.mycomponents&quot;. In this case:</p>
<ul>
<li>The path <tt>C:\qml\projects</tt> should be added to the <a href="QtQml.qtqml-syntax-imports.md#qml-import-path">import path</a></li>
<li>The qmldir file should be located under <tt>C:\qml\projects\myapp\mycomponents\qmldir</tt></li>
</ul>
<p>Once this is done, a QML file located anywhere on the local filesystem can import the module by referring to its URI and the appropriate version:</p>
<pre class="qml">import myapp.mycomponents 1.0
<span class="type">DialogBox</span> {
<span class="type">CheckBox</span> {
<span class="comment">// ...</span>
}
<span class="type">Slider</span> {
<span class="comment">// ...</span>
}
}</pre>
<h2>Remotely Installed Identified Modules</h2>
<p>Identified modules are also accessible as a network resource. In the previous example, if the <tt>C:\qml\projects</tt> directory was hosted as <tt>http://www.some-server.com/qml/projects</tt> and this URL was added to the QML import path, the module could be imported in exactly the same way.</p>
<p>Note that when a file imports a module over a network, it can only access QML and JavaScript resources provided by the module; it cannot access any types defined by C++ plugins in the module.</p>
<h2>Semantics of Identified Modules</h2>
<p>An identified module is provided with the following guarantees by the QML engine:</p>
<ul>
<li>other modules are unable to modify or override types in the module's namespace</li>
<li>other modules are unable to register new types into the module's namespace</li>
<li>usage of type names by clients will resolve deterministically to a given type definition depending on the versioning specified and the import order</li>
</ul>
<p>This ensures that clients which use the module can be certain that the object types defined in the module will behave as the module author documented.</p>
<p>An identified module has several restrictions upon it:</p>
<ul>
<li>an identified module must must be installed into the <a href="QtQml.qtqml-syntax-imports.md#qml-import-path">QML import path</a></li>
<li>the module identifier specified in the <a href="QtQml.qtqml-modules-qmldir.md">module identifier directive</a> must match the install path of the module (relative to the QML import path, where directory separators are replaced with period characters)</li>
<li>the module must register its types into the module identifier type namespace</li>
<li>the module may not register types into any other module's namespace</li>
<li>clients must specify a version when importing the module</li>
</ul>
<p>For example, if an identified module is installed into <tt>$QML2_IMPORT_PATH/ExampleModule</tt>, the module identifier directive must be:</p>
<pre class="cpp">module ExampleModule</pre>
<p>If the strict module is installed into <tt>$QML2_IMPORT_PATH/com/example/CustomUi</tt>, the module identifier directive must be:</p>
<pre class="cpp">module com<span class="operator">.</span>example<span class="operator">.</span>CustomUi</pre>
<p>Clients will then be able to import the above module with the following import statement (assuming that the module registers types into version 1.0 of its namespace):</p>
<pre class="qml">import com.example.CustomUi 1.0</pre>
<!-- @@@qtqml-modules-identifiedmodules.html -->