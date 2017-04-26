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
-   <a href="../index.html" class="sub-nav-item">SDK 14.10</a> ›
-   <a href="../QtMultimedia/index.html" class="sub-nav-item">QtMultimedia</a> ›

<!-- -->

-   QML Camera Example

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

To run the example from [Qt Creator](../../../../scopes/cpp/sdk-14.10/U1db.Index/index.html), open the **Welcome** mode and select the example from **Examples**. For more information, visit [Building and Running an Example](http://qt-project.org/doc/qtcreator/creator-build-example-application.html).

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
