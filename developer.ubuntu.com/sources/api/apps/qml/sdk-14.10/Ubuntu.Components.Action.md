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
-   [SDK 14.10](../index.html) ›
-   [Ubuntu.Components](../Ubuntu.Components/index.html) ›

<!-- -->

-   Action

Action
======

<span class="subtitle"></span>
Describe an action that can be re-used and shared between different components. More...

|                   |                                |
|-------------------|--------------------------------|
| Import Statement: | `import Ubuntu.Components 1.1` |

<span id="properties"></span>
Properties
----------

-   ****[description](index.html#description-prop)**** : string
-   ****[enabled](index.html#enabled-prop)**** : bool
-   ****[iconName](index.html#iconName-prop)**** : string
-   ****[iconSource](index.html#iconSource-prop)**** : url
-   ****[keywords](index.html#keywords-prop)**** : string
-   ****[name](index.html#name-prop)**** : string
-   ****[parameterType](index.html#parameterType-prop)**** : enum
-   ****[text](index.html#text-prop)**** : string
-   ****[visible](index.html#visible-prop)**** : bool

<span id="signals"></span>
Signals
-------

-   ****[triggered](index.html#triggered-signal)****(var *value*)

<span id="methods"></span>
Methods
-------

-   ****[trigger](index.html#trigger-method)****(var *value*)

<span id="details"></span>
Detailed Description
--------------------

Actions can be used to define a specific task to be executed in different contexts using different components. The same action can be assigned to a [Button](../Ubuntu.Components.Button/index.html), a [Checkbox](../Ubuntu.Components.CheckBox/index.html) or even a [TextField](../Ubuntu.Components.TextField/index.html). The [triggered](index.html#triggered-signal) signal is emitted depending on the component. [Button](../Ubuntu.Components.Button/index.html) and [CheckBox](../Ubuntu.Components.CheckBox/index.html) for instance emits the signal when clicked, whereas [TextField](../Ubuntu.Components.TextField/index.html) emits the signal when its accepted signal is triggered.

If the [parameterType](index.html#parameterType-prop) property is set, the Action is said to be parameterised. This means that when it is bound to a menu or button, the action expects a typed input parameter. The type affects the allowed value of the QVariant that must be passed to the [trigger](index.html#trigger-method) and [triggered](index.html#triggered-signal).

``` qml
Action {
    id: action
    parameterType: Action.Integer
    text: "Int value"
    onTriggered: {
        // the value will be undefined
        console.log("value is", value);
    }
    Component.onCompleted: trigger("Hello World!")
}
```

When an Action is assigned to a component, the component takes the values from the action itself. Therefore assigning the action to a Button is enough to set up the label and the icon to be shown by the button.

``` cpp
Action {
    id: stock
    iconName: "call"
    text: "Call"
}
Button {
    // this binding will set the Button's text, iconName and
    // iconSource properties.
    action: stock
}
```

Actions are used to populate different Popovers like [ActionSelectionPopover](../Ubuntu.Components.Popups.ActionSelectionPopover/index.html) as well as to define actions for pages, or when defining options in `ListItemOptions`.

Examples: See [Page](../Ubuntu.Components.Page/index.html)

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="description-prop"></span><span class="name">description</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td>
</tr>
</tbody>
</table>

User visible secondary description for the action. Description is more verbose than the [text](../QtQuick.qtquick-text-example/index.html) and should describe the Action with couple of words.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="enabled-prop"></span><span class="name">enabled</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td>
</tr>
</tbody>
</table>

If set to false the action can not be triggered. Components visualizing the action migth either hide the action or make it insensitive. However visibility can be controlled separately using the [visible](index.html#visible-prop) property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="iconName-prop"></span><span class="name">iconName</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td>
</tr>
</tbody>
</table>

The icon associated with the action. If both iconName and [iconSource](index.html#iconSource-prop) are defined, iconName will be ignored by the components.

**Note:** The complete list of icons available in Ubuntu is not published yet. For now please refer to the folder where the icon theme is installed:

-   Ubuntu Touch: /usr/share/icons/suru

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="iconSource-prop"></span><span class="name">iconSource</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-url.html">url</a></span></p></td>
</tr>
</tbody>
</table>

This is a URL to any image file. In order to use an icon from the Ubuntu theme, use the [iconName](index.html#iconName-prop) property instead.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="keywords-prop"></span><span class="name">keywords</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td>
</tr>
</tbody>
</table>

Additional user visible keywords for the action. The format of the keywords string is "Keyword 1;Keyword 2;Keyword 3" to allow translators to define different number of keywords per language. The keywords are separated by ; and they may contain spaces.

``` qml
Action {
    text: i18n.tr("Crop")
    description: i18n.tr("Crop the image")
    keywords: i18n.tr("Trim;Cut")
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td>
</tr>
</tbody>
</table>

The name of the action. By default an action gets it's name generated automatically if not overridden with later. If name is set to "" then the action restores it's autogenerated name. The name is not user visible.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="parameterType-prop"></span><span class="name">parameterType</span> : <span class="type">enum</span></p></td>
</tr>
</tbody>
</table>

Type of the parameter passed to [trigger](index.html#trigger-method) and [triggered](index.html#triggered-signal). Type is an enumeration:

-   **Action.None**: No paramater. (default)
-   **Action.String**: String parameter.
-   **Action.Integer**: Integer parameter.
-   **Action.Bool**: Boolean parameter.
-   **Action.Real**: Single precision floating point parameter.
-   **Action.Object**: The parameter is an object.

``` qml
Action {
    id: action
    parameterType: Action.String
    onTriggered: {
        // value arguments now contain strings
        console.log(value);
    }
    Component.onCompleted: action.trigger("Hello World")
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="text-prop"></span><span class="name">text</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-string.html">string</a></span></p></td>
</tr>
</tbody>
</table>

The user visible primary label of the action.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="visible-prop"></span><span class="name">visible</span> : <span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-bool.html">bool</a></span></p></td>
</tr>
</tbody>
</table>

Specifies whether the action is visible to the user. Defaults to true.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="triggered-signal"></span><span class="name">triggered</span>(<span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-var.html">var</a></span> <em>value</em>)</p></td>
</tr>
</tbody>
</table>

Signal called when the action is triggered. The user visible primary label of the action when emitted by components. Custom implementations must make sure this rule is followed, therefore instead of emitting the signal the [trigger](index.html#trigger-method) function should be called.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="trigger-method"></span><span class="name">trigger</span>(<span class="type"><a href="http://qt-project.org/doc/qt-5.3/qml-var.html">var</a></span> <em>value</em>)</p></td>
</tr>
</tbody>
</table>

Checks the `value` against the action [parameterType](index.html#parameterType-prop) and triggers the action. If [parameterType](index.html#parameterType-prop) is `Action.None`, it will trigger as

``` cpp
action.trigger()
```

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
