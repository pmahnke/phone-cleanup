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
-   [Ubuntu.Components.Labs](../Ubuntu.Components.Labs/index.html) ›

<!-- -->

-   SplitView

SplitView
=========

<span class="subtitle"></span>
A view component with a flexible layout configuration setup. More...

|                   |                                 |
|-------------------|---------------------------------|
| Import Statement: | import Ubuntu.Components.Labs . |

<span id="properties"></span>
Properties
----------

-   ****[activeLayout](index.html#activeLayout-prop)**** : SplitViewLayout
-   ****[handleDelegate](index.html#handleDelegate-prop)**** : Component
-   ****[layouts](index.html#layouts-prop)**** : list&lt;SplitViewLayout&gt;
-   ****[spacing](index.html#spacing-prop)**** : real

<span id="attached-properties"></span>
Attached Properties
-------------------

-   ****[column](index.html#column-attached-prop)**** : int
-   ****[columnConfig](index.html#columnConfig-attached-prop)**** : ViewColumn
-   ****[view](index.html#view-attached-prop)**** : SplitView

<span id="details"></span>
Detailed Description
--------------------

The component arranges the declared child elements horizontally based on an active column configuration layout. Child elements are considered to be views, and each view is identified with a column index, specified by the [SplitView](index.html).column attached property. Views should not have width declared, because the width of each view is specified by the active layout's configuration ([ViewColumn](../Ubuntu.Components.ViewColumn/index.html)) and will overwrite the value specified by the view. On the other hand they should have a height specified, or they can be anchored to the top and bottom of the view. [SplitView](index.html) being a positioner, remember not to anchor horizontal anchor lines or anchor fill the columns.

In order for a [SplitView](index.html) to show some content it must have at least one active layout present. Views which are not configured by the active layout will be hidden. Hidden views may be resized, therefore if the content is size sensitive (i.e. the amount shown differs depending on the space available), make sure the content of your view does take this into account.

``` cpp
import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Labs 1.0
MainView {
    id: main
    width: units.gu(300)
    height: units.gu(80)
    SplitView {
        anchors.fill: parent
        layouts: [
            SplitViewLayout {
                when: main.width < units.gu(80)
                ViewColumn {
                    fillWidth: true
                }
            },
            SplitViewLayout {
                when: main.width >= units.gu(80)
                ViewColumn {
                    minimumWidth: units.gu(30)
                    maximumWidth: units.gu(100)
                    preferredWidth: units.gu(40)
                }
                ViewColumn {
                    minimumWidth: units.gu(40)
                    fillWidth: true
                }
            }
        ]
    }
    Page {
        id: column1
        height: parent.height
    }
    Page {
        id: column2
        height: parent.height
    }
}
```

The [SplitView](index.html) can be used with a Repeater in case the content of the view columns doesn't need to be preserved between layout changes. The example above with a Repeater would look as follows:

``` cpp
import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Labs 1.0
MainView {
    id: main
    width: units.gu(300)
    height: units.gu(80)
    SplitView {
        id: view
        anchors.fill: parent
        layouts: [
            SplitViewLayout {
                when: main.width < units.gu(80)
                ViewColumn {
                    fillWidth: true
                }
            },
            SplitViewLayout {
                when: main.width >= units.gu(80)
                ViewColumn {
                    minimumWidth: units.gu(30)
                    maximumWidth: units.gu(100)
                    preferredWidth: units.gu(40)
                }
                ViewColumn {
                    minimumWidth: units.gu(40)
                    fillWidth: true
                }
            }
        ]
    }
    Repeater {
        model: view.activeLayout.columns
        Page {
            height: parent.height
        }
    }
}
```

<span id="resizing"></span>
### Resizing

[SplitView](index.html) provides the ability to resize view columns. Each column has an attached handle which provides the ability to resize the columns using a mouse or touch. Columns can be resized if the spacing property is set and the column configurations allow that (see [spacing](index.html#spacing-prop) property).

<span id="attached-properties"></span>
### Attached properties

[SplitView](index.html) provides a set of attached properties to each column view. Views can in this way have access to various values of the [SplitView](index.html) and configurations.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="activeLayout-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">activeLayout</span> : <span class="type"><a href="../Ubuntu.Components.SplitViewLayout/index.html">SplitViewLayout</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the active [SplitViewLayout](../Ubuntu.Components.SplitViewLayout/index.html) instance, or null is no layout is active.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="handleDelegate-prop"></span><span class="name">handleDelegate</span> : <span class="type"><a href="../QtQml.Component/index.html">Component</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the delegate to be shown for the column resizing handle. The delegate is for pure visual, mouse and touch handling is provided by the [SplitView](index.html) component itself. The component provides a context property called *handle* which embeds the visuals. This can be used to anchor the visuals to the resize handle. The thickness of the handle is driven by the [spacing](index.html#spacing-prop) property.

``` cpp
import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Labs 1.0
MainView {
    id: main
    width: units.gu(300)
    height: units.gu(80)
    SplitView {
        anchors.fill: parent
        handleDelegate: Rectangle {
            anchors {
                fill: parent
                leftMargin: units.dp(2)
                rightMargin: units.dp(2)
                topMargin: handle.height / 2 - units.gu(3)
                bottomMargin: handle.height / 2 - units.gu(3)
            }
            color: UbuntuColors.graphite
            scale: handle.containsMouse || handle.pressed ? 1.6 : 1.0
            Behavior on scale { UbuntuNumberAnimation {} }
        }
        layouts: [
            SplitViewLayout {
                when: main.width < units.gu(80)
                ViewColumn {
                    fillWidth: true
                }
            },
            SplitViewLayout {
                when: main.width >= units.gu(80)
                ViewColumn {
                    minimumWidth: units.gu(30)
                    maximumWidth: units.gu(100)
                    preferredWidth: units.gu(40)
                }
                ViewColumn {
                    minimumWidth: units.gu(40)
                    fillWidth: true
                }
            }
        ]
    }
    Page {
        id: column1
        height: parent.height
    }
    Page {
        id: column2
        height: parent.height
    }
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="layouts-prop"></span><span class="name">layouts</span> : <span class="type">list</span>&lt;<span class="type"><a href="../Ubuntu.Components.SplitViewLayout/index.html">SplitViewLayout</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

The property holds the layout configurations declared for the given [SplitView](index.html).

**See also** [SplitViewLayout](../Ubuntu.Components.SplitViewLayout/index.html).

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

Spacing between view columns. A value bigger than 0 enables resizing of columns with a [minimumWidth](../Ubuntu.Components.ViewColumn/index.html#minimumWidth-prop) lower than [maximumWidth](../Ubuntu.Components.ViewColumn/index.html#maximumWidth-prop). If spacing is 0 the columns cannot be resized. Defaults to 4 device pixels.

Attached Property Documentation
-------------------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="column-attached-prop"></span><span class="name">SplitView.column</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The property holds the column index the view is configured to.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="columnConfig-attached-prop"></span><span class="name">SplitView.columnConfig</span> : <span class="type"><a href="../Ubuntu.Components.ViewColumn/index.html">ViewColumn</a></span></p></td>
</tr>
</tbody>
</table>

The attached property holds the active layout's column configuration data. The value is null if there is no active configuration value provided for the column.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="view-attached-prop"></span><span class="name">SplitView.view</span> : <span class="type"><a href="index.html">SplitView</a></span></p></td>
</tr>
</tbody>
</table>

Contains the [SplitView](index.html) instance of the column.

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
