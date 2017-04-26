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
-   [SDK 15.04](../index.html) ›
-   [QtMultimedia](../QtMultimedia/index.html) ›

<!-- -->

-   Radio

Radio
=====

<span class="subtitle"></span>
Access radio functionality from a QML application. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | import QtMultimedia 5.4 |

<span id="properties"></span>
Properties
----------

-   ****[antennaConnected](index.html#antennaConnected-prop)**** : int
-   ****[availability](index.html#availability-prop)**** : enumeration
-   ****[band](index.html#band-prop)**** : enumeration
-   ****[frequency](index.html#frequency-prop)**** : int
-   ****[frequencyStep](index.html#frequencyStep-prop)**** : int
-   ****[maximumFrequency](index.html#maximumFrequency-prop)**** : int
-   ****[minimumFrequency](index.html#minimumFrequency-prop)**** : int
-   ****[muted](index.html#muted-prop)**** : bool
-   ****[searching](index.html#searching-prop)**** : bool
-   ****[signalStrength](index.html#signalStrength-prop)**** : int
-   ****[state](index.html#state-prop)**** : enumeration
-   ****[stereo](index.html#stereo-prop)**** : bool
-   ****[stereoMode](index.html#stereoMode-prop)**** : enumeration
-   ****[volume](index.html#volume-prop)**** : int

<span id="signals"></span>
Signals
-------

-   ****[stationFound](index.html#stationFound-signal)****(int *frequency*, string *stationId*)

<span id="methods"></span>
Methods
-------

-   ****[cancelScan](index.html#cancelScan-method)****()
-   ****[scanDown](index.html#scanDown-method)****()
-   ****[scanUp](index.html#scanUp-method)****()
-   ****[searchAllStations](index.html#searchAllStations-method)****(enumeration *searchMode*)
-   ****[start](index.html#start-method)****()
-   ****[stop](index.html#stop-method)****()
-   ****[tuneDown](index.html#tuneDown-method)****()
-   ****[tuneUp](index.html#tuneUp-method)****()

<span id="details"></span>
Detailed Description
--------------------

Radio is part of the **QtMultimedia 5.0** module.

``` qml
import QtQuick 2.0
import QtMultimedia 5.0
Rectangle {
    width: 320
    height: 480
    Radio {
        id: radio
        band: Radio.FM
    }
    MouseArea {
        x: 0; y: 0
        height: parent.height
        width: parent.width / 2
        onClicked: radio.scanDown()
    }
    MouseArea {
        x: parent.width / 2; y: 0
        height: parent.height
        width: parent.width / 2
        onClicked: radio.scanUp()
    }
}
```

You can use `Radio` to tune the radio and get information about the signal. You can also use the Radio to get information about tuning, for instance the frequency steps supported for tuning.

The corresponding [RadioData](../QtMultimedia.RadioData/index.html) gives RDS information about the current radio station. The best way to access the [RadioData](../QtMultimedia.RadioData/index.html) for the current Radio is to use the `radioData` property.

**See also** [Radio Overview](../QtMultimedia.radiooverview/index.html).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="antennaConnected-prop"></span><span class="name">antennaConnected</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property is true if there is an antenna connected. Otherwise it will be false.

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

Returns the availability state of the radio.

This is one of:

| Value           | Description                                                                                                                                                                                                                                            |
|-----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Available       | The radio is available to use                                                                                                                                                                                                                          |
| Busy            | The radio is usually available to use, but is currently busy. This can happen when some other process needs to use the audio hardware.                                                                                                                 |
| Unavailable     | The radio is not available to use (there may be no radio hardware)                                                                                                                                                                                     |
| ResourceMissing | There is one or more resources missing, so the radio cannot be used. It may be possible to try again at a later time. This can occur if there is no antenna connected - see the [antennaConnected](index.html#antennaConnected-prop) property as well. |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="band-prop"></span><span class="name">band</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the frequency band used for the radio, which can be specified as any one of the values in the table below.

| Value | Description                                                            |
|-------|------------------------------------------------------------------------|
| AM    | 520 to 1610 kHz, 9 or 10kHz channel spacing, extended 1610 to 1710 kHz |
| FM    | 87.5 to 108.0 MHz, except Japan 76-90 MHz                              |
| SW    | 1.711 to 30.0 MHz, divided into 15 bands. 5kHz channel spacing         |
| LW    | 148.5 to 283.5 kHz, 9kHz channel spacing (Europe, Africa, Asia)        |
| FM2   | range not defined, used when area supports more than one FM range      |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="frequency-prop"></span><span class="name">frequency</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Sets the frequency in Hertz that the radio is tuned to. The frequency must be within the frequency range for the current band, otherwise it will be changed to be within the frequency range.

**See also** [maximumFrequency](index.html#maximumFrequency-prop) and [minimumFrequency](index.html#minimumFrequency-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="frequencyStep-prop"></span><span class="name">frequencyStep</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The number of Hertz for each step when tuning the radio manually. The value is for the current [band](index.html#band-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumFrequency-prop"></span><span class="name">maximumFrequency</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The maximum frequency for the current [band](index.html#band-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="minimumFrequency-prop"></span><span class="name">minimumFrequency</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The minimum frequency for the current [band](index.html#band-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="muted-prop"></span><span class="name">muted</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property reflects whether the radio is muted or not.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="searching-prop"></span><span class="name">searching</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property is true if the radio is currently searching for radio stations, for instance using the [scanUp](index.html#scanUp-method), [scanDown](index.html#scanDown-method), and [searchAllStations](index.html#searchAllStations-method) methods. Once the search completes, or if it is cancelled using [cancelScan](index.html#cancelScan-method), this property will be false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="signalStrength-prop"></span><span class="name">signalStrength</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The strength of the current radio signal as a percentage where 0% equals no signal, and 100% is a very good signal.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="state-prop"></span><span class="name">state</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the current state of the Radio.

| Value        | Description                     |
|--------------|---------------------------------|
| ActiveState  | The radio is started and active |
| StoppedState | The radio is stopped            |

**See also** [start](index.html#start-method) and [stop](index.html#stop-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stereo-prop"></span><span class="name">stereo</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the radio is receiving a stereo signal or not. If [stereoMode](index.html#stereoMode-prop) is set to ForceMono the value will always be false. Likewise, it will always be true if [stereoMode](index.html#stereoMode-prop) is set to ForceStereo.

**See also** [stereoMode](index.html#stereoMode-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stereoMode-prop"></span><span class="name">stereoMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the stereo mode of the radio, which can be set to any one of the values in the table below.

| Value       | Description                                                                              |
|-------------|------------------------------------------------------------------------------------------|
| Auto        | Uses stereo mode matching the station                                                    |
| ForceStereo | Forces the radio to play the station in stereo, converting the sound signal if necessary |
| ForceMono   | Forces the radio to play the station in mono, converting the sound signal if necessary   |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="volume-prop"></span><span class="name">volume</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Set this property to control the volume of the radio. The valid range of the volume is from 0 to 100.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stationFound-signal"></span><span class="name">stationFound</span>(<span class="type">int</span> <em>frequency</em>, <span class="type">string</span> <em>stationId</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a new radio station is found. This signal is only emitted if [searchAllStations](index.html#searchAllStations-method) is called with `SearchGetStationId`.

The *frequency* is returned in Hertz, and the *stationId* corresponds to the station Id in the [RadioData](../QtMultimedia.RadioData/index.html) for this radio station.

The corresponding handler is `onStationFound`.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cancelScan-method"></span><span class="name">cancelScan</span>()</p></td>
</tr>
</tbody>
</table>

Cancel the current scan. Will also cancel a search started with [searchAllStations](index.html#searchAllStations-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="scanDown-method"></span><span class="name">scanDown</span>()</p></td>
</tr>
</tbody>
</table>

Searches backward in the frequency range for the current band.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="scanUp-method"></span><span class="name">scanUp</span>()</p></td>
</tr>
</tbody>
</table>

Searches forward in the frequency range for the current band.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="searchAllStations-method"></span><span class="name">searchAllStations</span>(<span class="type">enumeration</span> <em>searchMode</em>)</p></td>
</tr>
</tbody>
</table>

Start searching the complete frequency range for the current band, and save all the radio stations found. The search mode can be either of the values described in the table below.

| Value              | Description                                                                                                                |
|--------------------|----------------------------------------------------------------------------------------------------------------------------|
| SearchFast         | Stores each radio station for later retrival and tuning                                                                    |
| SearchGetStationId | Does the same as SearchFast, but also emits the station Id with the [stationFound](index.html#stationFound-signal) signal. |

The snippet below uses `searchAllStations` with `SearchGetStationId` to receive all the radio stations in the current band, and store them in a ListView. The station Id is shown to the user and if the user presses a station, the radio is tuned to this station.

``` qml
Item {
    width: 640
    height: 360
    Radio {
        id: radio
        onStationFound: radioStations.append({"frequency": frequency, "stationId": stationId})
    }
    ListModel {
        id: radioStations
    }
    ListView {
        model: radioStations
        delegate: Rectangle {
                MouseArea {
                    anchors.fill: parent
                    onClicked: radio.frequency = frequency
                }
                Text {
                    anchors.fill: parent
                    text: stationId
                }
            }
    }
    Rectangle {
        MouseArea {
            anchors.fill: parent
            onClicked: radio.searchAllStations(Radio.SearchGetStationId)
        }
    }
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="start-method"></span><span class="name">start</span>()</p></td>
</tr>
</tbody>
</table>

Starts the radio. If the radio is available, as determined by the [availability](index.html#availability-prop) property, this will result in the [state](index.html#state-prop) becoming `ActiveState`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stop-method"></span><span class="name">stop</span>()</p></td>
</tr>
</tbody>
</table>

Stops the radio. After calling this method the [state](index.html#state-prop) will be `StoppedState`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="tuneDown-method"></span><span class="name">tuneDown</span>()</p></td>
</tr>
</tbody>
</table>

Decrements the frequency by the frequency step for the current band. If the frequency is already set to the minimum frequency, calling this function has no effect.

**See also** [band](index.html#band-prop), [frequencyStep](index.html#frequencyStep-prop), and [minimumFrequency](index.html#minimumFrequency-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="tuneUp-method"></span><span class="name">tuneUp</span>()</p></td>
</tr>
</tbody>
</table>

Increments the frequency by the frequency step for the current band. If the frequency is already set to the maximum frequency, calling this function has no effect.

**See also** [band](index.html#band-prop), [frequencyStep](index.html#frequencyStep-prop), and [maximumFrequency](index.html#maximumFrequency-prop).

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
