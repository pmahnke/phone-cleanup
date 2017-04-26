---
Title: QtQuick.Window.CloseEvent
---

# QtQuick.Window.CloseEvent

<span class="subtitle"></span>
<!-- $$$CloseEvent-brief -->
<p>Notification that a Window is about to be closed More...</p>
<!-- @@@CloseEvent -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import QtQuick.Window 2.1</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.1</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#accepted-prop">accepted</a></b></b> : bool</li>
</ul>
<!-- $$$CloseEvent-description -->
<h2>Detailed Description</h2>
<p>Notification that a window is about to be closed by the windowing system (e.g&#x2e; the user clicked the titlebar close button). The CloseEvent contains an accepted property which can be set to false to abort closing the window.</p>
<p><b>See also </b>Window.closing().</p>
<!-- @@@CloseEvent -->
<h2>Property Documentation</h2>
<!-- $$$accepted -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">accepted</span> : <span class="type">bool</span></p></td></tr></table><p>This property indicates whether the application will allow the user to close the window. It is true by default.</p>
<!-- @@@accepted -->
<br/>
