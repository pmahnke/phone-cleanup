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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.5</a> ›
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   Qt Quick Demo - Photo Surface

Qt Quick Demo - Photo Surface
=============================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/7e1797fe-6264-4515-a8b7-40fb075bd675-api/apps/qml/sdk-15.04.5/qtquick-demos-photosurface-example/images/qtquick-demo-photosurface-small.png)

*Photo Surface* demonstrates how to use a [Repeater](../QtQuick.Repeater/index.html) with a [FolderListModel](../Qt.labs.folderlistmodel.FolderListModel/index.html) and a FileDialog to access images from a folder selected by a user and how to handle dragging, rotation and pinch zooming within the same item using a [PinchArea](../QtQuick.PinchArea/index.html) that contains a [MouseArea](../QtQuick.MouseArea/index.html).

All the app code is contained in one QML file, photosurface.qml. Inline JavaScript code is used to place, rotate, and scale images on the photo surface.

<span id="running-the-example"></span>
Running the Example
-------------------

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

<span id="creating-the-main-window"></span>
Creating the Main Window
------------------------

To create the main window for the Photo Surface app, we use the [Window](../QtQuick.Window.Window/index.html) QML type as the root item. It automatically sets up the window for use with [Qt Quick](../QtQuick.qtquick-index/index.html) graphical types:

``` qml
Window {
    id: root
    visible: true
    width: 1024; height: 600
    color: "black"
    property int highestZ: 0
    property real defaultSize: 200
    property var currentFrame: undefined
```

To use the [Window](../QtQuick.Window.Window/index.html) type, we must import it:

``` cpp
import QtQuick.Window 2.1
```

<span id="accessing-folder-contents"></span>
Accessing Folder Contents
-------------------------

We use a [Repeater](../QtQuick.Repeater/index.html) QML type together with the [FolderListModel](../Qt.labs.folderlistmodel.FolderListModel/index.html) to display GIF, JPG, and PNG images located in a folder:

``` qml
    Repeater {
        model: FolderListModel {
            id: folderModel
            objectName: "folderModel"
            showDirs: false
            nameFilters: ["*.png", "*.jpg", "*.gif"]
        }
```

To use the [FolderListModel](../Qt.labs.folderlistmodel.FolderListModel/index.html) type, we must import it:

``` cpp
import Qt.labs.folderlistmodel 1.0
```

We use a FileDialog to enable users to select the folder that contains the images:

``` qml
    FileDialog {
        id: fileDialog
        title: "Choose a folder with some images"
        selectFolder: true
        onAccepted: folderModel.folder = fileUrl + "/"
    }
```

To use the FileDialog type, we must import Qt Quick Dialogs:

``` cpp
import QtQuick.Dialogs 1.0
```

We use the `fileDialog.open()` function to open the file dialog when the app starts:

``` cpp
Component.onCompleted: fileDialog.open()
```

Users can also click the file dialog icon to open the file dialog. We use an [Image](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.5/QtQuick.imageelements/#image) QML type to display the icon. Inside the [Image](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.5/QtQuick.imageelements/#image) type, we use a [MouseArea](../QtQuick.MouseArea/index.html) with the `onClicked` signal handler to call the `fileDialog.open()` function:

``` qml
    Image {
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.margins: 10
        source: "resources/folder.png"
        MouseArea {
            anchors.fill: parent
            anchors.margins: -10
            onClicked: fileDialog.open()
        }
    }
```

<span id="displaying-images-on-the-photo-surface"></span>
Displaying Images on the Photo Surface
--------------------------------------

We use a [Rectangle](../QtQuick.Rectangle/index.html) as a delegate for a [Repeater](../QtQuick.Repeater/index.html) to provide a frame for each image that the [FolderListModel](../Qt.labs.folderlistmodel.FolderListModel/index.html) finds in the selected folder. We use JavaScript `Math()` methods to place the frames randomly on the photo surface and to rotate them at random angles, as well as to scale the images:

``` qml
        Rectangle {
            id: photoFrame
            width: image.width * image.scale + 20
            height: image.height * image.scale + 20
            border.color: "black"
            border.width: 2
            smooth: true
            antialiasing: true
            x: Math.random() * root.width - defaultSize
            y: Math.random() * root.height - defaultSize
            rotation: Math.random() * 13 - 6
            Image {
                id: image
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
                source: folderModel.folder + fileName
                scale: defaultSize / Math.max(sourceSize.width, sourceSize.height)
                antialiasing: true
            }
```

<span id="handling-pinch-gestures"></span>
Handling Pinch Gestures
-----------------------

We use a [PinchArea](../QtQuick.PinchArea/index.html) that contains a [MouseArea](../QtQuick.MouseArea/index.html) in the photo frames to handle dragging, rotation and pinch zooming of the frame:

``` qml
            PinchArea {
                anchors.fill: parent
                pinch.target: photoFrame
                pinch.minimumRotation: -360
                pinch.maximumRotation: 360
                pinch.minimumScale: 0.1
                pinch.maximumScale: 10
                onPinchStarted: setFrameColor();
```

We use the `pinch` group property to control how the photo frames react to pinch gestures. The `pinch.target` sets `photoFrame` as the item to manipulate. The rotation properties specify that the frames can be rotated at all angles and the scale properties specify that they can be scaled between `0.1` and `10`.

In the [MouseArea](../QtQuick.MouseArea/index.html)'s `onPressed` signal handler, we raise the selected photo frame to the top by increasing the value of its `z` property. The root item stores the z value of the top-most frame. The border color of the photo frame is controlled in the `onEntered` signal handler to highlight the selected image:

``` qml
                MouseArea {
                    id: dragArea
                    hoverEnabled: true
                    anchors.fill: parent
                    drag.target: photoFrame
                    onPressed: {
                        photoFrame.z = ++root.highestZ;
                        parent.setFrameColor();
                    }
                    onEntered: parent.setFrameColor();
```

To enable you to test the example on the desktop, we use the [MouseArea](../QtQuick.MouseArea/index.html)'s `onWheel` signal handler to simulate pinch gestures by using a mouse:

``` qml
                    onWheel: {
                        if (wheel.modifiers & Qt.ControlModifier) {
                            photoFrame.rotation += wheel.angleDelta.y / 120 * 5;
                            if (Math.abs(photoFrame.rotation) < 4)
                                photoFrame.rotation = 0;
                        } else {
                            photoFrame.rotation += wheel.angleDelta.x / 120;
                            if (Math.abs(photoFrame.rotation) < 0.6)
                                photoFrame.rotation = 0;
                            var scaleBefore = image.scale;
                            image.scale += image.scale * wheel.angleDelta.y / 120 / 10;
                            photoFrame.x -= image.width * (image.scale - scaleBefore) / 2.0;
                            photoFrame.y -= image.height * (image.scale - scaleBefore) / 2.0;
                        }
                    }
                }
```

The `onWheel` signal handler is called in response to mouse wheel gestures. Use the vertical wheel to zoom and Ctrl and the vertical wheel to rotate frames. If the mouse has a horizontal wheel, use it to rotate frames.

Files:

-   demos/photosurface/photosurface.qml
-   demos/photosurface/main.cpp
-   demos/photosurface/photosurface.pro
-   demos/photosurface/photosurface.qmlproject
-   demos/photosurface/photosurface.qrc

**See also** QML Applications.

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
