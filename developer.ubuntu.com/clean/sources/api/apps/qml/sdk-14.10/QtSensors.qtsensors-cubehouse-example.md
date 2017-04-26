---
Title: QtSensors.qtsensors-cubehouse-example
---
        
Qt Sensors - Cube House QML Accelerometer example
=================================================

<span class="subtitle"></span>
<span id="details"></span>
The Cube House example demonstrates the use of the accelerometer to drive a camera to create a pseudo-3D effect.

![](https://developer.ubuntu.com/static/devportal_uploaded/b32d214a-6a79-4db9-ae5f-3350956e6a07-api/apps/qml/sdk-14.10/qtsensors-cubehouse-example/images/cubehouse.png)

<span id="overview"></span>
Overview
--------

To write a QML application that will use the QML Accelerometer type from the QtSensors import you need to to the following steps:

Import the QtSensors declarative plugin:

``` qml
import QtSensors 5.0
```

Add the Accelerometer QML types into your qml file.

``` qml
    Accelerometer {
        id: accel
        active: true
        dataRate: 20
```

In additional two properties are added to save the calculated pitch and roll values:

``` qml
        property double pitch: 0.0
        property double roll: 0.0
```

Reading out the Accelerometer data can be done by implementing the 'onReadingChanged' slot and accessing the 'reading' property from the Accelerometer type:

``` qml
        onReadingChanged: {
            pitch = -(Math.atan2(reading.x, Math.sqrt(reading.y * reading.y + reading.z * reading.z)) * 180) / Math.PI;
            roll = (Math.atan2(reading.y, Math.sqrt(reading.x * reading.x + reading.z * reading.z)) * 180) / Math.PI;
        }
    }
```

By using a timer the view can be rotated using the pitch and roll properties from the Accelerometer type:

``` qml
    Timer {
        interval: 50; running: true; repeat: true
        onTriggered: {
            view.rotateY(accel.pitch);
            view.rotateX(accel.roll);
        }
    }
```

Files:

-   cubehouse/Cube.qml
-   cubehouse/Room.qml
-   cubehouse/Table.qml
-   cubehouse/cubehouse.qml
-   cubehouse/main.cpp
-   cubehouse/cubehouse.pro
-   cubehouse/cubehouse.qrc

