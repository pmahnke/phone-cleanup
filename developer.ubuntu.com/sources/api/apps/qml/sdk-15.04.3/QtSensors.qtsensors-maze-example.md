<a href="https://developer.ubuntu.com/" class="logo-ubuntu"><img src="https://developer.ubuntu.com/assets/sites/ubuntu/latest/u/img/logos/logo-ubuntu-orange.svg" width="106" height="25" /> <span>developer</span></a>

-   [Jump to content](index.html#main-content)
-   [Desktop](https://developer.ubuntu.com/en/desktop/)
-   [Phone](https://developer.ubuntu.com/en/phone/)
-   [Core](https://developer.ubuntu.com/core)
-   [Community](https://developer.ubuntu.com/en/community/)
-   [Publish](https://developer.ubuntu.com/en/publish/)
-   [My Apps](https://myapps.developer.ubuntu.com/)

Search

<img src="https://developer.ubuntu.com/assets/sites/ubuntu/latest/u/img/search-white.svg" alt="Search" height="28" />

-   [APIs](../../../../index.html) ›
-   [Apps](../../../index.html) ›
-   [QML](../../index.html) ›
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.3</a> ›
-   <a href="../QtSensors/index.html" class="sub-nav-item">QtSensors</a> ›

<!-- -->

-   Qt Sensors - Maze QML Example

Qt Sensors - Maze QML Example
=============================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/ca3e3790-aecc-4b2a-a1bb-e14b445a01ed-api/apps/qml/sdk-15.04.3/qtsensors-maze-example/images/maze.png)

<span id="maze-in-qml"></span>
### Maze in QML

To write a QML application that will use the [TiltSensor](../QtSensors.TiltSensor/index.html) QML sensors type you need to do the following steps:

Import the QtSensors 5.x declarative plugin:

``` qml
import QtSensors 5.0
```

Add the Sensor QML types into your qml file.

In this example we use the [TiltSensor](../QtSensors.TiltSensor/index.html) with values based in degrees and an accuracy of 5 degree:

``` qml
    TiltSensor {
        id: tiltSensor
        active: true
    }
```

Starting the sensor can be done by setting the 'enabled' property to true:

``` qml
        onTriggered: {
            if (!tiltSensor.enabled)
                tiltSensor.active = true;
```

The mouse should move by a factor of the tilt value:

``` qml
                var xstep = 0;
                xstep = tiltSensor.reading.yRotation * 0.1 //acceleration
                var ystep = 0;
                ystep = tiltSensor.reading.xRotation * 0.1 //acceleration
```

The walk direction of the mouse takes into account some collision detection:

``` qml
                if (xstep < 1 && xstep > 0)
                    xstep = 0
                else if (xstep > -1 && xstep < 0)
                    xstep = 0
                if (ystep < 1 && ystep > 0)
                    ystep = 0;
                else if (ystep > -1 && ystep < 0)
                    ystep = 0;
                if ((xstep < 0 && mouseCtrl.x > 0
                     && Lib.canMove(mouseCtrl.x + xstep,mouseCtrl.y))) {
                    xval = mouseCtrl.x + xstep;
                } else if (xstep > 0 && mouseCtrl.x < (Lib.cellDimension * (Lib.dimension - 1))
                    && Lib.canMove(mouseCtrl.x + xstep,mouseCtrl.y)) {
                    xval = mouseCtrl.x + xstep;
                } else
                    xval = mouseCtrl.x;
                if (ystep < 0 && mouseCtrl.y > 0
                     && Lib.canMove(mouseCtrl.x, mouseCtrl.y + ystep)) {
                    yval = mouseCtrl.y + ystep;
                } else if (ystep > 0 && (mouseCtrl.y < (Lib.cellDimension * (Lib.dimension - 1)))
                         && Lib.canMove(mouseCtrl.x, mouseCtrl.y + ystep)) {
                    yval = mouseCtrl.y + ystep;
                } else
                    yval = mouseCtrl.y
                mouseCtrl.move(xval, yval);
```

The rotation of the mouse image is determined according to the angle that the mouse is moving.

``` qml
        var a = newy - mouse.y
        var b = newx - mouse.x
        var c = distance(mouse.x, mouse.y, newx, newy)
        var radians_to_degrees = 57.2957795
        if (a > 0)
            angle = -Math.acos(a / b) * radians_to_degrees
        else
            angle = -Math.asin(b / c) * radians_to_degrees
        if (b > 0)
             angle = -Math.acos(a / c) * radians_to_degrees
        else
            angle = Math.acos(a / c) * radians_to_degrees
        if (angle < 0)
            angle = 360 + angle
        img.rotation = angle
        mouse.x = newx;
        mouse.y = newy;
```

Files:

-   maze/Congratulation.qml
-   maze/LabyrinthSquare.qml
-   maze/Mouse.qml
-   maze/lib.js
-   maze/maze.qml
-   maze/android/AndroidManifest.xml
-   maze/components/ApplicationWindow.qml
-   maze/components/Button.qml
-   maze/main.cpp
-   maze/maze.pro
-   maze/maze.qrc

[Back to top](index.html#)

-   [Desktop](https://developer.ubuntu.com/en/desktop/)
    ---------------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/desktop/)
    -   [Get started](http://snapcraft.io/?utm_source=developer.ubuntu.com&utm_medium=devportal&utm_term=snaps%20snapcraft%20desktop&utm_content=menu&utm_campaign=duc_snappers)
    -   [Examples](https://github.com/ubuntu/snappy-playpen)

-   [Phone](https://developer.ubuntu.com/en/phone/)
    -----------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/phone/)
    -   [Scopes](https://developer.ubuntu.com/en/phone/scopes/)
    -   [Apps](https://developer.ubuntu.com/en/phone/apps/)
    -   [Web Apps](https://developer.ubuntu.com/en/phone/web/)
    -   [Platform](https://developer.ubuntu.com/en/phone/platform/)
    -   [Devices](https://developer.ubuntu.com/en/phone/devices/)

-   [Core](https://developer.ubuntu.com/core)
    -----------------------------------------

    -   [Overview](https://developer.ubuntu.com/core)
    -   [Get started](https://developer.ubuntu.com/core/get-started)
    -   [Tutorials](https://developer.ubuntu.com/core/tutorials)
    -   [Examples](https://developer.ubuntu.com/core/examples)
    -   [Publish and distribute](https://developer.ubuntu.com/core/publish-and-distribute)
    -   [Documentation](https://developer.ubuntu.com/core/documentation)
    -   [Troubleshooting](https://developer.ubuntu.com/core/troubleshooting)

-   [Community](https://developer.ubuntu.com/en/community/)
    -------------------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/community/)
    -   [App development training](https://developer.ubuntu.com/en/community/training/)
    -   [Core apps](https://developer.ubuntu.com/en/community/core-apps/)
    -   [Blog](https://developer.ubuntu.com/en/community/blog/)

-   [Publish](https://developer.ubuntu.com/en/publish/)
    ---------------------------------------------------

    -   [Overview](https://developer.ubuntu.com/en/publish/)
    -   [Application states](https://developer.ubuntu.com/en/publish/application-states/)
    -   [Packaging click apps](https://developer.ubuntu.com/en/publish/packaging-click-apps/)
    -   [Creating a good icon](https://developer.ubuntu.com/en/publish/creating-a-good-icon/)
    -   [Web](https://developer.ubuntu.com/en/publish/web/)
    -   [Security policy groups](https://developer.ubuntu.com/en/publish/security-policy-groups/)
    -   [Choosing a license](https://developer.ubuntu.com/en/publish/choosing-a-license/)
    -   [Other forms of submitting apps](https://developer.ubuntu.com/en/publish/other-forms-of-submitting-apps/)
    -   [Scopes](https://developer.ubuntu.com/en/publish/scopes/)

-   View in:
    --------

    -   [English](index.html "Change to language: English")
    -   [Simplified Chinese](index.html "Change to language: Simplified Chinese")

-   [Download](http://ubuntu.com/download/)
    ---------------------------------------

    -   [Overview](http://ubuntu.com/download)
    -   [Cloud](http://ubuntu.com/download/cloud)
    -   [Server](http://ubuntu.com/download/server)
    -   [Desktop](http://ubuntu.com/download/desktop)
    -   [Ubuntu Kylin](http://ubuntu.com/download/ubuntu-kylin)
    -   [Alternative downloads](http://ubuntu.com/download/alternative-downloads)

-   [Support](http://ubuntu.com/support/)
    -------------------------------------

    -   [Overview](http://ubuntu.com/support)
    -   [Security notices](http://www.ubuntu.com/usn/)

-   [About](http://ubuntu.com/about/)
    ---------------------------------

    -   [About Ubuntu](http://ubuntu.com/about/about-ubuntu)
    -   [Careers](http://www.canonical.com/careers)
    -   [Canonical and Ubuntu](http://ubuntu.com/about/canonical-and-ubuntu)
    -   [Contact us](http://ubuntu.com/about/contact-us)
    -   [Canonical news feed](http://insights.ubuntu.com/feed/)

© 2015 Canonical Ltd. Ubuntu and Canonical are registered trademarks of Canonical Ltd.

-   [Legal information](http://www.ubuntu.com/legal)
-   [Report a bug on this site](https://bugs.launchpad.net/developer-ubuntu-com/)

<span class="accessibility-aid">[Go to the top of the page](index.html#)</span>
