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

-   QML Video Shader Effects Example

QML Video Shader Effects Example
================================

<span class="subtitle"></span>
<span id="details"></span> <span id="running-the-example"></span>
Running the Example
-------------------

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

<span id="overview"></span>
Overview
--------

*QML Video Shader Effects* demonstrates how a ShaderEffect can be used to apply postprocessing effects, expressed in GLSL, to QML [VideoOutput](../QtMultimedia.VideoOutput/index.html) type.

It also shows how native code can be combined with QML to implement more advanced functionality - in this case, C++ code is used to calculate the QML frame rate. This value is rendered in QML in a semi-transparent item overlaid on the video content.

The following screenshots show shader effects being applied. In each case, the effect is implemented using a fragment shader.

Here we see an edge detection algorithm being applied to a video clip ([Sintel from blender.org](http://durian.blender.org/)).

![](https://developer.ubuntu.com/static/devportal_uploaded/8cb0144b-9c1c-4603-b08b-e21d909ff039-api/apps/qml/sdk-15.04/qtmultimedia-video-qmlvideofx-example/images/qmlvideofx-video-edgedetection.jpg)

This image shows a page curl effect, applied to the same video clip.

![](https://developer.ubuntu.com/static/devportal_uploaded/599f4568-6b9d-44f5-b584-439de949a91a-api/apps/qml/sdk-15.04/qtmultimedia-video-qmlvideofx-example/images/qmlvideofx-video-pagecurl.jpg)

Here we see a 'glow' effect (edge detection plus colour quantization) being applied to the camera viewfinder.

![](https://developer.ubuntu.com/static/devportal_uploaded/8021d5a3-578f-4735-a524-e92bc27dfd05-api/apps/qml/sdk-15.04/qtmultimedia-video-qmlvideofx-example/images/qmlvideofx-camera-glow.jpg)

This image shows a 'wobble' effect applied to the viewfinder.

![](https://developer.ubuntu.com/static/devportal_uploaded/14309566-d057-461d-a547-ea9f0cbdda67-api/apps/qml/sdk-15.04/qtmultimedia-video-qmlvideofx-example/images/qmlvideofx-camera-wobble.jpg)

The application includes many more effects than the ones shown here - look for Effect\*.qml files in the list of files below to see the full range.

<span id="application-structure"></span>
Application structure
---------------------

Shader effects can be applied to video or viewfinder content using ShaderEffect, as shown in the following example, which applies a wiggly effect to the content:

``` cpp
import QtQuick 2.0
import QtMultimedia 5.0
Rectangle {
    width: 300
    height: 300
    color: "black"
    MediaPlayer {
        id: mediaPlayer
        source: "test.mp4"
        playing: true
    }
    VideoOutput {
        id: video
        anchors.fill: parent
        source: mediaPlayer
    }
    ShaderEffect {
        property variant source: ShaderEffectSource { sourceItem: video; hideSource: true }
        property real wiggleAmount: 0.005
        anchors.fill: video
        fragmentShader: "
            varying highp vec2 qt_TexCoord0;
            uniform sampler2D source;
            uniform highp float wiggleAmount;
            void main(void)
            {
                highp vec2 wiggledTexCoord = qt_TexCoord0;
                wiggledTexCoord.s += sin(4.0 * 3.141592653589 * wiggledTexCoord.t) * wiggleAmount;
                gl_FragColor = texture2D(source, wiggledTexCoord.st);
            }
        "
    }
}
```

In this application, the usage of the ShaderEffect and [VideoOutput](../QtMultimedia.VideoOutput/index.html) types is a bit more complicated, for the following reasons:

-   Each effect can be applied to either a [VideoOutput](../QtMultimedia.VideoOutput/index.html) or an Image item, so the type of the source item must be abstracted away from the effect implementation
-   For some effects (such as the edge detection and glow examples shown in the screenshots above), the transformation is applied only to pixels to the left of a dividing line - this allows the effect to be easily compared with the untransformed image on the right
-   Most effects have one or more parameters which can be modified by the user - these are controlled by sliders in the UI which are connected to uniform values passed into the GLSL code

The abstraction of source item type is achieved by the Content, which uses a Loader to create either a MediaPlayer, Camera or Image:

``` qml
import QtQuick 2.1
Rectangle {
    ...
    Loader {
        id: contentLoader
    }
    ...
    function openImage(path) {
        stop()
        contentLoader.source = "ContentImage.qml"
        contentLoader.item.source = path
    }
    function openVideo(path) {
        stop()
        contentLoader.source = "ContentVideo.qml"
        contentLoader.item.mediaSource = path
    }
    function openCamera() {
        stop()
        contentLoader.source = "ContentCamera.qml"
    }
}
```

Each effect is implemented as a QML item which is based on the Effect, which in turn is based on the ShaderEffect:

``` qml
import QtQuick 2.0
ShaderEffect {
    property variant source
    property ListModel parameters: ListModel { }
    property bool divider: true
    property real dividerValue: 0.5
    property real targetWidth: 0
    property real targetHeight: 0
    property string fragmentShaderFilename
    property string vertexShaderFilename
    QtObject {
        id: d
        property string fragmentShaderCommon: "
            #ifdef GL_ES
                precision mediump float;
            #else
            #   define lowp
            #   define mediump
            #   define highp
            #endif // GL_ES
        "
    }
    // The following is a workaround for the fact that ShaderEffect
    // doesn't provide a way for shader programs to be read from a file,
    // rather than being inline in the QML file
    onFragmentShaderFilenameChanged:
        fragmentShader = d.fragmentShaderCommon + fileReader.readFile(":shaders/" + fragmentShaderFilename)
    onVertexShaderFilenameChanged:
        vertexShader = fileReader.readFile(vertexShaderFilename)
}
```

The interface of Effect allows for derived effects to specify the number of parameters which they support (and therefore the number of sliders which should be displayed), and whether a vertical dividing line should be drawn between transformed and untransformed image regions. As an example, here is the implementation of the pixelation effect. As you can see, the pixelation effect supports one parameter (which controls the pixelation granularity), and states that the divider should be displayed.

``` qml
import QtQuick 2.0
Effect {
    parameters: ListModel {
        ListElement {
            name: "Granularity"
            value: 0.5
        }
    }
    // Transform slider values, and bind result to shader uniforms
    property real granularity: parameters.get(0).value * 20
    fragmentShaderFilename: "pixelate.fsh"
}
```

The main.qml file shows a FileOpen, which allows the user to select the input source and an EffectSelectionPanel item, which lists each of the available shader effects. As described above, a Content item is used to load the appropriate input and effect type. A Divider item draws the vertical dividing line, which can be dragged left / right by the user. Finally, a ParameterPanel item renders the sliders corresponding to each effect parameter.

Here is the effect selection menu:

![](https://developer.ubuntu.com/static/devportal_uploaded/6190f59d-8866-4f06-8cca-b5ea0ddf19d3-api/apps/qml/sdk-15.04/qtmultimedia-video-qmlvideofx-example/images/qmlvideofx-effects-menu.jpg)

<span id="calculating-and-displaying-qml-painting-rate"></span>
Calculating and displaying QML painting rate
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

![](https://developer.ubuntu.com/static/devportal_uploaded/a8b82301-bc1f-464e-bf67-7f3ade6a9ad8-api/apps/qml/sdk-15.04/qtmultimedia-video-qmlvideofx-example/images/video-qml-paint-rate.png)

All that remains is to connect the afterRendering() signal of the QQuickView object to a JavaScript function, which will eventually call frequencyItem.notify():

``` qml
#include <QtGui/QGuiApplication>
#include <QtQuick/QQuickItem>
#include <QtQuick/QQuickView>
#include "filereader.h"
#include "trace.h"
#ifdef PERFORMANCEMONITOR_SUPPORT
#include "performancemonitordeclarative.h"
#endif
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    ...
    QQuickItem *rootObject = viewer.rootObject();
    ...
    QObject::connect(&viewer, SIGNAL(afterRendering()),
                     rootObject, SLOT(qmlFramePainted()));
```

Files:

-   video/qmlvideofx/filereader.cpp
-   video/qmlvideofx/filereader.h
-   video/qmlvideofx/qmlvideofx.svg
-   video/qmlvideofx/trace.h
-   video/qmlvideofx/android/AndroidManifest.xml
-   video/qmlvideofx/qml/qmlvideofx/Button.qml
-   video/qmlvideofx/qml/qmlvideofx/Content.qml
-   video/qmlvideofx/qml/qmlvideofx/ContentImage.qml
-   video/qmlvideofx/qml/qmlvideofx/ContentVideo.qml
-   video/qmlvideofx/qml/qmlvideofx/Curtain.qml
-   video/qmlvideofx/qml/qmlvideofx/Divider.qml
-   video/qmlvideofx/qml/qmlvideofx/Effect.qml
-   video/qmlvideofx/qml/qmlvideofx/EffectBillboard.qml
-   video/qmlvideofx/qml/qmlvideofx/EffectBlackAndWhite.qml
-   video/qmlvideofx/qml/qmlvideofx/EffectEmboss.qml
-   video/qmlvideofx/qml/qmlvideofx/EffectGaussianBlur.qml
-   video/qmlvideofx/qml/qmlvideofx/EffectGlow.qml
-   video/qmlvideofx/qml/qmlvideofx/EffectIsolate.qml
-   video/qmlvideofx/qml/qmlvideofx/EffectMagnify.qml
-   video/qmlvideofx/qml/qmlvideofx/EffectPageCurl.qml
-   video/qmlvideofx/qml/qmlvideofx/EffectPassThrough.qml
-   video/qmlvideofx/qml/qmlvideofx/EffectPixelate.qml
-   video/qmlvideofx/qml/qmlvideofx/EffectPosterize.qml
-   video/qmlvideofx/qml/qmlvideofx/EffectRipple.qml
-   video/qmlvideofx/qml/qmlvideofx/EffectSelectionList.qml
-   video/qmlvideofx/qml/qmlvideofx/EffectSepia.qml
-   video/qmlvideofx/qml/qmlvideofx/EffectSharpen.qml
-   video/qmlvideofx/qml/qmlvideofx/EffectShockwave.qml
-   video/qmlvideofx/qml/qmlvideofx/EffectSobelEdgeDetection1.qml
-   video/qmlvideofx/qml/qmlvideofx/EffectTiltShift.qml
-   video/qmlvideofx/qml/qmlvideofx/EffectToon.qml
-   video/qmlvideofx/qml/qmlvideofx/EffectVignette.qml
-   video/qmlvideofx/qml/qmlvideofx/EffectWarhol.qml
-   video/qmlvideofx/qml/qmlvideofx/EffectWobble.qml
-   video/qmlvideofx/qml/qmlvideofx/FileBrowser.qml
-   video/qmlvideofx/qml/qmlvideofx/FileOpen.qml
-   video/qmlvideofx/qml/qmlvideofx/HintedMouseArea.qml
-   video/qmlvideofx/qml/qmlvideofx/Main.qml
-   video/qmlvideofx/qml/qmlvideofx/ParameterPanel.qml
-   video/qmlvideofx/qml/qmlvideofx/Slider.qml
-   video/qmlvideofx/qmlapplicationviewer/qmlapplicationviewer.cpp
-   video/qmlvideofx/qmlapplicationviewer/qmlapplicationviewer.h
-   video/qmlvideofx/main.cpp
-   video/qmlvideofx/qmlvideofx.pro
-   video/qmlvideofx/qmlvideofx.qrc

Images:

-   video/qmlvideofx/images/Dropdown\_arrows.png
-   video/qmlvideofx/images/Slider\_bar.png
-   video/qmlvideofx/images/Slider\_handle.png
-   video/qmlvideofx/images/Triangle\_Top.png
-   video/qmlvideofx/images/Triangle\_bottom.png
-   video/qmlvideofx/images/icon\_BackArrow.png
-   video/qmlvideofx/images/icon\_Folder.png
-   video/qmlvideofx/images/icon\_Menu.png
-   video/qmlvideofx/images/qt-logo.png

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
