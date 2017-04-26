---
Title: QtQml.qtqml-tutorials-extending-chapter6-plugins-example
---

# QtQml.qtqml-tutorials-extending-chapter6-plugins-example

<span class="subtitle"></span>
<!-- $$$tutorials/extending/chapter6-plugins-description -->
<p>Currently the <tt>PieChart</tt> and <tt>PieSlice</tt> types are used by <tt>app.qml</tt>, which is displayed using a QQuickView in a C++ application. An alternative way to use our QML extension is to create a plugin library to make it available to the QML engine as a new QML import module. This allows the <tt>PieChart</tt> and <tt>PieSlice</tt> types to be registered into a type namespace which can be imported by any QML application, instead of restricting these types to be only used by the one application.</p>
<p>The steps for creating a plugin are described in Creating C++ Plugins for QML. To start with, we create a plugin class named <tt>ChartsPlugin</tt>. It subclasses QQmlExtensionPlugin and registers our QML types in the inherited registerTypes() method.</p>
<p>Here is the <tt>ChartsPlugin</tt> definition in <tt>chartsplugin.h</tt>:</p>
<pre class="cpp"><span class="preprocessor">#include &lt;QQmlExtensionPlugin&gt;</span>
<span class="keyword">class</span> ChartsPlugin : <span class="keyword">public</span> <span class="type">QQmlExtensionPlugin</span>
{
Q_OBJECT
Q_PLUGIN_METADATA(IID <span class="string">&quot;org.qt-project.Qt.QQmlExtensionInterface&quot;</span>)
<span class="keyword">public</span>:
<span class="type">void</span> registerTypes(<span class="keyword">const</span> <span class="type">char</span> <span class="operator">*</span>uri);
};</pre>
<p>And its implementation in <tt>chartsplugin.cpp</tt>:</p>
<pre class="cpp"><span class="preprocessor">#include &quot;piechart.h&quot;</span>
<span class="preprocessor">#include &quot;pieslice.h&quot;</span>
<span class="preprocessor">#include &lt;qqml.h&gt;</span>
<span class="type">void</span> ChartsPlugin<span class="operator">::</span>registerTypes(<span class="keyword">const</span> <span class="type">char</span> <span class="operator">*</span>uri)
{
qmlRegisterType<span class="operator">&lt;</span>PieChart<span class="operator">&gt;</span>(uri<span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="string">&quot;PieChart&quot;</span>);
qmlRegisterType<span class="operator">&lt;</span>PieSlice<span class="operator">&gt;</span>(uri<span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="string">&quot;PieSlice&quot;</span>);
}</pre>
<p>Then, we write a <tt>.pro</tt> project file that defines the project as a plugin library and specifies with DESTDIR that library files should be built into a <tt>../Charts</tt> directory.</p>
<pre class="cpp">TEMPLATE = lib
CONFIG += plugin
QT += qml quick
DESTDIR = ../Charts
TARGET = $$qtLibraryTarget(chartsplugin)
HEADERS += piechart.h \
pieslice.h \
chartsplugin.h
SOURCES += piechart.cpp \
pieslice.cpp \
chartsplugin.cpp
DESTPATH=$$[QT_INSTALL_EXAMPLES]/qml/tutorials/extending/chapter6-plugins/Charts
target.path=$$DESTPATH
qmldir.files=$$PWD/qmldir
qmldir.path=$$DESTPATH
INSTALLS += target qmldir
OTHER_FILES += qmldir
# Copy the qmldir file to the same folder as the plugin binary
QMAKE_POST_LINK += $$QMAKE_COPY $$replace($$list($$quote($$PWD/qmldir) $$DESTDIR), /, $$QMAKE_DIR_SEP)</pre>
<p>In this example, the <tt>Charts</tt> directory is located at the same level as the application that uses our new import module. This way, the QML engine will find our module as the default search path for QML imports includes the directory of the application executable. Alternatively, we could control what directories the <a href="QtQml.qtqml-syntax-imports.md#qml-import-path">QML import path</a> contains, useful if there are multiple QML applications using the same QML imports.</p>
<p>The <tt>.pro</tt> file also contains additional magic to ensure that the <a href="QtQml.qtqml-modules-qmldir.md">module definition qmldir file</a> is always copied to the same location as the plugin binary.</p>
<p>The <tt>qmldir</tt> file declares the module name and the plugin that is made available by the module:</p>
<pre class="cpp">module Charts
plugin chartsplugin</pre>
<p>Now we have a QML module that can be imported to any application, provided that the QML engine knows where to find it. The example contains an executable that loads <tt>app.qml</tt>, which uses the <tt>import Charts 1.0</tt> statement. Alternatively, you can load the QML file using the qmlscene tool, setting the import path to the current directory so that it finds the <tt>qmldir</tt> file:</p>
<pre class="cpp">qmlscene <span class="operator">-</span>I <span class="operator">.</span> app<span class="operator">.</span>qml</pre>
<p>The module &quot;Charts&quot; will be loaded by the QML engine, and the types provided by that module will be available for use in any QML document which imports it.</p>
<p>Files:</p>
<ul>
<li>tutorials/extending/chapter6-plugins/app.qml</li>
<li>tutorials/extending/chapter6-plugins/import/chartsplugin.cpp</li>
<li>tutorials/extending/chapter6-plugins/import/chartsplugin.h</li>
<li>tutorials/extending/chapter6-plugins/import/piechart.cpp</li>
<li>tutorials/extending/chapter6-plugins/import/piechart.h</li>
<li>tutorials/extending/chapter6-plugins/import/pieslice.cpp</li>
<li>tutorials/extending/chapter6-plugins/import/pieslice.h</li>
<li>tutorials/extending/chapter6-plugins/main.cpp</li>
<li>tutorials/extending/chapter6-plugins/app.pro</li>
<li>tutorials/extending/chapter6-plugins/app.qrc</li>
<li>tutorials/extending/chapter6-plugins/chapter6-plugins.pro</li>
<li>tutorials/extending/chapter6-plugins/import/import.pro</li>
<li>tutorials/extending/chapter6-plugins/import/qmldir</li>
</ul>
<!-- @@@tutorials/extending/chapter6-plugins -->
