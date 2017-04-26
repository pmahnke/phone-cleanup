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

-   Important Concepts In Qt Quick - Positioning

Important Concepts In Qt Quick - Positioning
============================================

<span class="subtitle"></span>
<span id="details"></span>
Visual items in QML can be positioned in a variety of ways. The most important positioning-related concept is that of anchoring, a form of relative positioning where items can be anchored (or attached) to each other at certain boundaries. Other positioning concepts include absolute positioning, positioning with coordinate bindings, positioners, and layouts.

<span id="manual-positioning"></span>
Manual Positioning
------------------

Items can be positioned manually. If the user-interface is going to be static, manual positioning provides the most efficient form of positioning.

In any user-interface, the visual types exist at a particular location in the screen coordinates at any instant in time. While fluidly animated and dynamic user-interfaces are a major focus of Qt Quick, statically-positioned user interfaces are still a viable option. What's more, if the position of those types does not change, it can often be more performant to specify the position manually than to use the more dynamic positioning methods documented in proceeding sections.

In Qt Quick, every visual object is positioned within the [coordinate system](../QtQuick.qtquick-visualcanvas-coordinates/index.html) provided by the Qt Quick visual canvas. As described in that document, the x and y coordinates of a visual object are relative to those of its visual parent, with the top-left corner having the coordinate (0, 0).

Thus, the following example will display two rectangles positioned manually:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Example Code</th>
<th>Resultant Layout</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><pre class="qml"><code>import QtQuick 2.0
Item {
    width: 200
    height: 200
    Rectangle {
        x: 50
        y: 50
        width: 100
        height: 100
        color: &quot;green&quot;
     }
     Rectangle {
        x: 100
        y: 100
        width: 50
        height: 50
        color: &quot;yellow&quot;
     }
}</code></pre></td>
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/0dd34b28-ad91-456c-9a9d-fa538d78a367-api/apps/qml/sdk-14.10/qtquick-positioning-topic/images/manual-layout.png" /></p></td>
</tr>
</tbody>
</table>

<span id="positioning-with-bindings"></span>
Positioning With Bindings
-------------------------

Items may also be positioned by assigning binding expressions to the properties associated with their location in the visual canvas. This type of positioning is the most highly dynamic, however some performance cost is associated with positioning items in this manner.

The position and dimensions of a visual object can also be set through property bindings. This has the advantage that the values will automatically be updated as the dependencies of the bindings change. For example, the width of one Rectangle might depend on the width of the Rectangle next to it.

While bindings provide a very flexible and intuitive way of creating dynamic layouts, it should be noted that there is some performance cost associated with them, and where possible, pristine Anchor layouts should be preferred.

<span id="anchors"></span>
Anchors
-------

Anchors allows an item to be placed either adjacent to or inside of another, by attaching one or more of the item's anchor-points (boundaries) to an anchor-point of the other. These anchors will remain even if the dimensions or location of one of the items changes, allowing for highly dynamic user-interfaces.

A visual object can be thought of as having various anchor-points (or more correctly, anchor-lines). Other items can be anchored to those points, which means that as any object changes, the other objects which are anchored to it will adjust automatically to maintain the anchoring.

Qt Quick provides anchors as a top-level concept. See the documentation about [positioning with anchors](../QtQuick.qtquick-positioning-anchors/index.html) for in-depth information on the topic.

It is important to note that anchor-based layouts are generally far more performant than binding-based layouts, if pristine. A "pristine" anchor layout is one which uses only anchors (with object nesting) to determine the positioning, whereas a "contaminated" anchor layout is one which uses both anchoring and bindings (either on position-related \[x,y\] properties or on dimension-related \[width,height\] properties) to determine the position.

<span id="positioners"></span>
Positioners
-----------

Qt Quick also provides some built-in positioner items. For many use cases, the best positioner to use is a simple grid, row, or column, and Qt Quick provides items which will position children in these formations in the most efficient manner possible. See the documentation on [item positioners types](../QtQuick.qtquick-positioning-layouts/index.html) for more information about utilizing pre-defined positioners.

<span id="layouts"></span>
Layouts
-------

From Qt 5.1, the module Qt Quick Layouts can also be used to arrange Qt Quick items in a user interface. Unlike positioners, the types in Qt Quick Layouts manage both the positions and sizes of items in a declarative interface. They are well suited for resizable user interfaces.

<span id="right-to-left-support"></span>
Right-To-Left Support
---------------------

The directionality of the written form of a language often has a great impact on how the visual types of a user-interface should be positioned. Qt Quick supports right-to-left positioning of types through the predefined-layouts as well as right-to-left text layouts.

Please see the documentation about [right-to-left support in Qt Quick](../QtQuick.qtquick-positioning-righttoleft/index.html) for in-depth information on the topic.

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
