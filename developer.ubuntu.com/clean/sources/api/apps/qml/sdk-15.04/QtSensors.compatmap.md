---
Title: QtSensors.compatmap
---
        
Compatibility Map
=================

<span class="subtitle"></span>
<span id="details"></span>
|       |                                 |
|-------|---------------------------------|
| Color | Explanation                     |
|       | The feature is fully supported. |
|       | The feature is not supported.   |

|                            |                |             |           |         |                  |                   |             |              |
|----------------------------|----------------|-------------|-----------|---------|------------------|-------------------|-------------|--------------|
| **Feature**                | **Blackberry** | **Android** | **Linux** | **iOS** | **Windows 8/RT** | **Windows Phone** | **Generic** | **Sensorfw** |
| Accelerometer              |                |             |           |         |                  |                   |             |              |
| Altimeter                  |                |             |           |         |                  |                   |             |              |
| Ambient Light Sensor       |                |             |           |         |                  |                   |             |              |
| Ambient Temperature Sensor |                |             |           |         |                  |                   |             |              |
| Compass                    |                |             |           |         |                  |                   |             |              |
| Distance                   |                |             |           |         |                  |                   |             |              |
| Gyroscope                  |                |             |           |         |                  |                   |             |              |
| Holster Sensor             |                |             |           |         |                  |                   |             |              |
| IR Proximity Sensor        |                |             |           |         |                  |                   |             |              |
| Light Sensor               |                |             |           |         |                  |                   |             |              |
| Magnetometer               |                |             |           |         |                  |                   |             |              |
| Orientation Sensor         |                |             |           |         |                  |                   |             |              |
| Pressure Sensor            |                |             |           |         |                  |                   |             |              |
| Proximity Sensor           |                |             |           |         |                  |                   |             |              |
| Rotation Sensor            |                |             |           |         |                  |                   |             |              |
| Tap Sensor                 |                |             |           |         |                  |                   |             |              |
| Tilt Sensor                |                |             |           |         |                  |                   |             |              |
| Sensor Gestures            |                |             |           |         |                  |                   |             |              |

1) Support depends on the underlying platform

In addition to the table above, each sensor type might support specific features. For example, a magnetometer might support returning geo values. See QSensor::isFeatureSupported() for additional details.

Sensor Gestures are mostly platform independent, and will run if the platform has the sensors required. Whether they are supported and work well or not depends on the platform.

