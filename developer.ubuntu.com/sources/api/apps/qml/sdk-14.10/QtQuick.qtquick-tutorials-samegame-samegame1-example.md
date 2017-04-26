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
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   QML Advanced Tutorial 1 - Creating the Game Canvas and Blocks

QML Advanced Tutorial 1 - Creating the Game Canvas and Blocks
=============================================================

<span class="subtitle"></span>
<span id="details"></span> <span id="creating-the-application-screen"></span>
### Creating the application screen

The first step is to create the basic QML items in your application.

To begin with, we create our Same Game application with a main screen like this:

![](https://developer.ubuntu.com/static/devportal_uploaded/8dd7a0e7-7e5b-4c55-82d6-c9fce06fbb8d-api/apps/qml/sdk-14.10/qtquick-tutorials-samegame-samegame1-example/images/declarative-adv-tutorial1.png)

This is defined by the main application file, `samegame.qml`, which looks like this:

``` qml
import QtQuick 2.0
Rectangle {
    id: screen
    width: 490; height: 720
    SystemPalette { id: activePalette }
    Item {
        width: parent.width
        anchors { top: parent.top; bottom: toolBar.top }
        Image {
            id: background
            anchors.fill: parent
            source: "../shared/pics/background.jpg"
            fillMode: Image.PreserveAspectCrop
        }
    }
    Rectangle {
        id: toolBar
        width: parent.width; height: 30
        color: activePalette.window
        anchors.bottom: screen.bottom
        Button {
            anchors { left: parent.left; verticalCenter: parent.verticalCenter }
            text: "New Game"
            onClicked: console.log("This doesn't do anything yet...")
        }
        Text {
            id: score
            anchors { right: parent.right; verticalCenter: parent.verticalCenter }
            text: "Score: Who knows?"
        }
    }
}
```

This gives you a basic game window that includes the main canvas for the blocks, a "New Game" button and a score display.

One item you may not recognize here is the [SystemPalette](../QtQuick.SystemPalette/index.html) item. This provides access to the Qt system palette and is used to give the button a more native look-and-feel.

Notice the anchors for the `Item`, `Button` and `Text` types are set using group (dot) notation for readability.

<span id="adding-button-and-block-components"></span>
### Adding `Button` and `Block` components

The `Button` item in the code above is defined in a separate component file named `Button.qml`. To create a functional button, we use the QML types [Text](../QtQuick.Text/index.html) and [MouseArea](../QtQuick.MouseArea/index.html) inside a [Rectangle](../QtQuick.Rectangle/index.html). Here is the `Button.qml` code:

``` qml
import QtQuick 2.0
Rectangle {
    id: container
    property string text: "Button"
    signal clicked
    width: buttonLabel.width + 20; height: buttonLabel.height + 5
    border { width: 1; color: Qt.darker(activePalette.button) }
    antialiasing: true
    radius: 8
    // color the button with a gradient
    gradient: Gradient {
        GradientStop {
            position: 0.0
            color: {
                if (mouseArea.pressed)
                    return activePalette.dark
                else
                    return activePalette.light
            }
        }
        GradientStop { position: 1.0; color: activePalette.button }
    }
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: container.clicked();
    }
    Text {
        id: buttonLabel
        anchors.centerIn: container
        color: activePalette.buttonText
        text: container.text
    }
}
```

This essentially defines a rectangle that contains text and can be clicked. The [MouseArea](../QtQuick.MouseArea/index.html) has an `onClicked()` handler that is implemented to emit the `clicked()` signal of the `container` when the area is clicked.

In Same Game, the screen is filled with small blocks when the game begins. Each block is just an item that contains an image. The block code is defined in a separate `Block.qml` file:

``` qml
import QtQuick 2.0
Item {
    id: block
    Image {
        id: img
        anchors.fill: parent
        source: "../shared/pics/redStone.png"
    }
}
```

At the moment, the block doesn't do anything; it is just an image. As the tutorial progresses we will animate and give behaviors to the blocks. We have not added any code yet to create the blocks; we will do this in the next chapter.

We have set the image to be the size of its parent Item using `anchors.fill: parent`. This means that when we dynamically create and resize the block items later on in the tutorial, the image will be scaled automatically to the correct size.

Notice the relative path for the Image type's `source` property. This path is relative to the location of the file that contains the [Image](../QtQuick.Image/index.html) type. Alternatively, you could set the Image source to an absolute file path or a URL that contains an image.

You should be familiar with the code so far. We have just created some basic types to get started. Next, we will populate the game canvas with some blocks.

Files:

-   tutorials/samegame/samegame1/Block.qml
-   tutorials/samegame/samegame1/Button.qml
-   tutorials/samegame/samegame1/samegame.qml
-   tutorials/samegame/samegame1/samegame1.qmlproject

<a href="../QtQuick.qml-advtutorial/index.html" class="prevPage">QML Advanced Tutorial</a> <a href="https://developer.ubuntu.com/api/apps/qml/sdk-14.10/QtQuick.tutorials-samegame-samegame2/" class="nextPage">QML Advanced Tutorial 2 - Populating the Game Canvas</a>

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
