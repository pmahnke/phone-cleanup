---
Title: QtQuick.qtquick-window-example
---
        
Qt Quick Examples - Window and Screen
=====================================

<span class="subtitle"></span>
<span id="details"></span>
This example demonstrates the Window and Screen types in QML

![](https://developer.ubuntu.com/static/devportal_uploaded/ded8cc98-9a4a-4b8c-ad0f-8c6a5df89334-api/apps/qml/sdk-14.10/qtquick-window-example/images/qml-window-example.png)

This example shows you how to create a Window in QML, how to control its visibility, how to present a splash screen during application startup, and how to access the properties of the [Screen](../QtQuick.Window.Screen.md). It also demonstrates how to package QML into resources and provide an icon to create a standalone QML desktop application.

A splash screen can be created with the Qt.SplashScreen flag, and should be ApplicationModal to prevent interaction with the main window. If the splash window is also transparent, and showing a partially transparent image, then it will look like a shaped window.

``` qml
Window {
    id: splash
    color: "transparent"
    title: "Splash Window"
    modality: Qt.ApplicationModal
    flags: Qt.SplashScreen
    property int timeoutInterval: 2000
    signal timeout
```

In this example a Timer will automatically dismiss the splash screen, but in a real application you might want to connect to a signal from the application logic to hide the splash when initialization is complete.

``` qml
Timer {
    interval: timeoutInterval; running: true; repeat: false
    onTriggered: {
        visible = false
        splash.timeout()
    }
}
```

The main window in this example is the control window, with some buttons and checkboxes to control and provide feedback on the state of a secondary window. Each checkbox has a binding to the property whose state it is displaying, and also an onClicked handler to change the state. This is the typical pattern to create a two-way binding while avoiding binding loops.

``` qml
Shared.CheckBox {
    text: "Windowed"
    height: showButton.height
    width: col.cellWidth
    Binding on checked { value: testWindow.visibility === Window.Windowed }
    onClicked: testWindow.visibility = Window.Windowed
}
```

The [Screen](../QtQuick.Window.Screen.md) has several properties which are generally useful to applications which need to rotate some content when the screen orientation changes, to position windows on the screen or to convert real units to logical pixel units. ScreenInfo.qml (which is displayed inline in window.qml, or can be run by itself with qmlscene) simply displays the property values, while the splash screen uses them to center the window on the screen.

``` qml
    x: (Screen.width - splashImage.width) / 2
    y: (Screen.height - splashImage.height) / 2
```

If a Window is nested inside an [Item](../QtQuick.Item.md) or another Window, the inner window becomes "transient for" the outer one (see [Window](../QtQuick.Window.Window.md) for more explanation). But if you want to create multiple top-level windows as unrelated peers, you can create them inside a non-visual QtObject root item, as this example does.

Files:

-   window/ScreenInfo.qml
-   window/Splash.qml
-   window/window.qml
-   window/resources/icon.svg
-   window/main.cpp
-   window/window.pro
-   window/window.qrc

