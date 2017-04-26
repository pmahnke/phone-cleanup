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
-   [Ubuntu.Components](../Ubuntu.Components/index.html) ›

<!-- -->

-   AbstractButton

AbstractButton
==============

<span class="subtitle"></span>
The AbstractButton class defines the behavior of the button. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components 1.3</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="../Ubuntu.Components.ActionItem/index.html">ActionItem</a></p></td>
</tr>
<tr class="odd">
<td>Inherited By:</td>
<td><p><a href="../Ubuntu.Components.Button/index.html">Button</a>, <a href="../Ubuntu.Components.CheckBox/index.html">CheckBox</a>, <a href="../Ubuntu.Components.ComboButton/index.html">ComboButton</a>, <a href="../Ubuntu.Components.ListItems.Empty/index.html">Empty</a>, and <a href="../Ubuntu.Components.Pickers.PickerDelegate/index.html">PickerDelegate</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[hovered](index.html#hovered-prop)**** : bool
-   ****[pressed](index.html#pressed-prop)**** : bool
-   ****[sensingMargins](index.html#sensingMargins-prop)****
    -   ****[sensingMargins.left](index.html#sensingMargins.left-prop)**** : real
    -   ****[sensingMargins.right](index.html#sensingMargins.right-prop)**** : real
    -   ****[sensingMargins.top](index.html#sensingMargins.top-prop)**** : real
    -   ****[sensingMargins.bottom](index.html#sensingMargins.bottom-prop)**** : real
    -   ****[sensingMargins.all](index.html#sensingMargins.all-prop)**** : real

<span id="signals"></span>
Signals
-------

-   ****[clicked](index.html#clicked-signal)****()
-   ****[pressAndHold](index.html#pressAndHold-signal)****()

<span id="details"></span>
Detailed Description
--------------------

This class defines the behavior of the button. All components deriving from this class support haptic feedback out of the box.

If an action is specified, the button's clicked signal will trigger the action. Subclasses of [AbstractButton](index.html) can use other properties of action (for example the text and iconName).

<span id="sensing-area"></span>
### Sensing area

It has been proven that, on touch devices in order to properly aim an active component a minimum of 8x8 millimeters (i.e. 4x4 grid units) area has to be provided. However not all the visuals are of that size, as Icons for example are defaulted to be 2x2 grid units, but a component containing a single Icon still has to be able to capture the press events. Therefore [AbstractButton](index.html) makes sure this rule of 4x4 grid units for the sensing area is provided. In addition it exposes the [sensingMargins](index.html#sensingMargins-prop) property which extends the component's sensing area in all the directions, so other use cases when the sensing area needs to be extended outside of the component's area, or restricted on a given area of the component can be implemented. The following example extends the sensing area on the left, top and bottom with 1 grid units, and on the right with 10 grid units.

``` qml
AbstractButton {
    width: units.gu(2)
    height: units.gu(2)
    sensingMargins {
        left: units.gu(1)
        top: units.gu(1)
        bottom: units.gu(1)
        right: units.gu(10)
    }
}
```

**Note:** Do not set clipping for the component as that will restrict the sensing area to be available on the visual area only.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hovered-prop"></span><span class="name">hovered</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

True if the mouse cursor hovers over the button's mouse area.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pressed-prop"></span><span class="name">pressed</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

True if the user presses a mouse button in the button's mouse area.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="sensingMargins-prop"></span><strong>sensingMargins group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="sensingMargins.left-prop"></span><span class="name">sensingMargins.left</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="sensingMargins.right-prop"></span><span class="name">sensingMargins.right</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="sensingMargins.top-prop"></span><span class="name">sensingMargins.top</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="sensingMargins.bottom-prop"></span><span class="name">sensingMargins.bottom</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="sensingMargins.all-prop"></span><span class="name">sensingMargins.all</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The property group specifies the margins extending the visual area where the touch and mouse events are sensed. Positive values mean the area will be extended on the specified direction outside of the visual area, negative values mean the sensing will fall under the component's visual border. All values default to 0.

**Note:** If the visual area and the sensing margins are not reaching the 4x4 grid units limit, the component will fall back to these minimum limits. For example, extending a 2x2 grid unit visual component into 5x4 grid units sensing area would look as follows:

``` qml
AbstractButton {
    width: units.gu(2)
    height: units.gu(2)
    Icon {
        name: "settings"
    }
    sensingArea {
        // no need to set the vertical direction as the minimum of
        // 4 grid units will be taken automatically
        leftMargin: units.gu(1)
        // we only have to add 2 grid units as the width + left margin
        // already gives us 3 grid units out of 5
        rightMargin: units.gu(2)
    }
}
```

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="clicked-signal"></span><span class="name">clicked</span>()</p></td>
</tr>
</tbody>
</table>

This handler is called when there is a mouse click on the button and the button is not disabled. If [action](../Ubuntu.Components.ActionItem/index.html#action-prop) is defined, the action will be triggered.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pressAndHold-signal"></span><span class="name">pressAndHold</span>()</p></td>
</tr>
</tbody>
</table>

This handler is called when there is a long press.

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
