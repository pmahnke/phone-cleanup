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
-   [SDK 15.04.6](../index.html) ›
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   Column

Column
======

<span class="subtitle"></span>
Positions its children in a column More...

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
<td>Inherits:</td>
<td><p><a href="../QtQuick.Item/index.html">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[add](index.html#add-prop)**** : Transition
-   ****[move](index.html#move-prop)**** : Transition
-   ****[populate](index.html#populate-prop)**** : Transition
-   ****[spacing](index.html#spacing-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

Column is a type that positions its child items along a single column. It can be used as a convenient way to vertically position a series of items without using [anchors](../QtQuick.qtquick-positioning-anchors/index.html).

Below is a Column that contains three rectangles of various sizes:

``` qml
Column {
    spacing: 2
    Rectangle { color: "red"; width: 50; height: 50 }
    Rectangle { color: "green"; width: 20; height: 50 }
    Rectangle { color: "blue"; width: 50; height: 20 }
}
```

The Column automatically positions these items in a vertical formation, like this:

![](https://developer.ubuntu.com/static/devportal_uploaded/e228eaf7-e8f1-4d0c-bfc8-943d82802457-api/apps/qml/sdk-15.04.6/QtQuick.Column/images/verticalpositioner_example.png)

If an item within a Column is not [visible](../QtQuick.Item/index.html#visible-prop), or if it has a width or height of 0, the item will not be laid out and it will not be visible within the column. Also, since a Column automatically positions its children vertically, a child item within a Column should not set its [y](../QtQuick.Item/index.html#y-prop) position or vertically anchor itself using the [top](../QtQuick.Item/index.html#anchors.top-prop), [bottom](../QtQuick.Item/index.html#anchors.bottom-prop), [anchors.verticalCenter](../QtQuick.Item/index.html#anchors.verticalCenter-prop), [fill](../QtQuick.Item/index.html#anchors.fill-prop) or [centerIn](../QtQuick.Item/index.html#anchors.centerIn-prop) anchors. If you need to perform these actions, consider positioning the items without the use of a Column.

Note that items in a Column can use the [Positioner](../QtQuick.Positioner/index.html) attached property to access more information about its position within the Column.

For more information on using Column and other related positioner-types, see [Item Positioners](../QtQuick.qtquick-positioning-layouts/index.html).

<span id="using-transitions"></span>
Using Transitions
-----------------

A Column animate items using specific transitions when items are added to or moved within a Column.

For example, the Column below sets the [move](index.html#move-prop) property to a specific [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition):

``` qml
Column {
    spacing: 2
    Rectangle { color: "red"; width: 50; height: 50 }
    Rectangle { id: greenRect; color: "green"; width: 20; height: 50 }
    Rectangle { color: "blue"; width: 50; height: 20 }
    move: Transition {
        NumberAnimation { properties: "x,y"; duration: 1000 }
    }
    focus: true
    Keys.onSpacePressed: greenRect.visible = !greenRect.visible
}
```

When the Space key is pressed, the [visible](../QtQuick.Item/index.html#visible-prop) value of the green [Rectangle](../QtQuick.Rectangle/index.html) is toggled. As it appears and disappears, the blue [Rectangle](../QtQuick.Rectangle/index.html) moves within the Column, and the [move](index.html#move-prop) transition is automatically applied to the blue [Rectangle](../QtQuick.Rectangle/index.html):

![](https://developer.ubuntu.com/static/devportal_uploaded/2efaf5dd-4205-4cc5-b2bb-253d4dd7e9c3-api/apps/qml/sdk-15.04.6/QtQuick.Column/images/verticalpositioner_transition.gif)

**See also** [Row](../QtQuick.qtquick-positioning-layouts/index.html#row), [Grid](../QtQuick.qtquick-positioning-layouts/index.html#grid), [Flow](../QtQuick.qtquick-positioning-layouts/index.html#flow), [Positioner](../QtQuick.Positioner/index.html), ColumnLayout, and [Qt Quick Examples - Positioners](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.6/QtQuick.positioners/).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="add-prop"></span><span class="name">add</span> : <span class="type"><a href="../QtQuick.Transition/index.html">Transition</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the transition to be run for items that are added to this positioner. For a positioner, this applies to:

-   Items that are created or reparented as a child of the positioner after the positioner has been created
-   Child items that change their [Item::visible](../QtQuick.Item/index.html#visible-prop) property from false to true, and thus are now visible

The transition can use the [ViewTransition](../QtQuick.ViewTransition/index.html) property to access more details about the item that is being added. See the [ViewTransition](../QtQuick.ViewTransition/index.html) documentation for more details and examples on using these transitions.

**Note:** This transition is not applied to the items that already part of the positioner at the time of its creation. In this case, the [populate](index.html#populate-prop) transition is applied instead.

**See also** [populate](index.html#populate-prop), [ViewTransition](../QtQuick.ViewTransition/index.html), and [Qt Quick Examples - Positioners](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.6/QtQuick.positioners/).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="move-prop"></span><span class="name">move</span> : <span class="type"><a href="../QtQuick.Transition/index.html">Transition</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the transition to run for items that have moved within the positioner. For a positioner, this applies to:

-   Child items that move when they are displaced due to the addition, removal or rearrangement of other items in the positioner
-   Child items that are repositioned due to the resizing of other items in the positioner

The transition can use the [ViewTransition](../QtQuick.ViewTransition/index.html) property to access more details about the item that is being moved. Note, however, that for this move transition, the [ViewTransition](../QtQuick.ViewTransition/index.html).targetIndexes and [ViewTransition](../QtQuick.ViewTransition/index.html).targetItems lists are only set when this transition is triggered by the addition of other items in the positioner; in other cases, these lists will be empty. See the [ViewTransition](../QtQuick.ViewTransition/index.html) documentation for more details and examples on using these transitions.

**Note:** In Qt Quick 1, this transition was applied to all items that were part of the positioner at the time of its creation. From [Qt Quick 2](../QtQuick.qtquick-index/index.html) onwards, positioners apply the [populate](index.html#populate-prop) transition to these items instead.

**See also** [add](index.html#add-prop), [ViewTransition](../QtQuick.ViewTransition/index.html), and [Qt Quick Examples - Positioners](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.6/QtQuick.positioners/).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="populate-prop"></span><span class="name">populate</span> : <span class="type"><a href="../QtQuick.Transition/index.html">Transition</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the transition to be run for items that are part of this positioner at the time of its creation. The transition is run when the positioner is first created.

The transition can use the [ViewTransition](../QtQuick.ViewTransition/index.html) property to access more details about the item that is being added. See the [ViewTransition](../QtQuick.ViewTransition/index.html) documentation for more details and examples on using these transitions.

**See also** [add](index.html#add-prop), [ViewTransition](../QtQuick.ViewTransition/index.html), and [Qt Quick Examples - Positioners](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.6/QtQuick.positioners/).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="spacing-prop"></span><span class="name">spacing</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The spacing is the amount in pixels left empty between adjacent items. The default spacing is 0.

**See also** [Grid::spacing](../QtQuick.Grid/index.html#spacing-prop).

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
