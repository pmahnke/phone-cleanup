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
-   [SDK 15.04.4](../index.html) ›
-   [QtQml](../QtQml/index.html) ›

<!-- -->

-   Package

Package
=======

<span class="subtitle"></span>
Specifies a collection of named items More...

|                   |                  |
|-------------------|------------------|
| Import Statement: | import QtQuick . |

<span id="attached-properties"></span>
Attached Properties
-------------------

-   ****[name](index.html#name-attached-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

The Package class is used in conjunction with [VisualDataModel](../QtQml.VisualDataModel/index.html) to enable delegates with a shared context to be provided to multiple views.

Any item within a Package may be assigned a name via the [Package.name](index.html#name-attached-prop) attached property.

The example below creates a Package containing two named items; *list* and *grid*. The third item in the package (the Rectangle) is parented to whichever delegate it should appear in. This allows an item to move between views.

``` qml
Package {
    Text { id: listDelegate; width: parent.width; height: 25; text: 'Empty'; Package.name: 'list' }
    Text { id: gridDelegate; width: parent.width / 2; height: 50; text: 'Empty'; Package.name: 'grid' }
    Rectangle {
        id: wrapper
        width: parent.width; height: 25
        color: 'lightsteelblue'
        Text { text: display; anchors.centerIn: parent }
        state: root.upTo > index ? 'inGrid' : 'inList'
        states: [
            State {
                name: 'inList'
                ParentChange { target: wrapper; parent: listDelegate }
            },
            State {
                name: 'inGrid'
                ParentChange {
                    target: wrapper; parent: gridDelegate
                    x: 0; y: 0; width: gridDelegate.width; height: gridDelegate.height
                }
            }
        ]
        transitions: [
            Transition {
                ParentAnimation {
                    NumberAnimation { properties: 'x,y,width,height'; duration: 300 }
                }
            }
        ]
    }
}
```

These named items are used as the delegates by the two views who reference the special VisualDataModel::parts property to select a model which provides the chosen delegate.

``` qml
DelegateModel {
    id: visualModel
    delegate: Delegate {}
    model: myModel
}
ListView {
    id: lv
    height: parent.height/2
    width: parent.width
    model: visualModel.parts.list
}
GridView {
    y: parent.height/2
    height: parent.height/2
    width: parent.width
    cellWidth: width / 2
    cellHeight: 50
    model: visualModel.parts.grid
}
```

**See also** Qt Quick Examples - Views, Qt Quick Demo - Photo Viewer, and [Qt QML](../QtQml.qtqml-index/index.html).

Attached Property Documentation
-------------------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-attached-prop"></span><span class="name">Package.name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This attached property holds the name of an item within a Package.

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
