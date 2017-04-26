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
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   Qt Quick Examples - Image Elements

Qt Quick Examples - Image Elements
==================================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/ea8f33f2-98fa-4e21-bad6-f8f01d6b4873-api/apps/qml/sdk-15.04/qtquick-imageelements-example/images/qml-imageelements-example.png)

*Image Elements* is a collection of small QML examples relating to image types. For more information, visit Use Case - Visual Elements In QML.

<span id="running-the-example"></span>
Running the Example
-------------------

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

<span id="borderimage"></span>
BorderImage
-----------

*BorderImage* shows off the various scaling modes of the [BorderImage](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.imageelements/#borderimage) type by setting its horizontalTileMode and verticalTileMode properties.

<span id="image"></span>
Image
-----

*Image* shows off the various fill modes of the [Image](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.imageelements/#image) type.

<span id="shadows"></span>
Shadows
-------

*Shadows* shows how to create a drop shadow effect for a rectangular item using a [BorderImage](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.imageelements/#borderimage):

``` qml
    BorderImage {
        anchors.fill: rectangle
        anchors { leftMargin: -6; topMargin: -6; rightMargin: -8; bottomMargin: -8 }
        border { left: 10; top: 10; right: 10; bottom: 10 }
        source: "shadow.png"
    }
```

<span id="animatedsprite"></span>
AnimatedSprite
--------------

*AnimatedSprite* shows how to display a simple animation using an [AnimatedSprite](../QtQuick.qtquick-effects-sprites/index.html#animatedsprite) object:

``` qml
    AnimatedSprite {
        id: sprite
        width: 170
        height: 170
        anchors.centerIn: parent
        source: "content/speaker.png"
        frameCount: 60
        frameSync: true
        frameWidth: 170
        frameHeight: 170
        loops: 3
    }
```

The sprite animation will loop three times.

<span id="spritesequence"></span>
SpriteSequence
--------------

*SpriteSequence* demonstrates using a sprite sequence to draw an animated and interactive bear. The [SpriteSequence](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.imageelements/#spritesequence) object defines five different sprites. The bear is initially in a *still* state:

``` qml
        Sprite{
            name: "still"
            source: "content/BearSheet.png"
            frameCount: 1
            frameWidth: 256
            frameHeight: 256
            frameDuration: 100
            to: {"still":1, "blink":0.1, "floating":0}
        }
```

When the scene is clicked, an animation sets the sprite sequence to the *falling* states and animates the bear's y property.

``` qml
    SequentialAnimation {
        id: anim
        ScriptAction { script: image.goalSprite = "falling"; }
        NumberAnimation { target: image; property: "y"; to: 480; duration: 12000; }
        ScriptAction { script: {image.goalSprite = ""; image.jumpTo("still");} }
        PropertyAction { target: image; property: "y"; value: 0 }
    }
```

At the end of the animation the bear is set back to its initial state.

Files:

-   imageelements/animatedsprite.qml
-   imageelements/borderimage.qml
-   imageelements/image.qml
-   imageelements/imageelements.qml
-   imageelements/shadows.qml
-   imageelements/spritesequence.qml
-   imageelements/content/BorderImageSelector.qml
-   imageelements/content/ImageCell.qml
-   imageelements/content/MyBorderImage.qml
-   imageelements/content/ShadowRectangle.qml
-   imageelements/main.cpp
-   imageelements/imageelements.pro
-   imageelements/imageelements.qmlproject
-   imageelements/imageelements.qrc

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
