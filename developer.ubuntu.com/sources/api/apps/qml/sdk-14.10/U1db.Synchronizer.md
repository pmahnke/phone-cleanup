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
-   [U1db](../U1db/index.html) ›

<!-- -->

-   Synchronizer

Synchronizer
============

<span class="subtitle"></span>
Synchronizer handles synchronizing between two databases. More...

|                   |                                                                                             |
|-------------------|---------------------------------------------------------------------------------------------|
| Import Statement: | import U1db .                                                                               |
| Instantiates:     | [](index.html)[Synchronizer](../../../../scopes/cpp/sdk-14.10/U1db.Synchronizer/index.html) |

<span id="properties"></span>
Properties
----------

-   ****[resolve\_to\_source](index.html#resolve_to_source-prop)**** : bool
-   ****[source](index.html#source-prop)**** : Database
-   ****[sync\_output](index.html#sync_output-prop)**** : list&lt;Variant&gt;
-   ****[synchronize](index.html#synchronize-prop)**** : bool
-   ****[targets](index.html#targets-prop)**** : Variant` (preliminary)`

<span id="details"></span>
Detailed Description
--------------------

``` qml
Synchronizer {
    id: mySync
    synchronize: false
    source: myDatabase
    targets: [ {
        remote: true,
        ip: "127.0.0.1",
        port: 7777,
        name: "example1.u1db",
        resolve_to_source: true
    } ]
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
<td><p><span id="resolve_to_source-prop"></span><span class="name">resolve_to_source</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If true, conflicts during sync will be resolved in favor of the content from the source database.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="source-prop"></span><span class="name">source</span> : <span class="type"><a href="../U1db.Database/index.html">Database</a></span></p></td>
</tr>
</tbody>
</table>

Returns the source [Database](../U1db.Database/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sync_output-prop"></span><span class="name">sync_output</span> : <span class="type">list</span>&lt;<span class="type">Variant</span>&gt;</p></td>
</tr>
</tbody>
</table>

Returns the output from a sync session. The list should contain numerous QVariantMaps, each of which will have various meta-data with informative information about what happened in the background of the session.

In some cases the information will be about errors or warnings, and in other cases simple log messages. Also included would noramlly be associated properties, elements and other data.

The information can be used in any number of ways, such as on screen within an app, testing, console output, logs and more. This is designed to be flexible enough that the app developer can decide themselves how to best use the data.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="synchronize-prop"></span><span class="name">synchronize</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

FIXME

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="targets-prop"></span><span class="name">targets</span> : <span class="type">Variant</span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

Sets meta-data for databases to be used during a synchronization session.

The QVariant is a list that can contain definitions for more than one database to be used as a target. For example:

``` cpp
targets: [{remote:true},
 {remote:true,
 ip:"127.0.0.1",
 port: 7777,
 name:"example1.u1db",
 resolve_to_source:true},
 {remote:"OK"}]
```

The above example defines three databases. Two of the three definitions in the example are invalid, the first ({remote:true}) and the third ({remote:"OK"}), because they are incomplete.

The second definition is a fully defined and valid definition for a local to remote synchronization of two databases:

``` cpp
{remote:true,
 ip:"127.0.0.1",
 port: 7777,
 name:"example1.u1db",
 resolve_to_source:true}
```

'remote' determines whether the database is on disk or located on a server. 'ip' and 'port' for a server are used only when 'remote' is set to true 'name' is the name of the local (on disk) or remote database. Note: If 'remote' is false this is the relative/absolute file location. '[resolve\_to\_source](index.html#resolve_to_source-prop)' determines whether to resolve conflicts automatically in favor of the source (aka local) database's values or the target's.

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
