---
Title: QtMultimedia.qtmultimedia-declarative-camera-example
---
        
QML Camera Example
==================

<span class="subtitle"></span>
<span id="details"></span>
The Camera Example shows how to use the API to capture a still image or video.

![](https://developer.ubuntu.com/static/devportal_uploaded/84155c98-a0ea-4bd9-b6a9-9fb87046e00a-api/apps/qml/sdk-14.10/qtmultimedia-declarative-camera-example/images/qml-camera.png)

This example demonstrates how to use the Qt Multimedia QML API to access camera functions. It shows how to change settings and to capture images.

<span id="running-the-example"></span>
Running the Example
-------------------

To run the example from [Qt Creator](../../../../scopes/cpp/sdk-14.10/U1db.Index.md), open the **Welcome** mode and select the example from **Examples**. For more information, visit [Building and Running an Example](http://qt-project.org/doc/qtcreator/creator-build-example-application.html).

<span id="application-structure"></span>
Application Structure
---------------------

Most of the QML code supports the user interface for this application with the camera types being mostly found in *declarative-camera.qml* and *CaptureControls.qml*.

CaptureControls, which is implemented in *CaptureControls.qml*, generates a column on the right hand side of the screen which includes control buttons for focus (not initially visible), capture, flash modes, white balance, exposure compensation, and if a preview is available, a preview button. The last button exits from the application.

Files:

-   declarative-camera/CameraButton.qml
-   declarative-camera/CameraPropertyButton.qml
-   declarative-camera/CameraPropertyPopup.qml
-   declarative-camera/FocusButton.qml
-   declarative-camera/PhotoCaptureControls.qml
-   declarative-camera/PhotoPreview.qml
-   declarative-camera/VideoCaptureControls.qml
-   declarative-camera/VideoPreview.qml
-   declarative-camera/ZoomControl.qml
-   declarative-camera/declarative-camera.qml
-   declarative-camera/qmlcamera.cpp
-   declarative-camera/declarative-camera.pro
-   declarative-camera/declarative-camera.qmlproject
-   declarative-camera/declarative-camera.qrc

Images:

-   declarative-camera/images/camera\_auto\_mode.png
-   declarative-camera/images/camera\_camera\_setting.png
-   declarative-camera/images/camera\_flash\_auto.png
-   declarative-camera/images/camera\_flash\_fill.png
-   declarative-camera/images/camera\_flash\_off.png
-   declarative-camera/images/camera\_flash\_redeye.png
-   declarative-camera/images/camera\_white\_balance\_cloudy.png
-   declarative-camera/images/camera\_white\_balance\_flourescent.png
-   declarative-camera/images/camera\_white\_balance\_incandescent.png
-   declarative-camera/images/camera\_white\_balance\_sunny.png
-   declarative-camera/images/toolbutton.png

