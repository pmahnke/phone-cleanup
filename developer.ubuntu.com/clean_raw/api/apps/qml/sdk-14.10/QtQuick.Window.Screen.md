---
Title: QtQuick.Window.Screen
---

# QtQuick.Window.Screen

<span class="subtitle"></span>
<!-- $$$Screen-brief -->
<p>The Screen attached object provides information about the Screen an Item or Window is displayed on. More...</p>
<!-- @@@Screen -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import QtQuick.Window 2.1</tt></td></tr></table><ul>
</ul>
<h2>Attached Properties</h2>
<ul>
<li class="fn"><b><b><a href="#desktopAvailableHeight-prop">desktopAvailableHeight</a></b></b> : int</li>
<li class="fn"><b><b><a href="#desktopAvailableWidth-prop">desktopAvailableWidth</a></b></b> : int</li>
<li class="fn"><b><b><a href="#height-prop">height</a></b></b> : int</li>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="#orientation-prop">orientation</a></b></b> : Qt::ScreenOrientation</li>
<li class="fn"><b><b><a href="#pixelDensity-prop">pixelDensity</a></b></b> : real</li>
<li class="fn"><b><b><a href="#primaryOrientation-prop">primaryOrientation</a></b></b> : Qt::ScreenOrientation</li>
<li class="fn"><b><b><a href="#width-prop">width</a></b></b> : int</li>
</ul>
<!-- $$$Screen-description -->
<h2>Detailed Description</h2>
<p>The Screen attached object is valid inside Item or Item derived types, after component completion. Inside these items it refers to the screen that the item is currently being displayed on.</p>
<p>The attached object is also valid inside Window or Window derived types, after component completion. In that case it refers to the screen where the Window was created. It is generally better to access the Screen from the relevant Item instead, because on a multi-screen desktop computer, the user can drag a Window into a position where it spans across multiple screens. In that case some Items will be on one screen, and others on a different screen.</p>
<p>To use this type, you will need to import the module with the following line:</p>
<pre class="cpp">import <span class="type">QtQuick</span><span class="operator">.</span>Window <span class="number">2.1</span></pre>
<p>It is a separate import in order to allow you to have a QML environment without access to window system features.</p>
<p>Note that the Screen type is not valid at Component.onCompleted, because the Item or Window has not been displayed on a screen by this time.</p>
<!-- @@@Screen -->
<h2>Attached Property Documentation</h2>
<!-- $$$desktopAvailableHeight -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">.desktopAvailableHeight</span> : <span class="type">int</span></p></td></tr></table><p>This contains the available height of the collection of screens which make up the virtual desktop, in pixels, excluding window manager reserved areas such as task bars and system menus. If you want to position a Window at the bottom of the desktop, you can bind to it like this:</p>
<pre class="cpp">y: Screen<span class="operator">.</span>desktopAvailableHeight <span class="operator">-</span> height</pre>
<p>This QML property was introduced in  Qt 5.1.</p>
<!-- @@@desktopAvailableHeight -->
<br/>
<!-- $$$desktopAvailableWidth -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">.desktopAvailableWidth</span> : <span class="type">int</span></p></td></tr></table><p>This contains the available width of the collection of screens which make up the virtual desktop, in pixels, excluding window manager reserved areas such as task bars and system menus. If you want to position a Window at the right of the desktop, you can bind to it like this:</p>
<pre class="cpp">x: Screen<span class="operator">.</span>desktopAvailableWidth <span class="operator">-</span> width</pre>
<p>This QML property was introduced in  Qt 5.1.</p>
<!-- @@@desktopAvailableWidth -->
<br/>
<!-- $$$height -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">.height</span> : <span class="type">int</span></p></td></tr></table><p>This contains the height of the screen in pixels.</p>
<!-- @@@height -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">.name</span> : <span class="type">string</span></p></td></tr></table><p>The name of the screen.</p>
<p>This QML property was introduced in  Qt 5.1.</p>
<!-- @@@name -->
<br/>
<!-- $$$orientation -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">.orientation</span> : <span class="type">Qt::ScreenOrientation</span></p></td></tr></table><p>This contains the current orientation of the screen, from the accelerometer (if any). On a desktop computer, this value typically does not change.</p>
<p>If <a href="#primaryOrientation-prop">primaryOrientation</a> == orientation, it means that the screen automatically rotates all content which is displayed, depending on how you hold it. But if orientation changes while <a href="#primaryOrientation-prop">primaryOrientation</a> does NOT change, then probably you are using a device which does not rotate its own display. In that case you may need to use <a href="QtQuick.Item.md#rotation-prop">Item.rotation</a> or <a href="QtQuick.Item.md#transform-prop">Item.transform</a> to rotate your content.</p>
<!-- @@@orientation -->
<br/>
<!-- $$$pixelDensity -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">.pixelDensity</span> : <span class="type">real</span></p></td></tr></table><p>The number of physical pixels per millimeter.</p>
<p>This QML property was introduced in  Qt 5.2.</p>
<!-- @@@pixelDensity -->
<br/>
<!-- $$$primaryOrientation -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">.primaryOrientation</span> : <span class="type">Qt::ScreenOrientation</span></p></td></tr></table><p>This contains the primary orientation of the screen. If the screen's height is greater than its width, then the orientation is Qt.PortraitOrientation; otherwise it is Qt.LandscapeOrientation.</p>
<p>If you are designing an application which changes its layout depending on device orientation, you probably want to use primaryOrientation to determine the layout. That is because on a desktop computer, you can expect primaryOrientation to change when the user rotates the screen via the operating system's control panel, even if the computer does not contain an accelerometer. Likewise on most handheld computers which do have accelerometers, the operating system will rotate the whole screen automatically, so again you will see the primaryOrientation change.</p>
<!-- @@@primaryOrientation -->
<br/>
<!-- $$$width -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="qmlreadonly">read-only</span><span class="name">.width</span> : <span class="type">int</span></p></td></tr></table><p>This contains the width of the screen in pixels.</p>
<!-- @@@width -->
<br/>
