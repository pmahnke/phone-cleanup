---
Title: QtQuick.qtquick-imageelements-example
---
        
Qt Quick Examples - Image Elements
==================================

<span class="subtitle"></span>
<span id="details"></span>
This is a collection of QML examples relating to image types.

![](https://developer.ubuntu.com/static/devportal_uploaded/68068a32-1b63-48f1-b7aa-5c9d738334d4-api/apps/qml/sdk-14.10/qtquick-imageelements-example/images/qml-imageelements-example.png)

This is a collection of small QML examples relating to image types.

'[BorderImage](../QtQuick.BorderImage.md)' shows off the various scaling modes of the [BorderImage](../QtQuick.BorderImage.md) item by setting its horizontalTileMode and verticalTileMode properties.

'Image' shows off the various fill modes of the Image item.

'Shadows' shows how to create a drop shadow effect for a rectangular item using a [BorderImage](../QtQuick.BorderImage.md):

``` qml
    BorderImage {
        anchors.fill: rectangle
        anchors { leftMargin: -6; topMargin: -6; rightMargin: -8; bottomMargin: -8 }
        border { left: 10; top: 10; right: 10; bottom: 10 }
        source: "shadow.png"
    }
```

'[AnimatedSprite](../QtQuick.AnimatedSprite.md)' shows how to display a simple animation using an [AnimatedSprite](../QtQuick.AnimatedSprite.md) object:

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

The sprite animation will loop 3 times.

'[SpriteSequence](../QtQuick.SpriteSequence.md)' demonstrates using a sprite sequence to draw an animated and interactive bear. The [SpriteSequence](../QtQuick.SpriteSequence.md) defines 5 different sprites. The bear is initially in a 'still' state:

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

When the scene is clicked, an animation sets the sprite sequence to the 'falling' states and animates the bear's y property.

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

