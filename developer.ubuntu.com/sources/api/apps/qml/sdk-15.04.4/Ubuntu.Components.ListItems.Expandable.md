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
-   [Ubuntu.Components.ListItems](../Ubuntu.Components.ListItems/index.html) ›

<!-- -->

-   Expandable

Expandable
==========

<span class="subtitle"></span>
An expandable list item with no contents. The Expandable class can be used for generic list items containing other components such as buttons. It subclasses Empty and thus brings all that functionality, but additionally provides means to expand and collapse the item. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components.ListItems 1.0</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="../Ubuntu.Components.ListItems.Empty/index.html">Empty</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[children](index.html#children-prop)**** : QtObject
-   ****[collapseOnClick](index.html#collapseOnClick-prop)**** : bool
-   ****[collapsedHeight](index.html#collapsedHeight-prop)**** : real
-   ****[expanded](index.html#expanded-prop)**** : bool
-   ****[expandedHeight](index.html#expandedHeight-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

When used together with an [UbuntuListView](../Ubuntu.Components.UbuntuListView/index.html) or [ExpandablesColumn](../Ubuntu.Components.ListItems.ExpandablesColumn/index.html) it can coordinate with other items in the list to make sure it is scrolled while expanding to be fully visible in the view. Additionally it is made sure that only one Expandable item is expanded at a time and it is collapsed when the user clicks outside the item.

You can set [expanded](index.html#expanded-prop) to true/false to expand/collapse the item.

Examples:

``` qml
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3 as ListItem
Item {
    ListModel {
        id: listModel
    }
    ListItem.UbuntuListView {
        anchors { left: parent.left; right: parent.right }
        height: units.gu(24)
        model: listModel
        delegate: ListItem.Expandable {
            id: expandingItem
            expandedHeight: units.gu(30)
            onClicked: {
                expanded = true;
            }
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
<td><p><span id="children-prop"></span><span class="qmldefault">default</span><span class="name">children</span> : <span class="type"><a href="../../sdk-14.10/QtQml.QtObject/index.html">QtObject</a></span></p></td>
</tr>
</tbody>
</table>

Reparent any content to inside the Flickable

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="collapseOnClick-prop"></span><span class="name">collapseOnClick</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If set to true, the item will collapse again when the user clicks somewhere in the always visible (when collapsed) area.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="collapsedHeight-prop"></span><span class="name">collapsedHeight</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The collapsed (normal) height of the item. Defaults to the standard height for list items.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="expanded-prop"></span><span class="name">expanded</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Reflects the expanded state. Set this to true/false to expand/collapse the item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="expandedHeight-prop"></span><span class="name">expandedHeight</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The expanded height of the item's content. Defaults to the same as [collapsedHeight](index.html#collapsedHeight-prop) which disables the expanding feature. In order for the item to be expandable, set this to the expanded size. Note that the actual expanded size can be smaller if there is not enough space in the containing list. In that case the item becomes flickable automatically.

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
