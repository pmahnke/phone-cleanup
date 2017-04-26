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
-   [SDK 15.04.1](../index.html) ›
-   [Ubuntu.Components.ListItems](../Ubuntu.Components.ListItems/index.html) ›

<!-- -->

-   Empty

Empty
=====

<span class="subtitle"></span>
A list item with no contents. More...

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
<td><p><a href="../Ubuntu.Components.AbstractButton/index.html">AbstractButton</a></p></td>
</tr>
<tr class="odd">
<td>Inherited By:</td>
<td><p><a href="../Ubuntu.Components.ListItems.Base/index.html">Base</a>, <a href="../Ubuntu.Components.ListItems.Expandable/index.html">Expandable</a>, <a href="../Ubuntu.Components.ListItems.SingleControl/index.html">SingleControl</a>, <a href="../Ubuntu.Components.ListItems.Standard/index.html">Standard</a>, and <a href="../Ubuntu.Components.ListItems.ValueSelector/index.html">ValueSelector</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[backgroundIndicator](index.html#backgroundIndicator-prop)**** : list&lt;Item&gt;
-   ****[confirmRemoval](index.html#confirmRemoval-prop)**** : bool
-   ****[divider](index.html#divider-prop)**** : ThinDivider
-   ****[highlightWhenPressed](index.html#highlightWhenPressed-prop)**** : bool
-   ****[removable](index.html#removable-prop)**** : bool
-   ****[selected](index.html#selected-prop)**** : bool
-   ****[showDivider](index.html#showDivider-prop)**** : bool
-   ****[swipingState](index.html#swipingState-prop)**** : string
-   ****[waitingConfirmationForRemoval](index.html#waitingConfirmationForRemoval-prop)**** : bool

<span id="signals"></span>
Signals
-------

-   ****[itemRemoved](index.html#itemRemoved-signal)****()

<span id="methods"></span>
Methods
-------

-   ****[cancelItemRemoval](index.html#cancelItemRemoval-method)****()

<span id="details"></span>
Detailed Description
--------------------

**Note:** **The component is deprecated. Use [ListItem](../Ubuntu.Components.ListItem/index.html) component instead.** The Empty class can be used for generic list items containing other components such as buttons. It is selectable and can take mouse clicks. It will attempt to detect if a thin dividing line at the bottom of the item is suitable, but this behaviour can be overridden (using [showDivider](index.html#showDivider-prop)). For specific types of list items, see its subclasses.

The item will still remain in memory after being removed from the list so it is up to the application to destroy it. This can be handled by the signal [itemRemoved](index.html#itemRemoved-signal) that is fired after all animation is done.

Examples:

``` qml
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3 as ListItem
Item {
    Model {
        id: contactModel
        ListElement {
            name: "Bill Smith"
            number: "555 3264"
        }
        ListElement {
            name: "John Brown"
            number: "555 8426"
        }
    }
    ListView {
         width: 180; height: 200
         model: contactModel
         delegate: ListItem.Empty {
            height: units.gu(6)
            removable: true
            onItemRemoved: contactModel.remove(index)
            Text {
                text: name + " " + number
                anchors.centerIn: parent
            }
        }
    }
}
```

See the documentation of the derived classes of Empty for more examples.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="backgroundIndicator-prop"></span><span class="name">backgroundIndicator</span> : <span class="type">list</span>&lt;<span class="type"><a href="../../sdk-14.10/QtQuick.Item/index.html">Item</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

Defines the item background item to be showed during the item swiping

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="confirmRemoval-prop"></span><span class="name">confirmRemoval</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Defines if the item needs confirmation before removing by swiping.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="divider-prop"></span><span class="name">divider</span> : <span class="type"><a href="../Ubuntu.Components.ListItems.ThinDivider/index.html">ThinDivider</a></span></p></td>
</tr>
</tbody>
</table>

Exposes our the bottom line divider.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="highlightWhenPressed-prop"></span><span class="name">highlightWhenPressed</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Highlight the list item when it is pressed. This is used to disable the highlighting of the full list item when custom highlighting needs to be implemented (for example in [ListItem](../Ubuntu.Components.ListItem/index.html).Standard which can have a split).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removable-prop"></span><span class="name">removable</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Defines if this item can be removed or not.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selected-prop"></span><span class="name">selected</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Specifies whether the list item is selected.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="showDivider-prop"></span><span class="name">showDivider</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Set to show or hide the thin bottom divider line (drawn by the [ThinDivider](../Ubuntu.Components.ListItems.ThinDivider/index.html) component). This line is shown by default except in cases where this item is the delegate of a [ListView](../../sdk-14.10/QtQuick.ListView/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="swipingState-prop"></span><span class="qmlreadonly">read-only</span><span class="name">swipingState</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The current swiping state ("SwipingRight" or "")

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="waitingConfirmationForRemoval-prop"></span><span class="qmlreadonly">read-only</span><span class="name">waitingConfirmationForRemoval</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Defines if the item is waiting for the user interaction during the swipe to delete

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemRemoved-signal"></span><span class="name">itemRemoved</span>()</p></td>
</tr>
</tbody>
</table>

This handler is called when the item is removed from the list

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cancelItemRemoval-method"></span><span class="name">cancelItemRemoval</span>()</p></td>
</tr>
</tbody>
</table>

Cancel item romoval

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
