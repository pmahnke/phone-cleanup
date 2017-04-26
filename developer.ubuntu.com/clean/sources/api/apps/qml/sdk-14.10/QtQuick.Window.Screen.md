---
Title: QtQuick.Window.Screen
---
        
Screen
======

<span class="subtitle"></span>
The Screen attached object provides information about the Screen an Item or Window is displayed on. More...

|                   |                             |
|-------------------|-----------------------------|
| Import Statement: | `import QtQuick.Window 2.1` |

<span id="attached-properties"></span>
Attached Properties
-------------------

-   ****[desktopAvailableHeight](#desktopAvailableHeight-prop)**** : int
-   ****[desktopAvailableWidth](#desktopAvailableWidth-prop)**** : int
-   ****[height](#height-prop)**** : int
-   ****[name](#name-prop)**** : string
-   ****[orientation](#orientation-prop)**** : Qt::ScreenOrientation
-   ****[pixelDensity](#pixelDensity-prop)**** : real
-   ****[primaryOrientation](#primaryOrientation-prop)**** : Qt::ScreenOrientation
-   ****[width](#width-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

The Screen attached object is valid inside Item or Item derived types, after component completion. Inside these items it refers to the screen that the item is currently being displayed on.

The attached object is also valid inside Window or Window derived types, after component completion. In that case it refers to the screen where the Window was created. It is generally better to access the Screen from the relevant Item instead, because on a multi-screen desktop computer, the user can drag a Window into a position where it spans across multiple screens. In that case some Items will be on one screen, and others on a different screen.

To use this type, you will need to import the module with the following line:

``` cpp
import QtQuick.Window 2.1
```

It is a separate import in order to allow you to have a QML environment without access to window system features.

Note that the Screen type is not valid at Component.onCompleted, because the Item or Window has not been displayed on a screen by this time.

Attached Property Documentation
-------------------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="desktopAvailableHeight-prop"></span><span class="qmlreadonly">read-only</span><span class="name">.desktopAvailableHeight</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This contains the available height of the collection of screens which make up the virtual desktop, in pixels, excluding window manager reserved areas such as task bars and system menus. If you want to position a Window at the bottom of the desktop, you can bind to it like this:

``` cpp
y: Screen.desktopAvailableHeight - height
```

This QML property was introduced in Qt 5.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="desktopAvailableWidth-prop"></span><span class="qmlreadonly">read-only</span><span class="name">.desktopAvailableWidth</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This contains the available width of the collection of screens which make up the virtual desktop, in pixels, excluding window manager reserved areas such as task bars and system menus. If you want to position a Window at the right of the desktop, you can bind to it like this:

``` cpp
x: Screen.desktopAvailableWidth - width
```

This QML property was introduced in Qt 5.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="height-prop"></span><span class="qmlreadonly">read-only</span><span class="name">.height</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This contains the height of the screen in pixels.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="qmlreadonly">read-only</span><span class="name">.name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The name of the screen.

This QML property was introduced in Qt 5.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="orientation-prop"></span><span class="qmlreadonly">read-only</span><span class="name">.orientation</span> : <span class="type">Qt::ScreenOrientation</span></p></td>
</tr>
</tbody>
</table>

This contains the current orientation of the screen, from the accelerometer (if any). On a desktop computer, this value typically does not change.

If [primaryOrientation](#primaryOrientation-prop) == orientation, it means that the screen automatically rotates all content which is displayed, depending on how you hold it. But if orientation changes while [primaryOrientation](#primaryOrientation-prop) does NOT change, then probably you are using a device which does not rotate its own display. In that case you may need to use [Item.rotation](../QtQuick.Item.md#rotation-prop) or [Item.transform](../QtQuick.Item.md#transform-prop) to rotate your content.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pixelDensity-prop"></span><span class="qmlreadonly">read-only</span><span class="name">.pixelDensity</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The number of physical pixels per millimeter.

This QML property was introduced in Qt 5.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="primaryOrientation-prop"></span><span class="qmlreadonly">read-only</span><span class="name">.primaryOrientation</span> : <span class="type">Qt::ScreenOrientation</span></p></td>
</tr>
</tbody>
</table>

This contains the primary orientation of the screen. If the screen's height is greater than its width, then the orientation is Qt.PortraitOrientation; otherwise it is Qt.LandscapeOrientation.

If you are designing an application which changes its layout depending on device orientation, you probably want to use primaryOrientation to determine the layout. That is because on a desktop computer, you can expect primaryOrientation to change when the user rotates the screen via the operating system's control panel, even if the computer does not contain an accelerometer. Likewise on most handheld computers which do have accelerometers, the operating system will rotate the whole screen automatically, so again you will see the primaryOrientation change.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="width-prop"></span><span class="qmlreadonly">read-only</span><span class="name">.width</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This contains the width of the screen in pixels.

