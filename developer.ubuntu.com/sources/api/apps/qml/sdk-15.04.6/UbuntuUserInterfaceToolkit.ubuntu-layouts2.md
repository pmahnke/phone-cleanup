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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.6</a> ›
-   <a href="../UbuntuUserInterfaceToolkit/index.html" class="sub-nav-item">UbuntuUserInterfaceToolkit</a> ›

<!-- -->

-   Layouts - The first conditional layout

Layouts - The first conditional layout
======================================

<span class="subtitle"></span>
<span id="details"></span>
As first let's create the following default layout, with anchored buttons to each other.

![](https://developer.ubuntu.com/static/devportal_uploaded/1c832643-ea30-42d0-a105-6094ee63fb07-api/apps/qml/sdk-15.04.6/ubuntu-layouts2/images/default-layout.png)

Defined by the following code:

``` qml
Button {
    id: redButton
    text: "Item #1"
    color: "red"
    Layouts.item: "red"
    anchors {
        left: parent.left
        top: parent.top
        bottom: parent.bottom
    }
    width: units.gu(15)
}
Button {
    id: greenButton
    text: "Item #2"
    color: "green"
    Layouts.item: "green"
    anchors {
        top: parent.top
        left: redButton.right
        right: parent.right
    }
    height: units.gu(10)
}
Button {
    id: blueButton
    text: "Item #3"
    color: "blue"
    Layouts.item: "blue"
    anchors{
        left: redButton.right
        right: parent.right
        bottom: parent.bottom
    }
    height: units.gu(10)
}
```

<span id="walkthrough"></span>
Walkthrough
-----------

<span id="import"></span>
### Import

First of all, in order to use the layouting abilities, you need to import Ubuntu.Layouts.

``` cpp
import Ubuntu.Layouts 1.0
```

This layout will have the red button anchored to the parent's left, top and bottom, having a width of 15 grid units. The green and blue buttons are anchored left to the red button, righ to their parent, top and bottom to the parent top respectively to the parent bottom and both having a height of 10 grid units.

This layout looks good in small form factors, however as the width, height and grid unit changes, this layout will start to look cumbersome.

Every component we wan to lay out must be marked. This "marking" is done by attaching the Layouts.item property to erach item participating in the layouting. Therefore we mark each button with a unique name, "red", "green" and "blue".

<span id="define-the-conditional-layout"></span>
### Define the conditional layout

Let's define a column layout for the case when the layout block width passes 50 GU, and move the items into a [Row](http://qt-project.org/doc/qt-5.0/qtquick/qml-qtquick2-row.html) container in the following order: "red", "green" and "blue". We also need to specify the size these components will have, so let's set the width to one third of the container's width and top and bottom anchored to the row's top and bottom.

``` qml
ConditionalLayout {
    name: "row"
    when: layouts.width > units.gu(50)
    Row {
        anchors.fill: parent
        ItemLayout {
            item: "red"
            width: parent.width / 3
            anchors {
                top: parent.top
                bottom: parent.bottom
            }
        }
        ItemLayout {
            item: "green"
            width: parent.width / 3
            anchors {
                top: parent.top
                bottom: parent.bottom
            }
        }
        ItemLayout {
            item: "blue"
            width: parent.width / 3
            anchors {
                top: parent.top
                bottom: parent.bottom
            }
        }
    }
}
```

Note the way the container is defined. Items are laid out using [ItemLayout](../Ubuntu.Layouts.ItemLayout/index.html) host items. The items will be laid out in the order the [ItemLayout](../Ubuntu.Layouts.ItemLayout/index.html) hosts are declared. Beside this [ItemLayout](../Ubuntu.Layouts.ItemLayout/index.html) also drives the size, scale, rotation, availability (enabled) visibility and opacity of the hosted item.

The conditional layout is given a name so it can be identified when the layout is set through Layouts.curentLayout property. This, beside debugging abilities, gives additional possibilities to configure properties that are not directly updated by the layouting.

Combining this with the default layout we will see the following layout when width exceeds 50 GU:

![](https://developer.ubuntu.com/static/devportal_uploaded/350cd357-3677-4eac-8b79-25d35852275f-api/apps/qml/sdk-15.04.6/ubuntu-layouts2/images/layout1.png)

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
import Ubuntu.Layouts 1.0
Item {
    id: root
    width: units.gu(30)
    height: units.gu(30)
    Layouts {
        objectName: "layouts"
        id: layouts
        anchors.fill: parent
        layouts: [
            ConditionalLayout {
                name: "row"
                when: layouts.width > units.gu(50)
                Row {
                    anchors.fill: parent
                    ItemLayout {
                        item: "red"
                        width: parent.width / 3
                        anchors {
                            top: parent.top
                            bottom: parent.bottom
                        }
                    }
                    ItemLayout {
                        item: "green"
                        width: parent.width / 3
                        anchors {
                            top: parent.top
                            bottom: parent.bottom
                        }
                    }
                    ItemLayout {
                        item: "blue"
                        width: parent.width / 3
                        anchors {
                            top: parent.top
                            bottom: parent.bottom
                        }
                    }
                }
            }
        ]
        Button {
            id: redButton
            text: "Item #1"
            color: "red"
            Layouts.item: "red"
            anchors {
                left: parent.left
                top: parent.top
                bottom: parent.bottom
            }
            width: units.gu(15)
        }
        Button {
            id: greenButton
            text: "Item #2"
            color: "green"
            Layouts.item: "green"
            anchors {
                top: parent.top
                left: redButton.right
                right: parent.right
            }
            height: units.gu(10)
        }
        Button {
            id: blueButton
            text: "Item #3"
            color: "blue"
            Layouts.item: "blue"
            anchors{
                left: redButton.right
                right: parent.right
                bottom: parent.bottom
            }
            height: units.gu(10)
        }
    }
}
```

<a href="../UbuntuUserInterfaceToolkit.ubuntu-layouts3/index.html" class="nextPage">Layouts - Changing the order</a>

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
