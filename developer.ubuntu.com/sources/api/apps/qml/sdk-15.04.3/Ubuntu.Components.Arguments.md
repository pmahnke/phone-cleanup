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

-   Arguments

Arguments
=========

<span class="subtitle"></span>
The Arguments class provides a way to declare what command line parameters are expected by the application. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

<span id="properties"></span>
Properties
----------

-   ****[arguments](index.html#arguments-prop)**** : list&lt;Argument&gt;
-   ****[defaultArgument](index.html#defaultArgument-prop)**** : Argument
-   ****[error](index.html#error-prop)**** : bool
-   ****[errorMessage](index.html#errorMessage-prop)**** : string
-   ****[values](index.html#values-prop)**** : Object

<span id="methods"></span>
Methods
-------

-   void ****[printUsage](index.html#printUsage-method)****()
-   void ****[quitWithError](index.html#quitWithError-method)****(string *errorMessage*)

<span id="details"></span>
Detailed Description
--------------------

Example of use:

``` qml
Arguments {
    id: args
    defaultArgument.help: "Expects URL of the media to play."
    defaultArgument.valueNames: ["URL"]
    Argument {
        name: "fullscreen"
        help: "whether or not the media will be played fullscreen"
        required: false
    }
    Argument {
        name: "volume"
        help: "level to which to set the volume"
        required: false
        valueNames: ["VOLUME_LEVEL"]
    }
}
```

The code above ensures that at least one argument is passed on the command line which will then be available in QML via the [defaultArgument](index.html#defaultArgument-prop) property. Optionally two other arguments can be passed:

*--fullscreen* that will be exposed as a boolean property: [values](index.html#values-prop).fullscreen

*--volume* that will be exposed as a string property: [values](index.html#values-prop).volume

``` qml
Item {
    Label {
        text: "volume = " + args.values.volume
    }
    Label {
        text: "fullscreen = " + args.values.fullscreen
    }
    Label {
        text: "URL = " + args.defaultArgument.at(0)
    }
}
```

If the application is launched with the incorrect arguments or with the *--usage* argument an help will be outputted on the command line and the application will exit:

``` cpp
Usage: application [--fullscreen] [--volume=VOLUME_LEVEL] URL
Options:
--fullscreen         whether or not the media will be played fullscreen
--volume=VOLUME_LEVE level to which to set the volume
Expects URL of the media to play.
```

**See also** [Argument](../Ubuntu.Components.Argument/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="arguments-prop"></span><span class="qmlreadonly">read-only</span><span class="qmldefault">default</span><span class="name">arguments</span> : <span class="type">list</span>&lt;<span class="type"><a href="../Ubuntu.Components.Argument/index.html">Argument</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

List of command line [arguments](../Ubuntu.Components.Argument/index.html) that are expected by the application.

See detailed description above for an example on how to use it.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="defaultArgument-prop"></span><span class="name">defaultArgument</span> : <span class="type"><a href="../Ubuntu.Components.Argument/index.html">Argument</a></span></p></td>
</tr>
</tbody>
</table>

The default argument corresponds to the values passed on the command line without any name.

For example in:

``` cpp
./application --volume=42 http://myaddress
```

*http://myaddress* is the first value of the default argument.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="error-prop"></span><span class="qmlreadonly">read-only</span><span class="name">error</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether or not the command line arguments passed to the application correspond to the expected arguments.

Also set when calling [quitWithError](index.html#quitWithError-method)

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="errorMessage-prop"></span><span class="qmlreadonly">read-only</span><span class="name">errorMessage</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Error message describing how the command line arguments passed to the application failed to correspond to the expected arguments.

Also set when calling [quitWithError](index.html#quitWithError-method)

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="values-prop"></span><span class="qmlreadonly">read-only</span><span class="name">values</span> : <span class="type">Object</span></p></td>
</tr>
</tbody>
</table>

Object of which properties have the values of the command line arguments.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="printUsage-method"></span><span class="type">void</span> <span class="name">printUsage</span>()</p></td>
</tr>
</tbody>
</table>

Outputs help to the console on how to pass arguments to the application.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="quitWithError-method"></span><span class="type">void</span> <span class="name">quitWithError</span>(<span class="type">string</span> <em>errorMessage</em>)</p></td>
</tr>
</tbody>
</table>

Exits the application outputting *errorMessage* to the console.

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
