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
-   [SDK 15.04.5](../index.html) ›
-   [Ubuntu.Layouts](../Ubuntu.Layouts/index.html) ›

<!-- -->

-   Layouts

Layouts
=======

<span class="subtitle"></span>
The Layouts component allows one to specify multiple different layouts for a fixed set of Items, and applies the desired layout to those Items. More...

|                   |                           |
|-------------------|---------------------------|
| Import Statement: | import Ubuntu.Layouts 1.0 |

<span id="properties"></span>
Properties
----------

-   ****[currentLayout](index.html#currentLayout-prop)**** : string
-   ****[layouts](index.html#layouts-prop)**** : list&lt;ConditionalLayout&gt;

<span id="attached-properties"></span>
Attached Properties
-------------------

-   ****[item](index.html#item-attached-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

Layouts is a layout block component incorporating layout definitions and components to lay out. The layouts are defined in the [layouts](index.html#layouts-prop) property, which is a list of [ConditionalLayout](../Ubuntu.Layouts.ConditionalLayout/index.html) components, each declaring the sizes and positions of the components specified to be laid out.

``` qml
Layouts {
    id: layouts
    layouts: [
        ConditionalLayout {
            name: "flow"
            when: layouts.width > units.gu(60) && layouts.width <= units.gu(100)
            Flow {
                anchors.fill: parent
                //[...]
            }
        },
        ConditionalLayout {
            name: "column"
            when: layouts.width > units.gu(100)
            Flickable {
                anchors.fill: parent
                contentHeight: column.childrenRect.height
                Column {
                    id: column
                    //[...]
                }
            }
        }
    ]
}
```

The components to be laid out must be declared as children of the Layouts component, each set an attached property "Layouts.item" to be a unique string.

``` qml
Layouts {
    id: layouts
    layouts: [
        ConditionalLayout {
            name: "flow"
            when: layouts.width > units.gu(60) && layouts.width <= units.gu(100)
            Flow {
                anchors.fill: parent
                //[...]
            }
        },
        ConditionalLayout {
            name: "column"
            when: layouts.width > units.gu(100)
            Flickable {
                anchors.fill: parent
                contentHeight: column.childrenRect.height
                Column {
                    id: column
                    //[...]
                }
            }
        }
    ]
    Row {
        anchors.fill: parent
        Button {
            text: "Press me"
            Layouts.item: "item1"
        }
        Button {
            text: "Cancel"
            Layouts.item: "item2"
        }
    }
}
```

The layout of the children of Layouts is considered the default layout, i.e. [currentLayout](index.html#currentLayout-prop) is an empty string. So in the above example, the buttons arranged in a row is the default layout.

The layouts defined by [ConditionalLayout](../Ubuntu.Layouts.ConditionalLayout/index.html) components are created and activated when at least one of the layout's condition is evaluated to true. In which case components marked for layout are re-parented to the components defined to lay out those defined in the [ConditionalLayout](../Ubuntu.Layouts.ConditionalLayout/index.html). In case multiple conditions are evaluated to true, the first one in the list will be activated. The deactivated layout is destroyed, exception being the default layout, which is kept in memory for the entire lifetime of the Layouts component.

Upon activation, the created component fills in the entire layout block.

``` qml
Layouts {
    id: layouts
    layouts: [
        ConditionalLayout {
            name: "flow"
            when: layouts.width > units.gu(60) && layouts.width <= units.gu(100)
            Flow {
                anchors.fill: parent
                ItemLayout {
                    item: "item1"
                }
                ItemLayout {
                    item: "item2"
                }
            }
        },
        ConditionalLayout {
            name: "column"
            when: layouts.width > units.gu(100)
            Flickable {
                anchors.fill: parent
                contentHeight: column.childrenRect.height
                Column {
                    id: column
                    ItemLayout {
                        item: "item1"
                    }
                    ItemLayout {
                        item: "item2"
                    }
                }
            }
        }
    ]
    Row {
        anchors.fill: parent
        Button {
            text: "Press me"
            Layouts.item: "item1"
        }
        Button {
            text: "Cancel"
            Layouts.item: "item2"
        }
    }
}
```

Conditional layouts must be named in order to be activatable. These names (strings) should be unique within a Layouts item and can be used to identify changes in between layouts in scripts, so additional layout specific customization on laid out items can be done. The current layout is presented by the [currentLayout](index.html#currentLayout-prop) property.

Extending the previous example by changing the button color to green when the current layout is "column", the code would look as follows:

``` qml
Layouts {
    id: layouts
    layouts: [
        ConditionalLayout {
            name: "flow"
            when: layouts.width > units.gu(60) && layouts.width <= units.gu(100)
            Flow {
                anchors.fill: parent
                ItemLayout {
                    item: "item1"
                }
                ItemLayout {
                    item: "item2"
                }
            }
        },
        ConditionalLayout {
            name: "column"
            when: layouts.width > units.gu(100)
            Flickable {
                anchors.fill: parent
                contentHeight: column.childrenRect.height
                Column {
                    id: column
                    ItemLayout {
                        item: "item1"
                    }
                    ItemLayout {
                        item: "item2"
                    }
                }
            }
        }
    ]
    Row {
        anchors.fill: parent
        Button {
            text: "Press me"
            Layouts.item: "item1"
            color: (layouts.currentLayout === "column") ? "green" : "gray"
        }
        Button {
            text: "Cancel"
            Layouts.item: "item2"
            color: (layouts.currentLayout === "column") ? "green" : "gray"
        }
    }
}
```

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="currentLayout-prop"></span><span class="name">currentLayout</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The property holds the active layout name. The default layout is identified by an empty string. This property can be used for additional customization of the components which are not supported by the layouting.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="layouts-prop"></span><span class="name">layouts</span> : <span class="type">list</span>&lt;<span class="type"><a href="../Ubuntu.Layouts.ConditionalLayout/index.html">ConditionalLayout</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

The property holds the list of different [ConditionalLayout](../Ubuntu.Layouts.ConditionalLayout/index.html) elements.

Attached Property Documentation
-------------------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="item-attached-prop"></span><span class="name">Layouts.item</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This attached property identifies a component to be laid out. It is the unique identifier of the component within a layout block. The property can be attached to components to be laid out and has no effect when applied on layout containers.

**See also** [ItemLayout](../Ubuntu.Layouts.ItemLayout/index.html).

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
