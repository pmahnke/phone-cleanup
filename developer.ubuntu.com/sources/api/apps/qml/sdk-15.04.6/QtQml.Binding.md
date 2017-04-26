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
-   [QtQml](../QtQml/index.html) ›

<!-- -->

-   Binding

Binding
=======

<span class="subtitle"></span>
Enables the arbitrary creation of property bindings More...

|                   |                  |
|-------------------|------------------|
| Import Statement: | import QtQml 2.2 |

<span id="properties"></span>
Properties
----------

-   ****[property](index.html#property-prop)**** : string
-   ****[target](index.html#target-prop)**** : Object
-   ****[value](index.html#value-prop)**** : any
-   ****[when](index.html#when-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

<span id="binding-to-an-inaccessible-property"></span>
Binding to an Inaccessible Property
-----------------------------------

Sometimes it is necessary to bind to a property of an object that wasn't directly instantiated by QML - generally a property of a class exported to QML by C++. In these cases, regular property binding doesn't work. Binding allows you to bind any value to any property.

For example, imagine a C++ application that maps an "app.enteredText" property into QML. You could use Binding to update the enteredText property like this.

``` cpp
TextEdit { id: myTextField; text: "Please type here..." }
Binding { target: app; property: "enteredText"; value: myTextField.text }
```

Whenever the text in the TextEdit is updated, the C++ property will be updated also.

<span id="single-branch-conditional-binding"></span>
"Single-branch" conditional binding
-----------------------------------

In some circumstances you may want to control the value of a property only when a certain condition is true (and relinquish control in all other circumstances). This often isn't possible to accomplish with a direct binding, as you need to supply values for all possible branches.

``` cpp
// produces warning: "Unable to assign [undefined] to double value"
value: if (mouse.pressed) mouse.mouseX
```

The above example will produce a warning whenever we release the mouse, as the value of the binding is undefined when the mouse isn't pressed. We can use the Binding type to rewrite the above code and avoid the warning.

``` cpp
Binding on value {
    when: mouse.pressed
    value: mouse.mouseX
}
```

The Binding type will also restore any previously set direct bindings on the property. In that sense, it functions much like a simplified State.

``` qml
// this is equivalent to the above Binding
State {
    name: "pressed"
    when: mouse.pressed
    PropertyChanges {
        target: obj
        value: mouse.mouseX
    }
}
```

If the binding target or binding property is changed, the bound value is immediately pushed onto the new target.

**See also** [Qt QML](../QtQml.qtqml-index/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="property-prop"></span><span class="name">property</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The property to be updated.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="target-prop"></span><span class="name">target</span> : <span class="type">Object</span></p></td>
</tr>
</tbody>
</table>

The object to be updated.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="value-prop"></span><span class="name">value</span> : <span class="type">any</span></p></td>
</tr>
</tbody>
</table>

The value to be set on the target object and property. This can be a constant (which isn't very useful), or a bound expression.

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

This property holds when the binding is active. This should be set to an expression that evaluates to true when you want the binding to be active.

``` cpp
Binding {
    target: contactName; property: 'text'
    value: name; when: list.ListView.isCurrentItem
}
```

When the binding becomes inactive again, any direct bindings that were previously set on the property will be restored.

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
