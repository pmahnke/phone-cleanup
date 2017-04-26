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

-   AlarmModel

AlarmModel
==========

<span class="subtitle"></span>
AlarmModel holds the list of alarms defined. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

<span id="properties"></span>
Properties
----------

-   ****[count](index.html#count-prop)**** : int

<span id="methods"></span>
Methods
-------

-   Alarm ****[get](index.html#get-method)****(int *index*)
-   ****[refresh](index.html#refresh-method)****()

<span id="details"></span>
Detailed Description
--------------------

The [AlarmModel](index.html) is a simple container of [Alarm](../Ubuntu.Components.Alarm/index.html) definitions stored in the alarm collection. The data provided by the model are read only, adding, modifying or removing data is only possible through [Alarm](../Ubuntu.Components.Alarm/index.html) functions. Any modification on the alarms or any new alarm added to the collection will refresh all the model instances. This also means that the delegates visualizing the model elements will also be re-created.

Example usage:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
import Ubuntu.Components.ListItems 1.0
ListView {
    model: AlarmModel {}
    width: units.gu(80)
    height: units.gu(100)
    delegate: Subtitled {
        text: message
        subText: Qt.formatDateTime(date)
    }
}
```

The model defines the same roles as the [Alarm](../Ubuntu.Components.Alarm/index.html) properties. Note that the use of *enabled* role in delegates may be ambiguous. Therefore the model defines the additional role called *model*, which represents the [Alarm](../Ubuntu.Components.Alarm/index.html) object from the index the delegate is showing the data, so the *enabled* role can then be accessed by simply dereferencing the model i.e. model.enabled.

Example:

``` qml
ListView {
    model: AlarmModel{}
    delegate: Standard {
        text: message
        control: Switch {
            checked: model.enabled
        }
    }
}
```

The number of alarm events can be obtained from the [count](index.html#count-prop) property. To get a specific alarm event data from the model, use the [get()](index.html#get-method) function.

As the [get()](index.html#get-method) function returns the alarm object from the given index. Combined with the alarm functions the alarms can be updated in place.

Example:

``` qml
ListView {
    model: AlarmModel{
        id: alarmModel
    }
    delegate: Standard {
        text: message
        control: Switch {
            checked: model.enabled
            onCheckedChanged: {
                if (checked != model.enabled) {
                    var data = alarmModel.get(index);
                    data.enabled = checked;
                    data.save();
                }
            }
        }
    }
}
```

In this kind of "in place" updates using the *model* role would give the same result:

``` qml
ListView {
    model: AlarmModel{
        id: alarmModel
    }
    delegate: Standard {
        text: message
        control: Switch {
            checked: model.enabled
            onCheckedChanged: {
                if (checked != model.enabled) {
                    model.enabled = checked;
                    model.save();
                }
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
<td><p><span id="count-prop"></span><span class="name">count</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The number of data entries in the model.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="get-method"></span><span class="type"><a href="../Ubuntu.Components.Alarm/index.html">Alarm</a></span> <span class="name">get</span>(<span class="type">int</span> <em>index</em>)</p></td>
</tr>
</tbody>
</table>

Returns the reference of the alarm event at *index* in the model. This allows the alarm data to be modified and updated either through normal component binding or in Javascript functions.

``` cpp
Component.onCompleted: {
    var alarm = alarmModel.get(0);
    alarm.message += " updated";
    alarm.save();
}
```

This Javascript code returns the alarm properties from the first index of the model, updates its message and updates the alarm. Note that the alarm must be saved in order to have the changes visible. The follwoing code will not update the alarm in the model/collection:

``` cpp
Component.onCompleted: {
    alarmModel.get(0).message += " updated";
    alarm.message += " updated";
}
```

**Note:** The returned object is not guarantied to remain valid, it should not be used in property bindings. Also, [reset()](../Ubuntu.Components.Alarm/index.html#reset-method) should not be called either as the call will clear the alarm data from the cache.

**See also** [Alarm](../Ubuntu.Components.Alarm/index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="refresh-method"></span><span class="name">refresh</span>()</p></td>
</tr>
</tbody>
</table>

The function refreshes the model by invalidating the alarm cache. Use this function only if the refresh is absolutely required, otherwise it will cause performance problems.

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
