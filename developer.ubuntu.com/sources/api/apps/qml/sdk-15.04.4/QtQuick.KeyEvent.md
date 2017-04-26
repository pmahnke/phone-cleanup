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
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   KeyEvent

KeyEvent
========

<span class="subtitle"></span>
Provides information about a key event More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[accepted](index.html#accepted-prop)**** : bool
-   ****[count](index.html#count-prop)**** : int
-   ****[isAutoRepeat](index.html#isAutoRepeat-prop)**** : bool
-   ****[key](index.html#key-prop)**** : int
-   ****[modifiers](index.html#modifiers-prop)**** : int
-   ****[nativeScanCode](index.html#nativeScanCode-prop)**** : quint32
-   ****[text](index.html#text-prop)**** : string

<span id="methods"></span>
Methods
-------

-   bool ****[matches](index.html#matches-method)****(StandardKey *key*)

<span id="details"></span>
Detailed Description
--------------------

For example, the following changes the Item's state property when the Enter key is pressed:

``` qml
Item {
    focus: true
    Keys.onPressed: { if (event.key == Qt.Key_Enter) state = 'ShowDetails'; }
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
<td><p><span id="accepted-prop"></span><span class="name">accepted</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Setting *accepted* to true prevents the key event from being propagated to the item's parent.

Generally, if the item acts on the key event then it should be accepted so that ancestor items do not also respond to the same event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="count-prop"></span><span class="name">count</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the number of keys involved in this event. If [KeyEvent::text](index.html#text-prop) is not empty, this is simply the length of the string.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isAutoRepeat-prop"></span><span class="name">isAutoRepeat</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether this event comes from an auto-repeating key.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="key-prop"></span><span class="name">key</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the code of the key that was pressed or released.

See Qt.Key for the list of keyboard codes. These codes are independent of the underlying window system. Note that this function does not distinguish between capital and non-capital letters; use the [text](index.html#text-prop) property for this purpose.

A value of either 0 or Qt.Key\_Unknown means that the event is not the result of a known key; for example, it may be the result of a compose sequence, a keyboard macro, or due to key event compression.

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

For example, to react to a Shift key + Enter key combination:

``` qml
Item {
    focus: true
    Keys.onPressed: {
        if ((event.key == Qt.Key_Enter) && (event.modifiers & Qt.ShiftModifier))
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
<td><p><span id="nativeScanCode-prop"></span><span class="name">nativeScanCode</span> : <span class="type">quint32</span></p></td>
</tr>
</tbody>
</table>

This property contains the native scan code of the key that was pressed. It is passed through from QKeyEvent unchanged.

**See also** QKeyEvent::nativeScanCode().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="text-prop"></span><span class="name">text</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the Unicode text that the key generated. The text returned can be an empty string in cases where modifier keys, such as Shift, Control, Alt, and Meta, are being pressed or released. In such cases `key` will contain a valid value

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="matches-method"></span><span class="type">bool</span> <span class="name">matches</span>(<span class="type">StandardKey</span> <em>key</em>)</p></td>
</tr>
</tbody>
</table>

Returns `true` if the key event matches the given standard *key*; otherwise returns `false`.

``` qml
Item {
    focus: true
    Keys.onPressed: {
        if (event.matches(StandardKey.Undo))
            myModel.undo();
        else if (event.matches(StandardKey.Redo))
            myModel.redo();
    }
}
```

This QML method was introduced in Qt 5.2.

**See also** QKeySequence::StandardKey.

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
