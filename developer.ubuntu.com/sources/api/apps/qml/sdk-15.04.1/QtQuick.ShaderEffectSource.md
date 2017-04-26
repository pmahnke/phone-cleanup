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
-   [SDK 15.04.1](../index.html) ›
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   ShaderEffectSource

ShaderEffectSource
==================

<span class="subtitle"></span>
Renders a Qt Quick item into a texture and displays it More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import QtQuick 2.4</td>
</tr>
<tr class="even">
<td>Since:</td>
<td>Qt 5.0</td>
</tr>
<tr class="odd">
<td>Inherits:</td>
<td><p><a href="../QtQuick.Item/index.html">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[format](index.html#format-prop)**** : enumeration
-   ****[hideSource](index.html#hideSource-prop)**** : bool
-   ****[live](index.html#live-prop)**** : bool
-   ****[mipmap](index.html#mipmap-prop)**** : bool
-   ****[recursive](index.html#recursive-prop)**** : bool
-   ****[sourceItem](index.html#sourceItem-prop)**** : Item
-   ****[sourceRect](index.html#sourceRect-prop)**** : rect
-   ****[textureSize](index.html#textureSize-prop)**** : size
-   ****[wrapMode](index.html#wrapMode-prop)**** : enumeration

<span id="methods"></span>
Methods
-------

-   ****[scheduleUpdate](index.html#scheduleUpdate-method)****()

<span id="details"></span>
Detailed Description
--------------------

The [ShaderEffectSource](index.html) type renders [sourceItem](index.html#sourceItem-prop) into a texture and displays it in the scene. [sourceItem](index.html#sourceItem-prop) is drawn into the texture as though it was a fully opaque root item. Thus [sourceItem](index.html#sourceItem-prop) itself can be invisible, but still appear in the texture.

[ShaderEffectSource](index.html) can be used as:

-   a texture source in a [ShaderEffect](../QtQuick.ShaderEffect/index.html). This allows you to apply custom shader effects to any [Qt Quick](../QtQuick.qtquick-index/index.html) item.
-   a cache for a complex item. The complex item can be rendered once into the texture, which can then be animated freely without the need to render the complex item again every frame.
-   an opacity layer. [ShaderEffectSource](index.html) allows you to apply an opacity to items as a group rather than each item individually.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/cd1eb9bb-789b-4acf-9a75-801c92b3e40e-api/apps/qml/sdk-15.04.1/QtQuick.ShaderEffectSource/images/declarative-shadereffectsource.png" /></p></td>
<td><pre class="qml"><code>import QtQuick 2.0
Rectangle {
    width: 200
    height: 100
    gradient: Gradient {
        GradientStop { position: 0; color: &quot;white&quot; }
        GradientStop { position: 1; color: &quot;black&quot; }
    }
    Row {
        opacity: 0.5
        Item {
            id: foo
            width: 100; height: 100
            Rectangle { x: 5; y: 5; width: 60; height: 60; color: &quot;red&quot; }
            Rectangle { x: 20; y: 20; width: 60; height: 60; color: &quot;orange&quot; }
            Rectangle { x: 35; y: 35; width: 60; height: 60; color: &quot;yellow&quot; }
        }
        ShaderEffectSource {
            width: 100; height: 100
            sourceItem: foo
        }
    }
}</code></pre></td>
</tr>
</tbody>
</table>

The [ShaderEffectSource](index.html) type does not redirect any mouse or keyboard input to [sourceItem](index.html#sourceItem-prop). If you hide the [sourceItem](index.html#sourceItem-prop) by setting [visible](../QtQuick.Item/index.html#visible-prop) to false or [opacity](../QtQuick.Item/index.html#opacity-prop) to zero, it will no longer react to input. In cases where the [ShaderEffectSource](index.html) is meant to replace the [sourceItem](index.html#sourceItem-prop), you typically want to hide the [sourceItem](index.html#sourceItem-prop) while still handling input. For this, you can use the [hideSource](index.html#hideSource-prop) property.

**Note:** If [sourceItem](index.html#sourceItem-prop) is a [Rectangle](../QtQuick.Rectangle/index.html) with border, by default half the border width falls outside the texture. To get the whole border, you can extend the [sourceRect](index.html#sourceRect-prop).

**Note:** The [ShaderEffectSource](index.html) relies on FBO multisampling support to antialias edges. If the underlying hardware does not support this, which is the case for most embedded graphics chips, edges rendered inside a [ShaderEffectSource](index.html) will not be antialiased. One way to remedy this is to double the size of the effect source and render it with `smooth: true` (this is the default value of smooth). This will be equivalent to 4x multisampling, at the cost of lower performance and higher memory use.

**Warning:** In most cases, using a [ShaderEffectSource](index.html) will decrease performance, and in all cases, it will increase video memory usage. Rendering through a [ShaderEffectSource](index.html) might also lead to lower quality since some OpenGL implementations support multisampled backbuffer, but not multisampled framebuffer objects.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="format-prop"></span><span class="name">format</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property defines the internal OpenGL format of the texture. Modifying this property makes most sense when the item is used as a source texture of a [ShaderEffect](../QtQuick.ShaderEffect/index.html). Depending on the OpenGL implementation, this property might allow you to save some texture memory.

-   [ShaderEffectSource](index.html).Alpha - GL\_ALPHA
-   [ShaderEffectSource](index.html).RGB - GL\_RGB
-   [ShaderEffectSource](index.html).RGBA - GL\_RGBA

**Note:** Some OpenGL implementations do not support the GL\_ALPHA format.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hideSource-prop"></span><span class="name">hideSource</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If this property is true, the [sourceItem](index.html#sourceItem-prop) is hidden, though it will still be rendered into the texture. As opposed to hiding the [sourceItem](index.html#sourceItem-prop) by setting [visible](../QtQuick.Item/index.html#visible-prop) to false, setting this property to true will not prevent mouse or keyboard input from reaching [sourceItem](index.html#sourceItem-prop). The property is useful when the [ShaderEffectSource](index.html) is anchored on top of, and meant to replace the [sourceItem](index.html#sourceItem-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="live-prop"></span><span class="name">live</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If this property is true, the texture is updated whenever the [sourceItem](index.html#sourceItem-prop) updates. Otherwise, it will be a frozen image, even if [sourceItem](index.html#sourceItem-prop) is assigned a new item. The property is true by default.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mipmap-prop"></span><span class="name">mipmap</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If this property is true, mipmaps are generated for the texture.

**Note:** Some OpenGL ES 2 implementations do not support mipmapping of non-power-of-two textures.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="recursive-prop"></span><span class="name">recursive</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Set this property to true if the [ShaderEffectSource](index.html) has a dependency on itself. ShaderEffectSources form a dependency chain, where one [ShaderEffectSource](index.html) can be part of the [sourceItem](index.html#sourceItem-prop) of another. If there is a loop in this chain, a [ShaderEffectSource](index.html) could end up trying to render into the same texture it is using as source, which is not allowed by OpenGL. When this property is set to true, an extra texture is allocated so that [ShaderEffectSource](index.html) can keep a copy of the texture from the previous frame. It can then render into one texture and use the texture from the previous frame as source.

Setting both this property and [live](index.html#live-prop) to true will cause the scene graph to render continuously. Since the [ShaderEffectSource](index.html) depends on itself, updating it means that it immediately becomes dirty again.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sourceItem-prop"></span><span class="name">sourceItem</span> : <span class="type"><a href="../QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the item to be rendered into the texture. Setting this to null while [live](index.html#live-prop) is true, will release the texture resources.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sourceRect-prop"></span><span class="name">sourceRect</span> : <span class="type">rect</span></p></td>
</tr>
</tbody>
</table>

This property defines which rectangular area of the [sourceItem](index.html#sourceItem-prop) to render into the texture. The source rectangle can be larger than [sourceItem](index.html#sourceItem-prop) itself. If the rectangle is null, which is the default, the whole [sourceItem](index.html#sourceItem-prop) is rendered to texture.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="textureSize-prop"></span><span class="name">textureSize</span> : <span class="type">size</span></p></td>
</tr>
</tbody>
</table>

This property holds the requested size of the texture. If it is empty, which is the default, the size of the source rectangle is used.

**Note:** Some platforms have a limit on how small framebuffer objects can be, which means the actual texture size might be larger than the requested size.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="wrapMode-prop"></span><span class="name">wrapMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property defines the OpenGL wrap modes associated with the texture. Modifying this property makes most sense when the item is used as a source texture of a [ShaderEffect](../QtQuick.ShaderEffect/index.html).

-   [ShaderEffectSource](index.html).ClampToEdge - GL\_CLAMP\_TO\_EDGE both horizontally and vertically
-   [ShaderEffectSource](index.html).RepeatHorizontally - GL\_REPEAT horizontally, GL\_CLAMP\_TO\_EDGE vertically
-   [ShaderEffectSource](index.html).RepeatVertically - GL\_CLAMP\_TO\_EDGE horizontally, GL\_REPEAT vertically
-   [ShaderEffectSource](index.html).Repeat - GL\_REPEAT both horizontally and vertically

**Note:** Some OpenGL ES 2 implementations do not support the GL\_REPEAT wrap mode with non-power-of-two textures.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="scheduleUpdate-method"></span><span class="name">scheduleUpdate</span>()</p></td>
</tr>
</tbody>
</table>

Schedules a re-rendering of the texture for the next frame. Use this to update the texture when [live](index.html#live-prop) is false.

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
