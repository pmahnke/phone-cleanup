---
Title: QtQuick.Window.Window
---

# QtQuick.Window.Window

<span class="subtitle"></span>
<!-- $$$Window-brief -->
<p>Creates a new top-level window More...</p>
<!-- @@@Window -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import QtQuick.Window 2.1</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Instantiates:</td><td class="memItemRight bottomAlign"> QQuickWindow</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#activeFocusItem-prop">activeFocusItem</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#color-prop">color</a></b></b> : color</li>
<li class="fn"><b><b><a href="#contentOrientation-prop">contentOrientation</a></b></b> : Qt::ScreenOrientation</li>
<li class="fn"><b><b><a href="#data-prop">data</a></b></b> : list&lt;Object&gt;</li>
<li class="fn"><b><b><a href="#flags-prop">flags</a></b></b> : Qt::WindowFlags</li>
<li class="fn"><b><b><a href="#height-prop">height</a></b></b> : int</li>
<li class="fn"><b><b><a href="#maximumHeight-prop">maximumHeight</a></b></b> : int</li>
<li class="fn"><b><b><a href="#maximumWidth-prop">maximumWidth</a></b></b> : int</li>
<li class="fn"><b><b><a href="#minimumHeight-prop">minimumHeight</a></b></b> : int</li>
<li class="fn"><b><b><a href="#minimumWidth-prop">minimumWidth</a></b></b> : int</li>
<li class="fn"><b><b><a href="#modality-prop">modality</a></b></b> : Qt::WindowModality</li>
<li class="fn"><b><b><a href="#opacity-prop">opacity</a></b></b> : real</li>
<li class="fn"><b><b><a href="#title-prop">title</a></b></b> : string</li>
<li class="fn"><b><b><a href="#visibility-prop">visibility</a></b></b> : QWindow::Visibility</li>
<li class="fn"><b><b><a href="#visible-prop">visible</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#width-prop">width</a></b></b> : int</li>
<li class="fn"><b><b><a href="#x-prop">x</a></b></b> : int</li>
<li class="fn"><b><b><a href="#y-prop">y</a></b></b> : int</li>
</ul>
<h2>Signals</h2>
<ul>
<li class="fn">void <b><b><a href="#closing-signal">closing</a></b></b>(CloseEvent <i>close</i>)</li>
</ul>
<!-- $$$Window-description -->
<h2>Detailed Description</h2>
<p>The Window object creates a new top-level window for a Qt Quick scene. It automatically sets up the window for use with <tt>QtQuick 2.x</tt> graphical types.</p>
<p>To use this type, you will need to import the module with the following line:</p>
<pre class="cpp">import <span class="type">QtQuick</span><span class="operator">.</span>Window <span class="number">2.1</span></pre>
<p>Omitting this import will allow you to have a QML environment without access to window system features.</p>
<p>A Window can be declared inside an Item or inside another Window; in that case the inner Window will automatically become &quot;transient for&quot; the outer Window: that is, most platforms will show it centered upon the outer window by default, and there may be other platform-dependent behaviors, depending also on the <a href="#flags-prop">flags</a>. If the nested window is intended to be a dialog in your application, you should also set <a href="#flags-prop">flags</a> to Qt.Dialog, because some window managers will not provide the centering behavior without that flag. You can also declare multiple windows inside a top-level QtObject, in which case the windows will have no transient relationship.</p>
<p>Alternatively you can set or bind <a href="#x-prop">x</a> and <a href="#y-prop">y</a> to position the Window explicitly on the screen.</p>
<p>When the user attempts to close a window, the <i>closing</i> signal will be emitted. You can force the window to stay open (for example to prompt the user to save changes) by writing an onClosing handler and setting close.accepted = false.</p>
<!-- @@@Window -->
<h2>Property Documentation</h2>
<!-- $$$activeFocusItem -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">activeFocusItem</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The item which currently has active focus or <tt>null</tt> if there is no item with active focus.</p>
<p>This QML property was introduced in  Qt 5.1.</p>
<!-- @@@activeFocusItem -->
<br/>
<!-- $$$color -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">color</span> : <span class="type">color</span></p></td></tr></table><p>The background color for the window.</p>
<p>Setting this property is more efficient than using a separate Rectangle.</p>
<!-- @@@color -->
<br/>
<!-- $$$contentOrientation -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">contentOrientation</span> : <span class="type">Qt::ScreenOrientation</span></p></td></tr></table><p>This is a hint to the window manager in case it needs to display additional content like popups, dialogs, status bars, or similar in relation to the window.</p>
<p>The recommended orientation is <a href="QtQuick.Window.Screen.md#orientation-prop">Screen.orientation</a>, but an application doesn't have to support all possible orientations, and thus can opt to ignore the current screen orientation.</p>
<p>The difference between the window and the content orientation determines how much to rotate the content by.</p>
<p>The default value is Qt::PrimaryOrientation.</p>
<p>This QML property was introduced in  Qt 5.1.</p>
<p><b>See also </b><a href="QtQuick.Window.Screen.md">Screen</a>.</p>
<!-- @@@contentOrientation -->
<br/>
<!-- $$$data -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="qmldefault">default</span><span class="name">data</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td></tr></table><p>The data property allows you to freely mix visual children, resources and other Windows in a Window.</p>
<p>If you assign another Window to the data list, the nested window will become &quot;transient for&quot; the outer Window.</p>
<p>If you assign an <a href="QtQuick.Item.md">Item</a> to the data list, it becomes a child of the Window's contentItem, so that it appears inside the window. The item's parent will be the window's contentItem, which is the root of the Item ownership tree within that Window.</p>
<p>If you assign any other object type, it is added as a resource.</p>
<p>It should not generally be necessary to refer to the <tt>data</tt> property, as it is the default property for Window and thus all child items are automatically assigned to this property.</p>
<p><b>See also </b>QWindow::transientParent().</p>
<!-- @@@data -->
<br/>
<!-- $$$flags -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">flags</span> : <span class="type">Qt::WindowFlags</span></p></td></tr></table><p>The window flags of the window.</p>
<p>The window flags control the window's appearance in the windowing system, whether it's a dialog, popup, or a regular window, and whether it should have a title bar, etc.</p>
<p>The flags which you read from this property might differ from the ones that you set if the requested flags could not be fulfilled.</p>
<!-- @@@flags -->
<br/>
<!-- $$$height -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">height</span> : <span class="type">int</span></p></td></tr></table><p>Defines the window's position and size.</p>
<p>The (x,y) position is relative to the <a href="QtQuick.Window.Screen.md">Screen</a> if there is only one, or to the virtual desktop (arrangement of multiple screens).</p>
<pre class="qml"><span class="type"><a href="index.html">Window</a></span> { <span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">100</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span> }</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/a9b08b38-19b2-4c31-98c7-fc20eeabbd30-../QtQuick.Window.Window/images/screen-and-window-dimensions.jpg" alt="" /></p><!-- @@@height -->
<br/>
<!-- $$$maximumHeight -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">maximumHeight</span> : <span class="type">int</span></p></td></tr></table><p>Defines the window's maximum size.</p>
<p>This is a hint to the window manager to prevent resizing above the specified width and height.</p>
<p>This QML property was introduced in  Qt 5.1.</p>
<!-- @@@maximumHeight -->
<br/>
<!-- $$$maximumWidth -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">maximumWidth</span> : <span class="type">int</span></p></td></tr></table><p>Defines the window's maximum size.</p>
<p>This is a hint to the window manager to prevent resizing above the specified width and height.</p>
<p>This QML property was introduced in  Qt 5.1.</p>
<!-- @@@maximumWidth -->
<br/>
<!-- $$$minimumHeight -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">minimumHeight</span> : <span class="type">int</span></p></td></tr></table><p>Defines the window's minimum size.</p>
<p>This is a hint to the window manager to prevent resizing below the specified width and height.</p>
<p>This QML property was introduced in  Qt 5.1.</p>
<!-- @@@minimumHeight -->
<br/>
<!-- $$$minimumWidth -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">minimumWidth</span> : <span class="type">int</span></p></td></tr></table><p>Defines the window's minimum size.</p>
<p>This is a hint to the window manager to prevent resizing below the specified width and height.</p>
<p>This QML property was introduced in  Qt 5.1.</p>
<!-- @@@minimumWidth -->
<br/>
<!-- $$$modality -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">modality</span> : <span class="type">Qt::WindowModality</span></p></td></tr></table><p>The modality of the window.</p>
<p>A modal window prevents other windows from receiving input events. Possible values are Qt.NonModal (the default), Qt.WindowModal, and Qt.ApplicationModal.</p>
<!-- @@@modality -->
<br/>
<!-- $$$opacity -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">opacity</span> : <span class="type">real</span></p></td></tr></table><p>The opacity of the window.</p>
<p>If the windowing system supports window opacity, this can be used to fade the window in and out, or to make it semitransparent.</p>
<p>A value of 1.0 or above is treated as fully opaque, whereas a value of 0.0 or below is treated as fully transparent. Values inbetween represent varying levels of translucency between the two extremes.</p>
<p>The default value is 1.0&#x2e;</p>
<p>This QML property was introduced in  Qt 5.1.</p>
<!-- @@@opacity -->
<br/>
<!-- $$$title -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">title</span> : <span class="type">string</span></p></td></tr></table><p>The window's title in the windowing system.</p>
<p>The window title might appear in the title area of the window decorations, depending on the windowing system and the window flags. It might also be used by the windowing system to identify the window in other contexts, such as in the task switcher.</p>
<!-- @@@title -->
<br/>
<!-- $$$visibility -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">visibility</span> : <span class="type">QWindow::Visibility</span></p></td></tr></table><p>The screen-occupation state of the window.</p>
<p>Visibility is whether the window should appear in the windowing system as normal, minimized, maximized, fullscreen or hidden.</p>
<p>To set the visibility to AutomaticVisibility means to give the window a default visible state, which might be fullscreen or windowed depending on the platform. However when reading the visibility property you will always get the actual state, never AutomaticVisibility.</p>
<p>When a window is not visible its visibility is Hidden, and setting visibility to Hidden is the same as setting <a href="#visible-prop">visible</a> to false.</p>
<p>This QML property was introduced in  Qt 5.1.</p>
<p><b>See also </b><a href="#visible-prop">visible</a>.</p>
<!-- @@@visibility -->
<br/>
<!-- $$$visible -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">visible</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the window is visible on the screen.</p>
<p>Setting visible to false is the same as setting <a href="#visibility-prop">visibility</a> to Hidden.</p>
<p><b>See also </b><a href="#visibility-prop">visibility</a>.</p>
<!-- @@@visible -->
<br/>
<!-- $$$width -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">width</span> : <span class="type">int</span></p></td></tr></table><p>Defines the window's position and size.</p>
<p>The (x,y) position is relative to the <a href="QtQuick.Window.Screen.md">Screen</a> if there is only one, or to the virtual desktop (arrangement of multiple screens).</p>
<pre class="qml"><span class="type"><a href="index.html">Window</a></span> { <span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">100</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span> }</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/89b297c4-7ea5-45ca-b3cd-27d0a59e75ff-../QtQuick.Window.Window/images/screen-and-window-dimensions.jpg" alt="" /></p><!-- @@@width -->
<br/>
<!-- $$$x -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">x</span> : <span class="type">int</span></p></td></tr></table><p>Defines the window's position and size.</p>
<p>The (x,y) position is relative to the <a href="QtQuick.Window.Screen.md">Screen</a> if there is only one, or to the virtual desktop (arrangement of multiple screens).</p>
<pre class="qml"><span class="type"><a href="index.html">Window</a></span> { <span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">100</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span> }</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/41a5a402-2e09-4ead-95c6-cd350f02b8e2-../QtQuick.Window.Window/images/screen-and-window-dimensions.jpg" alt="" /></p><!-- @@@x -->
<br/>
<!-- $$$y -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">y</span> : <span class="type">int</span></p></td></tr></table><p>Defines the window's position and size.</p>
<p>The (x,y) position is relative to the <a href="QtQuick.Window.Screen.md">Screen</a> if there is only one, or to the virtual desktop (arrangement of multiple screens).</p>
<pre class="qml"><span class="type"><a href="index.html">Window</a></span> { <span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">100</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span> }</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/597bdac7-dbee-4479-a4e0-e065a2fadcc7-../QtQuick.Window.Window/images/screen-and-window-dimensions.jpg" alt="" /></p><!-- @@@y -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$closing -->
<table class="qmlname"><tr valign="top"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">closing</span>(<span class="type"><a href="QtQuick.Window.CloseEvent.md">CloseEvent</a></span><i> close</i>)</p></td></tr></table><p>This signal is emitted when the user tries to close the window.</p>
<p>This signal includes a <a href="QtQuick.Window.CloseEvent.md">closeEvent</a> parameter. The <i>close</i> accepted property is true by default so that the window is allowed to close; but you can implement an onClosing() handler and set close.accepted = false if you need to do something else before the window can be closed.</p>
<p>The corresponding handler is <tt>onClosing</tt>.</p>
<p>This QML signal was introduced in  Qt 5.1.</p>
<!-- @@@closing -->
<br/>
