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
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   MouseEvent

MouseEvent
==========

<span class="subtitle"></span>
Provides information about a mouse event More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[accepted](index.html#accepted-prop)**** : bool
-   ****[button](index.html#button-prop)**** : enumeration
-   ****[buttons](index.html#buttons-prop)**** : int
-   ****[modifiers](index.html#modifiers-prop)**** : int
-   ****[wasHeld](index.html#wasHeld-prop)**** : bool
-   ****[x](index.html#x-prop)**** : int
-   ****[y](index.html#y-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

The position of the mouse can be found via the [x](index.html#x-prop) and [y](index.html#y-prop) properties. The button that caused the event is available via the [button](index.html#button-prop) property.

**See also** [MouseArea](../QtQuick.MouseArea/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="accepted-prop"></span><span class="name">accepted</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Setting *accepted* to true prevents the mouse event from being propagated to items below this item.

Generally, if the item acts on the mouse event then it should be accepted so that items lower in the stacking order do not also respond to the same event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="button-prop"></span><span class="name">button</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the button that caused the event. It can be one of:

-   Qt.LeftButton
-   Qt.RightButton
-   Qt.MiddleButton

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="buttons-prop"></span><span class="name">buttons</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the mouse buttons pressed when the event was generated. For mouse move events, this is all buttons that are pressed down. For mouse press and double click events this includes the button that caused the event. For mouse release events this excludes the button that caused the event.

It contains a bitwise combination of:

-   Qt.LeftButton
-   Qt.RightButton
-   Qt.MiddleButton

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="modifiers-prop"></span><span class="name">modifiers</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the keyboard modifier flags that existed immediately before the event occurred.

It contains a bitwise combination of:

-   Qt.NoModifier - No modifier key is pressed.
-   Qt.ShiftModifier - A Shift key on the keyboard is pressed.
-   Qt.ControlModifier - A Ctrl key on the keyboard is pressed.
-   Qt.AltModifier - An Alt key on the keyboard is pressed.
-   Qt.MetaModifier - A Meta key on the keyboard is pressed.
-   Qt.KeypadModifier - A keypad button is pressed.

For example, to react to a Shift key + Left mouse button click:

``` qml
MouseArea {
    onClicked: {
        if ((mouse.button == Qt.LeftButton) && (mouse.modifiers & Qt.ShiftModifier))
            doSomething();
    }
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="wasHeld-prop"></span><span class="name">wasHeld</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property is true if the mouse button has been held pressed longer the threshold (800ms).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="x-prop"></span><span class="name">x</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

These properties hold the coordinates of the position supplied by the mouse event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="y-prop"></span><span class="name">y</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

These properties hold the coordinates of the position supplied by the mouse event.

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
