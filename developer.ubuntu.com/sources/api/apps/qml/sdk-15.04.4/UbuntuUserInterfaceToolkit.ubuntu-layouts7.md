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
-   <a href="../UbuntuUserInterfaceToolkit/index.html" class="sub-nav-item">UbuntuUserInterfaceToolkit</a> ›

<!-- -->

-   Layouts - Defining more layouts for different form factors

Layouts - Defining more layouts for different form factors
==========================================================

<span class="subtitle"></span>
<span id="details"></span>
As mentioned, with Layouts we can achieve to have a single code base supporting different form factors. The following example illustrates how to support different layouts with the same code base.

<span id="default-layout"></span>
Default layout
--------------

![](https://developer.ubuntu.com/static/devportal_uploaded/d2567f58-a90e-4aa1-b472-5d1278acf268-api/apps/qml/sdk-15.04.4/ubuntu-layouts7/images/simple-layout1.png)

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
    id: nolayout
    text: "Non-laid out"
    color: "brown"
    anchors {
        top: greenButton.bottom
        left: redButton.right
        right: parent.right
        bottom: blueButton.top
    }
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

<span id="conditional-layouts"></span>
Conditional layouts
-------------------

<span id="column-layout"></span>
### Column layout

![](https://developer.ubuntu.com/static/devportal_uploaded/59ee97c3-e1a1-4dc8-8f73-a1cc7e88c741-api/apps/qml/sdk-15.04.4/ubuntu-layouts7/images/simple-layout2.png)

``` qml
ConditionalLayout {
    name: "column"
    when: layouts.width > units.gu(50) && layouts.width <= units.gu(70)
    Column {
        anchors.fill: parent
        ItemLayout {
            item: "red"
            height: parent.height / 3
            anchors {
                left: parent.left
                right: parent.right
            }
        }
        ItemLayout {
            item: "green"
            height: parent.height / 3
            anchors {
                left: parent.left
                right: parent.right
            }
        }
        ItemLayout {
            item: "blue"
            height: parent.height / 3
            anchors {
                left: parent.left
                right: parent.right
            }
        }
    }
},
```

<span id="row-layout"></span>
### Row layout

![](https://developer.ubuntu.com/static/devportal_uploaded/28faa75c-d9bb-4cfb-beec-abc711c4a28d-api/apps/qml/sdk-15.04.4/ubuntu-layouts7/images/simple-layout3.png)

``` qml
ConditionalLayout {
    name: "row"
    when: layouts.width > units.gu(70) && layouts.width <= units.gu(90)
    Row {
        anchors.fill: parent
        ItemLayout {
            item: "blue"
            width: parent.width / 3
            anchors {
                top: parent.top
                bottom: parent.bottom
            }
        }
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
    }
},
```

<span id="layout-hiding-element"></span>
### Layout hiding element

![](https://developer.ubuntu.com/static/devportal_uploaded/282ec287-4e7b-48a2-9365-25d0e8249f8b-api/apps/qml/sdk-15.04.4/ubuntu-layouts7/images/simple-layout4.png)

``` qml
ConditionalLayout {
    name: "hiding-element"
    when: layouts.width > units.gu(90) && layouts.width < units.gu(100)
    Row {
        anchors.fill: parent
        ItemLayout {
            item: "red"
            width: parent.width / 2
            height: units.gu(20)
        }
        ItemLayout {
            item: "green"
            width: parent.width / 2
            height: units.gu(20)
        }
    }
},
```

<span id="layout-showing-more"></span>
### Layout showing more

![](https://developer.ubuntu.com/static/devportal_uploaded/a0b23b3d-1807-4bfa-bb62-f2c1ee930dc5-api/apps/qml/sdk-15.04.4/ubuntu-layouts7/images/simple-layout5.png)

``` qml
ConditionalLayout {
    name: "showing-more"
    when: layouts.width >= units.gu(100)
    Flow {
        anchors.fill: parent
        ItemLayout {
            item: "red"
            width: units.gu(50)
            height: units.gu(20)
        }
        ItemLayout {
            item: "green"
            width: units.gu(50)
            height: units.gu(20)
        }
        ItemLayout {
            item: "blue"
            width: units.gu(50)
            height: units.gu(20)
        }
        Button {
            text: "Flow item"
            width: units.gu(50)
            height: units.gu(20)
        }
    }
}
```

<span id="the-entire-code"></span>
The entire code
---------------

``` qml
Layouts {
    id: layouts
    anchors.fill: parent
    layouts: [
        ConditionalLayout {
            name: "column"
            when: layouts.width > units.gu(50) && layouts.width <= units.gu(70)
            Column {
                anchors.fill: parent
                ItemLayout {
                    item: "red"
                    height: parent.height / 3
                    anchors {
                        left: parent.left
                        right: parent.right
                    }
                }
                ItemLayout {
                    item: "green"
                    height: parent.height / 3
                    anchors {
                        left: parent.left
                        right: parent.right
                    }
                }
                ItemLayout {
                    item: "blue"
                    height: parent.height / 3
                    anchors {
                        left: parent.left
                        right: parent.right
                    }
                }
            }
        },
        ConditionalLayout {
            name: "row"
            when: layouts.width > units.gu(70) && layouts.width <= units.gu(90)
            Row {
                anchors.fill: parent
                ItemLayout {
                    item: "blue"
                    width: parent.width / 3
                    anchors {
                        top: parent.top
                        bottom: parent.bottom
                    }
                }
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
            }
        },
        ConditionalLayout {
            name: "hiding-element"
            when: layouts.width > units.gu(90) && layouts.width < units.gu(100)
            Row {
                anchors.fill: parent
                ItemLayout {
                    item: "red"
                    width: parent.width / 2
                    height: units.gu(20)
                }
                ItemLayout {
                    item: "green"
                    width: parent.width / 2
                    height: units.gu(20)
                }
            }
        },
        ConditionalLayout {
            name: "showing-more"
            when: layouts.width >= units.gu(100)
            Flow {
                anchors.fill: parent
                ItemLayout {
                    item: "red"
                    width: units.gu(50)
                    height: units.gu(20)
                }
                ItemLayout {
                    item: "green"
                    width: units.gu(50)
                    height: units.gu(20)
                }
                ItemLayout {
                    item: "blue"
                    width: units.gu(50)
                    height: units.gu(20)
                }
                Button {
                    text: "Flow item"
                    width: units.gu(50)
                    height: units.gu(20)
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
        id: nolayout
        text: "Non-laid out"
        color: "brown"
        anchors {
            top: greenButton.bottom
            left: redButton.right
            right: parent.right
            bottom: blueButton.top
        }
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
```

<span id="that-s-it"></span>
That's it
---------

You're ready to go. You can find the layouting components under [Layouting](../UbuntuUserInterfaceToolkit.overview-ubuntu-sdk/index.html#layouting). For further questions please visit **\#ubuntu-app-devel** irc channel on freenode.

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
