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
-   [Ubuntu.Layouts](../Ubuntu.Layouts/index.html) ›

<!-- -->

-   ConditionalLayout

ConditionalLayout
=================

<span class="subtitle"></span>
ConditionalLayout defines the layout of a given form factor. More...

|                   |                           |
|-------------------|---------------------------|
| Import Statement: | import Ubuntu.Layouts 1.0 |

<span id="properties"></span>
Properties
----------

-   ****[layout](index.html#layout-prop)**** : Component
-   ****[name](index.html#name-prop)**** : string
-   ****[when](index.html#when-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

[ConditionalLayout](index.html) is a non-visual element defining the actual layout to be applied when a given condition evaluates to true. The condition can be any valid boolean JavaScript expression.

As Layouts can be nested, it is recommended to choose properties of the Layouts item, often width and height, when defining the condition. Other elements like Screen orientation can also be used to define the layout activation condition.

There must be only a single component defined in the [ConditionalLayout](index.html) which will be instantiated upon activation.

Each conditional layout must be named with a string, which identifies the layout when activated.

``` qml
Layouts {
    id: layouts
    width: units.gu(40)
    height: units.gu(40)
    layouts: [
        ConditionalLayout {
            name: "flow"
            when: layouts.width > units.gu(60)
            Flow {
                anchors.fill: parent
                spacing: units.dp(3)
                flow: Flow.LeftToRight
                ItemLayout {
                    item: "item1"
                    width: units.gu(30)
                    height: units.gu(20)
                }
                ItemLayout {
                    item: "item2"
                    width: units.gu(30)
                    height: units.gu(20)
                }
                ItemLayout {
                    item: "item3"
                    width: units.gu(30)
                    height: units.gu(20)
                }
            }
        }
    ]
    Column {
        spacing: units.dp(2)
        Button {
            text: "Button #1"
            Layouts.item: "item1"
        }
        Button {
            text: "Button #2"
            Layouts.item: "item2"
        }
        Button {
            text: "Button #3"
            Layouts.item: "item3"
        }
    }
}
```

All Items to be managed by the Layouts engine must identify themselves by setting the Layouts.item attached property to a unique name (string). These unique names are then used by the [ItemLayout](../Ubuntu.Layouts.ItemLayout/index.html) component, so can apply the new layout to the correct Item.

**See also** [ItemLayout](../Ubuntu.Layouts.ItemLayout/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="layout-prop"></span><span class="qmldefault">default</span><span class="name">layout</span> : <span class="type"><a href="../../sdk-14.10/QtQml.Component/index.html">Component</a></span></p></td>
</tr>
</tbody>
</table>

Default property holding the definition component of the layout. The component will be instantiated once the condition evaluates to true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property defines the name of the layout. Within the definition of Layouts, these names should be unique for each layout.

**See also** [Layouts](../Ubuntu.Layouts.Layouts/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="when-prop"></span><span class="name">when</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property defines the condition that when evaluating to true, chooses this [ConditionalLayout](index.html) to become the active layout. When two ConditionalLayouts **when** condition is evaluated to true, the first one declared in the layouts list is chosen.

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
