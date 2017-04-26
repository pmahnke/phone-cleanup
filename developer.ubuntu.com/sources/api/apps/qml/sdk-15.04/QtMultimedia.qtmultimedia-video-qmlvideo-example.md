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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04</a> ›
-   <a href="../QtMultimedia/index.html" class="sub-nav-item">QtMultimedia</a> ›

<!-- -->

-   QML Video Example

QML Video Example
=================

<span class="subtitle"></span>
<span id="details"></span>
*QML Video* demonstrates the various transformations (move; resize; rotate; change aspect ratio) that can be applied to QML [VideoOutput](../QtMultimedia.VideoOutput/index.html) and [Camera](../QtMultimedia.qml-multimedia/index.html#camera) types.

It also shows how native code can be combined with QML to implement more advanced functionality - in this case, C++ code is used to calculate the QML frame rate. This value is rendered in QML in a semi-transparent item overlaid on the video content.

The following image shows the application executing the video-overlay scene, which creates a dummy overlay item (just a semi-transparent Rectangle), which moves across the [VideoOutput](../QtMultimedia.VideoOutput/index.html) item.

![](https://developer.ubuntu.com/static/devportal_uploaded/c8547555-bc26-4394-9fa4-7d71fb1f25c2-api/apps/qml/sdk-15.04/qtmultimedia-video-qmlvideo-example/images/qmlvideo-overlay.jpg)

<span id="running-the-example"></span>
Running the Example
-------------------

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

<span id="application-structure"></span>
Application Structure
---------------------

The video/qmlvideo/qml/qmlvideo/main.qml file creates a UI which includes the following items:

-   Two Button instances, each of which displays a filename, and can be used to launch a FileBrowser
-   An exit Button
-   A SceneSelectionPanel, which is a flickable list displaying the available scenes
-   At the lower left, an item which displays the QML repainting rate - the upper number is the instantaneous frame rate and the lower number is the average over the past second.

![](https://developer.ubuntu.com/static/devportal_uploaded/03411f02-5291-4d2c-94da-99ef601f9d1b-api/apps/qml/sdk-15.04/qtmultimedia-video-qmlvideo-example/images/qmlvideo-menu.jpg)

Each scene in the flickable list is implemented in its own QML file - for example the video-basic scene (which just displays a static VideoOutput in the center of the screen) is implemented in the VideoBasic.qml file. As you can see from the code, this makes use of a type of inheritance: a VideoBasic item ...

``` qml
import QtQuick 2.0
SceneBasic {
    contentType: "video"
}
```

... is-a SceneBasic ...

``` qml
import QtQuick 2.0
Scene {
    id: root
    property string contentType
    ...
    Content {
        id: content
    ...
    }
    Text {
        anchors {
            horizontalCenter: parent.horizontalCenter
            bottom: parent.bottom
            margins: 20
        }
        text: content.started ? "Tap the screen to stop content"
                              : "Tap the screen to start content"
        color: "#e0e0e0"
        z: 2.0
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            if (content.started)
                content.stop()
            else
                content.start()
        }
    }
    Component.onCompleted: root.content = content
}
```

... which is-a Scene:

``` qml
import QtQuick 2.0
Rectangle {
    id: root
    ...
    property QtObject content
    ...
    Button {
        id: closeButton
        anchors {
            top: parent.top
            right: parent.right
            margins: root.margins
        }
        width: Math.max(parent.width, parent.height) / 12
        height: Math.min(parent.width, parent.height) / 12
        z: 2.0
        bgColor: "#212121"
        bgColorSelected: "#757575"
        textColorSelected: "white"
        text: "Back"
        onClicked: root.close()
    }
}
```

SceneBasic describes the structure and behaviour of the scene, but is agnostic of the type of content which will be displayed - this is abstracted by Content.

This pattern allows us to define a particular use case (in this case, simply display a static piece of content), and then instantiate that use case for both video content (VideoBasic) and camera content (CameraBasic). This approach is used to implement many of the other scenes - for example, "repeatedly slide the content from left to right and back again" is implemented by SceneMove, on which VideoMove and CameraMove are based.

Depending on the value of the contentType property in the top-level scene instance, the embedded Content item creates either a MediaPlayer or a Camera item.

<span id="calculating-and-displaying-qml-painting-rate"></span>
Calculating and Displaying QML Painting Rate
--------------------------------------------

The QML painting rate is calculated by the FrequencyMonitor class, which turns a stream of events (received via the notify() slot), into an instantaneous and an averaged frequency:

``` qml
class FrequencyMonitor : public QObject
{
    Q_OBJECT
    Q_PROPERTY(qreal instantaneousFrequency READ instantaneousFrequency NOTIFY instantaneousFrequencyChanged)
    Q_PROPERTY(qreal averageFrequency READ averageFrequency NOTIFY averageFrequencyChanged)
public:
    ...
    static void qmlRegisterType();
public slots:
    Q_INVOKABLE void notify();
};
```

The FrequencyMonitor class is exposed to QML like this

``` qml
void FrequencyMonitor::qmlRegisterType()
{
    ::qmlRegisterType<FrequencyMonitor>("FrequencyMonitor", 1, 0, "FrequencyMonitor");
}
```

and its data is displayed by defining a QML item called FrequencyItem, like this:

``` qml
import FrequencyMonitor 1.0
Rectangle {
    id: root
    ...
    function notify() {
        monitor.notify()
    }
    FrequencyMonitor {
        id: monitor
        onAverageFrequencyChanged: {
            averageFrequencyText.text = monitor.averageFrequency.toFixed(2)
        }
    }
    Text {
        id: labelText
        anchors {
            left: parent.left
            top: parent.top
            margins: 10
        }
        color: root.textColor
        font.pixelSize: 0.6 * root.textSize
        text: root.label
        width: root.width - 2*anchors.margins
        elide: Text.ElideRight
    }
    Text {
        id: averageFrequencyText
        anchors {
            right: parent.right
            bottom: parent.bottom
            margins: 10
        }
        color: root.textColor
        font.pixelSize: root.textSize
    }
}
```

The result looks like this:

![](https://developer.ubuntu.com/static/devportal_uploaded/940fb239-b6eb-45c7-afb1-95cf0b332dbd-api/apps/qml/sdk-15.04/qtmultimedia-video-qmlvideo-example/images/video-qml-paint-rate.png)

All that remains is to connect the afterRendering() signal of the QQuickView object to a JavaScript function, which will eventually call frequencyItem.notify():

``` qml
#include <QtGui/QGuiApplication>
#include <QtQuick/QQuickItem>
#include <QtQuick/QQuickView>
#include "trace.h"
#ifdef PERFORMANCEMONITOR_SUPPORT
#include "performancemonitordeclarative.h"
#endif
static const QString DefaultFileName1 = "";
    ...
    QQuickItem *rootObject = viewer.rootObject();
    ...
    QObject::connect(&viewer, SIGNAL(afterRendering()),
                     rootObject, SLOT(qmlFramePainted()));
```

Files:

-   video/qmlvideo/qmlvideo.svg
-   video/qmlvideo/trace.h
-   video/qmlvideo/qml/qmlvideo/Button.qml
-   video/qmlvideo/qml/qmlvideo/CameraBasic.qml
-   video/qmlvideo/qml/qmlvideo/CameraDrag.qml
-   video/qmlvideo/qml/qmlvideo/CameraDummy.qml
-   video/qmlvideo/qml/qmlvideo/CameraFullScreen.qml
-   video/qmlvideo/qml/qmlvideo/CameraFullScreenInverted.qml
-   video/qmlvideo/qml/qmlvideo/CameraItem.qml
-   video/qmlvideo/qml/qmlvideo/CameraMove.qml
-   video/qmlvideo/qml/qmlvideo/CameraOverlay.qml
-   video/qmlvideo/qml/qmlvideo/CameraResize.qml
-   video/qmlvideo/qml/qmlvideo/CameraRotate.qml
-   video/qmlvideo/qml/qmlvideo/CameraSpin.qml
-   video/qmlvideo/qml/qmlvideo/Content.qml
-   video/qmlvideo/qml/qmlvideo/ErrorDialog.qml
-   video/qmlvideo/qml/qmlvideo/FileBrowser.qml
-   video/qmlvideo/qml/qmlvideo/Scene.qml
-   video/qmlvideo/qml/qmlvideo/SceneBasic.qml
-   video/qmlvideo/qml/qmlvideo/SceneDrag.qml
-   video/qmlvideo/qml/qmlvideo/SceneFullScreen.qml
-   video/qmlvideo/qml/qmlvideo/SceneFullScreenInverted.qml
-   video/qmlvideo/qml/qmlvideo/SceneMove.qml
-   video/qmlvideo/qml/qmlvideo/SceneMulti.qml
-   video/qmlvideo/qml/qmlvideo/SceneOverlay.qml
-   video/qmlvideo/qml/qmlvideo/SceneResize.qml
-   video/qmlvideo/qml/qmlvideo/SceneRotate.qml
-   video/qmlvideo/qml/qmlvideo/SceneSelectionPanel.qml
-   video/qmlvideo/qml/qmlvideo/SceneSpin.qml
-   video/qmlvideo/qml/qmlvideo/SeekControl.qml
-   video/qmlvideo/qml/qmlvideo/VideoBasic.qml
-   video/qmlvideo/qml/qmlvideo/VideoDrag.qml
-   video/qmlvideo/qml/qmlvideo/VideoDummy.qml
-   video/qmlvideo/qml/qmlvideo/VideoFillMode.qml
-   video/qmlvideo/qml/qmlvideo/VideoFullScreen.qml
-   video/qmlvideo/qml/qmlvideo/VideoFullScreenInverted.qml
-   video/qmlvideo/qml/qmlvideo/VideoItem.qml
-   video/qmlvideo/qml/qmlvideo/VideoMetadata.qml
-   video/qmlvideo/qml/qmlvideo/VideoMove.qml
-   video/qmlvideo/qml/qmlvideo/VideoOverlay.qml
-   video/qmlvideo/qml/qmlvideo/VideoPlaybackRate.qml
-   video/qmlvideo/qml/qmlvideo/VideoResize.qml
-   video/qmlvideo/qml/qmlvideo/VideoRotate.qml
-   video/qmlvideo/qml/qmlvideo/VideoSeek.qml
-   video/qmlvideo/qml/qmlvideo/VideoSpin.qml
-   video/qmlvideo/qml/qmlvideo/main.qml
-   video/qmlvideo/main.cpp
-   video/qmlvideo/qmlvideo.pro
-   video/qmlvideo/qmlvideo.qrc

Images:

-   video/qmlvideo/images/folder.png
-   video/qmlvideo/images/leaves.jpg
-   video/qmlvideo/images/up.png

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
