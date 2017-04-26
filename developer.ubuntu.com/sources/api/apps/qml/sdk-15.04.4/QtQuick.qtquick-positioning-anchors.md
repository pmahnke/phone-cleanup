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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.4</a> ›
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   Positioning with Anchors

Positioning with Anchors
========================

<span class="subtitle"></span>
<span id="details"></span> <span id="anchor-layout"></span>
In addition to the more traditional [Grid](../QtQuick.qtquick-positioning-layouts/index.html#grid), [Row](../QtQuick.qtquick-positioning-layouts/index.html#row), and [Column](../QtQuick.qtquick-positioning-layouts/index.html#column), Qt Quick also provides a way to layout items using the concept of *anchors*. Each item can be thought of as having a set of 7 invisible "anchor lines": [left](../QtQuick.Item/index.html#anchors.left-prop), [horizontalCenter](../QtQuick.Item/index.html#anchors.horizontalCenter-prop), [right](../QtQuick.Item/index.html#anchors.right-prop), [top](../QtQuick.Item/index.html#anchors.top-prop), [verticalCenter](../QtQuick.Item/index.html#anchors.verticalCenter-prop), [baseline](../QtQuick.Item/index.html#anchors.baseline-prop), and [bottom](../QtQuick.Item/index.html#anchors.bottom-prop).

![](https://developer.ubuntu.com/static/devportal_uploaded/f1fac9e3-10c1-4663-83ef-680c1fd5d99c-api/apps/qml/sdk-15.04.4/qtquick-positioning-anchors/images/edges_qml.png)

The baseline (not pictured above) corresponds to the imaginary line on which text would sit. For items with no text it is the same as *top*.

The Qt Quick anchoring system allows you to define relationships between the anchor lines of different items. For example, you can write:

``` cpp
Rectangle { id: rect1; ... }
Rectangle { id: rect2; anchors.left: rect1.right; ... }
```

In this case, the left edge of *rect2* is bound to the right edge of *rect1*, producing the following:

![](https://developer.ubuntu.com/static/devportal_uploaded/68dfb1bf-5352-4196-b15b-2892042acc08-api/apps/qml/sdk-15.04.4/qtquick-positioning-anchors/images/edge1.png)

You can specify multiple anchors. For example:

``` cpp
Rectangle { id: rect1; ... }
Rectangle { id: rect2; anchors.left: rect1.right; anchors.top: rect1.bottom; ... }
```

![](https://developer.ubuntu.com/static/devportal_uploaded/93679206-4a1b-4cfb-b382-1bb940ea18b6-api/apps/qml/sdk-15.04.4/qtquick-positioning-anchors/images/edge3.png)

By specifying multiple horizontal or vertical anchors you can control the size of an item. Below, *rect2* is anchored to the right of *rect1* and the left of *rect3*. If either of the blue rectangles are moved, *rect2* will stretch and shrink as necessary:

``` cpp
Rectangle { id: rect1; x: 0; ... }
Rectangle { id: rect2; anchors.left: rect1.right; anchors.right: rect3.left; ... }
Rectangle { id: rect3; x: 150; ... }
```

![](https://developer.ubuntu.com/static/devportal_uploaded/bf0470ad-618b-44c9-b4c7-c7ddd441e3eb-api/apps/qml/sdk-15.04.4/qtquick-positioning-anchors/images/edge4.png)

There are also some convenience anchors. anchors.fill is a convenience that is the same as setting the left,right,top and bottom anchors to the left,right,top and bottom of the target item. anchors.centerIn is another convenience anchor, and is the same as setting the verticalCenter and horizontalCenter anchors to the verticalCenter and horizontalCenter of the target item.

<span id="anchor-margins-and-offsets"></span>
Anchor Margins and Offsets
--------------------------

The anchoring system also allows *margins* and *offsets* to be specified for an item's anchors. Margins specify the amount of empty space to leave to the outside of an item's anchor, while offsets allow positioning to be manipulated using the center anchor lines. An item can specify its anchor margins individually through [leftMargin](../QtQuick.Item/index.html#anchors.leftMargin-prop), [rightMargin](../QtQuick.Item/index.html#anchors.rightMargin-prop), [topMargin](../QtQuick.Item/index.html#anchors.topMargin-prop) and [bottomMargin](../QtQuick.Item/index.html#anchors.bottomMargin-prop), or use [anchors.margins](../QtQuick.Item/index.html#anchors.margins-prop) to specify the same margin value for all four edges. Anchor offsets are specified using [horizontalCenterOffset](../QtQuick.Item/index.html#anchors.horizontalCenterOffset-prop), [verticalCenterOffset](../QtQuick.Item/index.html#anchors.verticalCenterOffset-prop) and [baselineOffset](../QtQuick.Item/index.html#anchors.baselineOffset-prop).

![](https://developer.ubuntu.com/static/devportal_uploaded/5504248a-6e6e-4b46-867c-9a00f51b3ae7-api/apps/qml/sdk-15.04.4/qtquick-positioning-anchors/images/margins_qml.png)

The following example specifies a left margin:

``` cpp
Rectangle { id: rect1; ... }
Rectangle { id: rect2; anchors.left: rect1.right; anchors.leftMargin: 5; ... }
```

In this case, a margin of 5 pixels is reserved to the left of *rect2*, producing the following:

![](https://developer.ubuntu.com/static/devportal_uploaded/8e08c2cb-e17c-4238-bde1-1d0e861fba33-api/apps/qml/sdk-15.04.4/qtquick-positioning-anchors/images/edge2.png)

**Note:** Anchor margins only apply to anchors; they are *not* a generic means of applying margins to an [Item](../QtQuick.Item/index.html). If an anchor margin is specified for an edge but the item is not anchored to any item on that edge, the margin is not applied.

<span id="changing-anchors"></span>
Changing Anchors
----------------

Qt Quick provides the [AnchorChanges](../QtQuick.AnchorChanges/index.html) type for specifying the anchors in a state.

``` qml
State {
    name: "anchorRight"
    AnchorChanges {
        target: rect2
        anchors.right: parent.right
        anchors.left: undefined  //remove the left anchor
    }
}
```

[AnchorChanges](../QtQuick.AnchorChanges/index.html) can be animated using the [AnchorAnimation](../QtQuick.AnchorAnimation/index.html) type.

``` qml
Transition {
    AnchorAnimation {}  //animates any AnchorChanges in the corresponding state change
}
```

Anchors can also be changed imperatively within JavaScript. However, these changes should be carefully ordered, or they may produce unexpected outcomes. The following example illustrates the issue:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><pre class="cpp"><code>    //bad code
    Rectangle {
        width: 50
        anchors.left: parent.left
        function reanchorToRight() {
            anchors.right = parent.right
            anchors.left = undefined
        }
    }</code></pre></td>
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/028e98bf-6c70-48a5-8280-2d4587044bb4-api/apps/qml/sdk-15.04.4/qtquick-positioning-anchors/images/anchor_ordering_bad.png" /></p></td>
</tr>
</tbody>
</table>

When `reanchorToRight` is called, the function first sets the right anchor. At that point, both left and right anchors are set, and the item will be stretched horizontally to fill its parent. When the left anchor is unset, the new width will remain. Thus when updating anchors within JavaScript, you should first unset any anchors that are no longer required, and only then set any new anchors that are required, as shown below:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><pre class="qml"><code>    Rectangle {
        width: 50
        anchors.left: parent.left
        function reanchorToRight() {
            anchors.left = undefined
            anchors.right = parent.right
        }
    }</code></pre></td>
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/e0e9fce2-e1dc-4a51-9067-5017ee440cc4-api/apps/qml/sdk-15.04.4/qtquick-positioning-anchors/images/anchor_ordering.png" /></p></td>
</tr>
</tbody>
</table>

Because the evaluation order of bindings is not defined, it is not recommended to change anchors via conditional bindings, as this can lead to the ordering issue described above. In the following example the Rectangle will eventually grow to the full width of its parent, because both left and right anchors will be simultaneously set during binding update.

``` cpp
//bad code
Rectangle {
    width: 50; height: 50
    anchors.left: state == "right" ? undefined : parent.left;
    anchors.right: state == "right" ? parent.right : undefined;
}
```

This should be rewritten to use [AnchorChanges](../QtQuick.AnchorChanges/index.html) instead, as [AnchorChanges](../QtQuick.AnchorChanges/index.html) will automatically handle ordering issues internally.

<span id="restrictions"></span>
Restrictions
------------

For performance reasons, you can only anchor an item to its siblings and direct parent. For example, the following anchor is invalid and would produce a warning:

``` cpp
//bad code
Item {
    id: group1
    Rectangle { id: rect1; ... }
}
Item {
    id: group2
    Rectangle { id: rect2; anchors.left: rect1.right; ... }    // invalid anchor!
}
```

Also, anchor-based layouts cannot be mixed with absolute positioning. If an item specifies its [x](../QtQuick.Item/index.html#x-prop) position and also sets [anchors.left](../QtQuick.Item/index.html#anchors.left-prop), or anchors its left and right edges but additionally sets a [width](../QtQuick.Item/index.html#width-prop), the result is undefined, as it would not be clear whether the item should use anchoring or absolute positioning. The same can be said for setting an item's [y](../QtQuick.Item/index.html#y-prop) and [height](../QtQuick.Item/index.html#height-prop) with [anchors.top](../QtQuick.Item/index.html#anchors.top-prop) and [anchors.bottom](../QtQuick.Item/index.html#anchors.bottom-prop), or setting [anchors.fill](../QtQuick.Item/index.html#anchors.fill-prop) as well as [width](../QtQuick.Item/index.html#width-prop) or [height](../QtQuick.Item/index.html#height-prop). The same applies when using positioners such as Row and Grid, which may set the item's [x](../QtQuick.Item/index.html#x-prop) and [y](../QtQuick.Item/index.html#y-prop) properties. If you wish to change from using anchor-based to absolute positioning, you can clear an anchor value by setting it to `undefined`.

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
