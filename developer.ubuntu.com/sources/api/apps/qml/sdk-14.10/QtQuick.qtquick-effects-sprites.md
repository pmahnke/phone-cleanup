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

-   Sprite Animations

Sprite Animations
=================

<span class="subtitle"></span>
<span id="details"></span> <span id="sprite-engine"></span>
Sprite Engine
-------------

The [Qt Quick](../QtQuick.qtquick-index/index.html) sprite engine is a stochastic state machine combined with the ability to chop up images containing multiple frames of an animation.

<span id="state-machine"></span>
### State Machine

A primary function of the sprite engine is its internal state machine. This is not the same as the states and transitions in Qt Quick, and is more like a conventional state machine. Sprites can have weighted transitions to other sprites, or back to themselves. When a sprite animation finishes, the sprite engine will choose the next sprite randomly, based on the weighted transitions available for the sprite that just finished.

You can affect the currently playing sprite in two ways. You can arbitrarily force it to immediately start playing any sprite, or you can tell it to gradually transition to a given sprite. If you instruct it to gradually transition, then it will reach the target sprite by going through valid state transitions using the fewest number of intervening sprites (but ignoring relative weightings). This allows you to easily insert a transitional animation between two different sprites.

![](https://developer.ubuntu.com/static/devportal_uploaded/2486f013-acb3-40b5-8eaf-14fecb917ef4-api/apps/qml/sdk-14.10/qtquick-effects-sprites/images/spriteenginegraph.png)

As an example, consider the above diagram which illustrates the sprites for a hypothetical 2D platform game character. The character starts by displaying the standing state. From this state, barring external input, he will transition to either the waiting animation, the walking animation, or play the standing animation again. Because the weights for those transitions are one, zero and three respectively, he has a one in four chance of playing the waiting animation when the standing animation finishes, and a three in four chance of playing the standing animation again. This allows for a character who has a slightly animated and variable behavior while waiting.

Because there is a zero weight transition to the walking animation, the standing animation will not normally transition there. But if you set the goal animation to be the walking animation, it would play the walking animation when it finished the standing animation. If it was previously in the waiting animation, it would finish playing that, then play the standing animation, then play the walking animation. It would then continue to play the walking animation until the goal animation is unset, at which point it would switch to the standing animation after finishing the walking animation.

If you set the goal state then to the jumping animation, it would finish the walking animation before playing the jumping animation. Because the jumping animation does not transition to other states, it will still keep playing the jumping animation until the state is forced to change. In this example, you could set it back to walking and change to goal animation to walking or to nothing (which would lead it to play the standing animation after the walking animation). Note that by forcibly setting the animation, you can start playing the animation immediately.

<span id="input-format"></span>
### Input Format

The file formats accepted by the sprite engine is the same as the file formats accepted by other QML types, such as [Image](../QtQuick.Image/index.html). In order to animate the image however, the sprite engine requires the image file to contain all of the frames of the animation. They should be arranged in a contiguous line, which may wrap from the right edge of the file to a lower row starting from the left edge of the file (and which is placed directly below the previous row).

![](https://developer.ubuntu.com/static/devportal_uploaded/46916c18-cb39-4dc3-9455-5bc9b13874d4-api/apps/qml/sdk-14.10/qtquick-effects-sprites/images/spritecutting.png)

As an example, take the above image. For now just consider the black numbers, and assume the squares are 40x40 pixels. Normally, the image is read from the top-left corner. If you specified the frame size as 40x40 pixels, and a frame count of 8, then it would read in the frames as they are numbered. The frame in the top left would be the first frame, the frame in the top right would be the fifth frame, and then it would wrap to the next row (at pixel location 0,40 in the file) to read the sixth frame. It would stop reading after the frame marked 8, and if there was any image data in the square below frame four then it would not be included in the animation.

It is possible to load animations from an arbitrary offset, but they will still follow the same pattern. Consider now the red numbers. If we specify that the animation begins at pixel location 120,0, with a frame count of 5 and the same frame size as before, then it will load the frames as they are numbered in red. The first 120x40 of the image will not be used, as it starts reading 40x40 blocks from the location of 120,0. When it reaches the end of the file at 160,0, it then starts to read the next row from 0,40.

The blue numbers show the frame numbers if you tried to load two frames of that size, starting from 40,40. Note that it is possible to load multiple sprites out of the one image file. The red, blue and black numbers can all be loaded as separate animations to the same sprite engine. The following code loads the animations as per the image. It also specifies that animations are to played at 20 frames per second.

``` cpp
Sprite {
    name: "black"
    source: "image.png"
    frameCount: 8
    frameWidth: 40
    frameHeight: 40
    frameRate: 20
}
Sprite {
    name: "red"
    source: "image.png"
    frameX: 120
    frameCount: 5
    frameWidth: 40
    frameHeight: 40
    frameRate: 20
}
Sprite {
    name: "blue"
    source: "image.png"
    frameX: 40
    frameX: 40
    frameCount: 2
    frameWidth: 40
    frameHeight: 40
    frameRate: 20
}
```

Frames within one animation must be the same size, however multiple animations within the same file do not. Sprites without a frameCount specified assume that they take the entire file, and you must specify the frame size. Sprites without a frame size assume that they are square and take the entire file without wrapping, and you must specify a frame count.

The sprite engine internally copies and cuts up images to fit in an easier to read internal format, which leads to some graphics memory limitations. Because it requires all the sprites for a single engine to be in the same texture, attempting to load many different animations can run into texture memory limits on embedded devices. In these situations, a warning will be output to the console containing the maximum texture size.

There are several software tools to help turn images into sprite sheets, here are some examples: Photoshop plugin: http://www.personal.psu.edu/zez1/blogs/my\_blog/2011/05/scripts-4-photoshop-file-sequence-to-layers-to-sprite-sheet.html Gimp plugin: http://registry.gimp.org/node/20943 Cmd-line tool: http://www.imagemagick.org/script/montage.php

<span id="qml-types-using-the-sprite-engine"></span>
### QML Types Using the Sprite Engine

Sprites for the sprite engine can be defined using the [Sprite](../QtQuick.Sprite/index.html) type. This type includes the input parameters as well as the length of the animation and weighted transitions to other animations. It is purely a data class, and does not render anything.

[SpriteSequence](../QtQuick.SpriteSequence/index.html) is a type which uses a sprite engine to draw the sprites defined in it. It is a single and self-contained sprite engine, and does not interact with other sprite engines. [Sprite](../QtQuick.Sprite/index.html) types can be shared between sprite engine using types, but this is not done automatically. So if you have defined a sprite in one [SpriteSequence](../QtQuick.SpriteSequence/index.html) you will need to redefine it (or reference the same [Sprite](../QtQuick.Sprite/index.html) type) in the sprites property of another [SpriteSequence](../QtQuick.SpriteSequence/index.html) in order to transition to that animation.

Additionally, [ImageParticle](../QtQuick.Particles.ImageParticle/index.html) can use [Sprite](../QtQuick.Sprite/index.html) types to define sprites for each particle. This is again a single sprite engine per type. This works similarly to [SpriteSequence](../QtQuick.SpriteSequence/index.html), but it also has the parametrized variability provided by the [ImageParticle](../QtQuick.Particles.ImageParticle/index.html) type.

<span id="animatedsprite"></span>
AnimatedSprite
--------------

For use-cases which do not need to transition between animations, consider the [AnimatedSprite](../QtQuick.AnimatedSprite/index.html) type. This type displays sprite animations with the same input format, but only one at a time. It also provides more fine-grained manual control, as there is no sprite engine managing the timing and transitions behind the scenes.

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
