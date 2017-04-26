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

-   AnchorChanges

AnchorChanges
=============

<span class="subtitle"></span>
Specifies how to change the anchors of an item in a state More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[anchors](index.html#anchors-prop)****
    -   ****[anchors.left](index.html#anchors.left-prop)**** : AnchorLine
    -   ****[anchors.right](index.html#anchors.right-prop)**** : AnchorLine
    -   ****[anchors.horizontalCenter](index.html#anchors.horizontalCenter-prop)**** : AnchorLine
    -   ****[anchors.top](index.html#anchors.top-prop)**** : AnchorLine
    -   ****[anchors.bottom](index.html#anchors.bottom-prop)**** : AnchorLine
    -   ****[anchors.verticalCenter](index.html#anchors.verticalCenter-prop)**** : AnchorLine
    -   ****[anchors.baseline](index.html#anchors.baseline-prop)**** : AnchorLine
-   ****[target](index.html#target-prop)**** : Item

<span id="details"></span>
Detailed Description
--------------------

The [AnchorChanges](index.html) type is used to modify the anchors of an item in a [State](../QtQuick.State/index.html).

[AnchorChanges](index.html) cannot be used to modify the margins on an item. For this, use [PropertyChanges](../QtQuick.PropertyChanges/index.html) intead.

In the following example we change the top and bottom anchors of an item using [AnchorChanges](index.html), and the top and bottom anchor margins using [PropertyChanges](../QtQuick.PropertyChanges/index.html):

``` qml
import QtQuick 2.0
Rectangle {
    id: window
    width: 120; height: 120
    color: "black"
    Rectangle { id: myRect; width: 50; height: 50; color: "red" }
    states: State {
        name: "reanchored"
        AnchorChanges {
            target: myRect
            anchors.top: window.top
            anchors.bottom: window.bottom
        }
        PropertyChanges {
            target: myRect
            anchors.topMargin: 10
            anchors.bottomMargin: 10
        }
    }
    MouseArea { anchors.fill: parent; onClicked: window.state = "reanchored" }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/903bb5b0-ff69-425d-80cb-408c2871b379-api/apps/qml/sdk-15.04.6/QtQuick.AnchorChanges/images/anchorchanges.png)

[AnchorChanges](index.html) can be animated using [AnchorAnimation](../QtQuick.AnchorAnimation/index.html).

``` qml
//animate our anchor changes
Transition {
    AnchorAnimation {}
}
```

Changes to anchor margins can be animated using [NumberAnimation](../QtQuick.NumberAnimation/index.html).

For more information on anchors see [Anchor Layouts](../QtQuick.qtquick-positioning-anchors/index.html#anchor-layout).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="anchors-prop"></span><strong>anchors group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="anchors.left-prop"></span><span class="name">anchors.left</span> : <span class="type">AnchorLine</span></p></td>
</tr>
<tr class="even">
<td><p><span id="anchors.right-prop"></span><span class="name">anchors.right</span> : <span class="type">AnchorLine</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="anchors.horizontalCenter-prop"></span><span class="name">anchors.horizontalCenter</span> : <span class="type">AnchorLine</span></p></td>
</tr>
<tr class="even">
<td><p><span id="anchors.top-prop"></span><span class="name">anchors.top</span> : <span class="type">AnchorLine</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="anchors.bottom-prop"></span><span class="name">anchors.bottom</span> : <span class="type">AnchorLine</span></p></td>
</tr>
<tr class="even">
<td><p><span id="anchors.verticalCenter-prop"></span><span class="name">anchors.verticalCenter</span> : <span class="type">AnchorLine</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="anchors.baseline-prop"></span><span class="name">anchors.baseline</span> : <span class="type">AnchorLine</span></p></td>
</tr>
</tbody>
</table>

These properties change the respective anchors of the item.

To reset an anchor you can assign `undefined`:

``` qml
AnchorChanges {
    target: myItem
    anchors.left: undefined          //remove myItem's left anchor
    anchors.right: otherItem.right
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="target-prop"></span><span class="name">target</span> : <span class="type"><a href="../QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the [Item](../QtQuick.Item/index.html) for which the anchor changes will be applied.

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
