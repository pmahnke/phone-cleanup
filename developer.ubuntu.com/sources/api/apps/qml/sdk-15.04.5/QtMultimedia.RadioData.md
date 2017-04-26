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
-   [QtMultimedia](../QtMultimedia/index.html) ›

<!-- -->

-   RadioData

RadioData
=========

<span class="subtitle"></span>
Access RDS data from a QML application. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | import QtMultimedia 5.4 |

<span id="properties"></span>
Properties
----------

-   ****[alternativeFrequenciesEnabled](index.html#alternativeFrequenciesEnabled-prop)**** : bool
-   ****[availability](index.html#availability-prop)**** : enumeration
-   ****[programType](index.html#programType-prop)**** : enumeration
-   ****[programTypeName](index.html#programTypeName-prop)**** : string
-   ****[radioText](index.html#radioText-prop)**** : string
-   ****[stationId](index.html#stationId-prop)**** : string
-   ****[stationName](index.html#stationName-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

This type is part of the **QtMultimedia 5.0** module.

`RadioData` is your gateway to all the data available through RDS. RDS is the Radio Data System which allows radio stations to broadcast information like the [stationId](index.html#stationId-prop), [programType](index.html#programType-prop), [programTypeName](index.html#programTypeName-prop), [stationName](index.html#stationName-prop), and [radioText](index.html#radioText-prop). This information can be read from the `RadioData`. It also allows you to set whether the radio should tune to alternative frequencies if the current signal strength falls too much.

``` qml
import QtQuick 2.0
import QtMultimedia 5.0
Rectangle {
    width: 480
    height: 320
    Radio {
        id: radio
        band: Radio.FM
    }
    Column {
        Text {
            text: radio.radioData.stationName
        }
        Text {
            text: radio.radioData.programTypeName
        }
        Text {
            text: radio.radioData.radioText
        }
    }
}
```

You use `RadioData` together with a [Radio](../QtMultimedia.Radio/index.html), either by accessing the `radioData` property of the Radio, or creating a separate [RadioData](index.html). The properties of the [RadioData](index.html) type will reflect the information broadcast by the radio station the Radio is currently tuned to.

**See also** [Radio Overview](../QtMultimedia.radiooverview/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="alternativeFrequenciesEnabled-prop"></span><span class="name">alternativeFrequenciesEnabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property allows you to specify whether the radio should try and tune to alternative frequencies if the signal strength of the current station becomes too weak. The alternative frequencies are emitted over RDS by the radio station, and the tuning happens automatically.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="availability-prop"></span><span class="name">availability</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Returns the availability state of the radio data interface.

This is one of:

| Value           | Description                                                                                                           |
|-----------------|-----------------------------------------------------------------------------------------------------------------------|
| Available       | The radio data interface is available to use                                                                          |
| Busy            | The radio data interface is usually available to use, but is currently busy.                                          |
| Unavailable     | The radio data interface is not available to use (there may be no radio hardware)                                     |
| ResourceMissing | There is one or more resources missing, so the radio cannot be used. It may be possible to try again at a later time. |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="programType-prop"></span><span class="name">programType</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the type of the currently playing program as transmitted by the radio station. The value can be any one of the values defined in the table below.

| Value               |
|---------------------|
| Undefined           |
| News                |
| CurrentAffairs      |
| Information         |
| Sport               |
| Education           |
| Drama               |
| Culture             |
| Science             |
| Varied              |
| PopMusic            |
| RockMusic           |
| EasyListening       |
| LightClassical      |
| SeriousClassical    |
| OtherMusic          |
| Weather             |
| Finance             |
| ChildrensProgrammes |
| SocialAffairs       |
| Religion            |
| PhoneIn             |
| Travel              |
| Leisure             |
| JazzMusic           |
| CountryMusic        |
| NationalMusic       |
| OldiesMusic         |
| FolkMusic           |
| Documentary         |
| AlarmTest           |
| Alarm               |
| Talk                |
| ClassicRock         |
| AdultHits           |
| SoftRock            |
| Top40               |
| Soft                |
| Nostalgia           |
| Classical           |
| RhythmAndBlues      |
| SoftRhythmAndBlues  |
| Language            |
| ReligiousMusic      |
| ReligiousTalk       |
| Personality         |
| Public              |
| College             |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="programTypeName-prop"></span><span class="name">programTypeName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds a string representation of the [programType](index.html#programType-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="radioText-prop"></span><span class="name">radioText</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds free-text transmitted by the radio station. This is typically used to show supporting information for the currently playing content, for instance song title or artist name.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stationId-prop"></span><span class="name">stationId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property allows you to read the station Id of the currently tuned radio station.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stationName-prop"></span><span class="name">stationName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property has the name of the currently tuned radio station.

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
