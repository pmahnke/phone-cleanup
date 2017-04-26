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
-   [SDK 15.04.3](../index.html) ›
-   [Ubuntu.Components.ListItems](../Ubuntu.Components.ListItems/index.html) ›

<!-- -->

-   Standard

Standard
========

<span class="subtitle"></span>
The standard list item class. It shows a basic list item with a label (text), and optionally an icon, a progression arrow, and it can have an embedded Item (control) that can be used for including Buttons, Switches etc. inside the list item. More...

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

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[control](index.html#control-prop)**** : Item
-   ****[fallbackIconName](index.html#fallbackIconName-prop)**** : string
-   ****[fallbackIconSource](index.html#fallbackIconSource-prop)**** : url
-   ****[iconFrame](index.html#iconFrame-prop)**** : bool
-   ****[progression](index.html#progression-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

**Note:** **The component is deprecated. Use [ListItem](../Ubuntu.Components.ListItem/index.html) component instead.**

[See also the Design Guidelines on List Items](http://design.ubuntu.com/apps/building-blocks/list-items).

Examples:

``` qml
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3 as ListItem
Column {
    ListItem.Standard {
        text: "Selectable standard list item"
        selected: false
        onClicked: selected = !selected
       }
    ListItem.Standard {
        text: "List item with icon"
        iconName: "compose"
    }
    ListItem.Standard {
        text: "With a progression arrow"
        progression: true
    }
    ListItem.Standard {
        text: "Control"
        control: Button {
            text: "Click me"
            width: units.gu(19)
            onClicked: print("Clicked")
        }
        progression: true
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
<td><p><span id="control-prop"></span><span class="name">control</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Item/index.html">Item</a></span></p></td>
</tr>
</tbody>
</table>

An optional control that is displayed inside the list item. The width of the control must be specified in order to determine the layout of the list item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fallbackIconName-prop"></span><span class="name">fallbackIconName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The icon shown in the list item if iconName failed to load (optional).

If both [fallbackIconSource](index.html#fallbackIconSource-prop) and fallbackIconName are defined, fallbackIconName will be ignored.

**Note:** The complete list of icons available in Ubuntu is not published yet. For now please refer to the folders where the icon themes are installed:

-   Ubuntu Touch: /usr/share/icons/suru
-   Ubuntu Desktop: /usr/share/icons/ubuntu-mono-dark

These 2 separate icon themes will be merged soon.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fallbackIconSource-prop"></span><span class="name">fallbackIconSource</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-url.html">url</a></span></p></td>
</tr>
</tbody>
</table>

The location of the icon to show in the list item if iconSource failed to load (optional).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="iconFrame-prop"></span><span class="name">iconFrame</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Show or hide the frame around the icon

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="progression-prop"></span><span class="name">progression</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Show or hide the progression symbol.

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
