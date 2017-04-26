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
-   [Ubuntu.Components.Pickers](../Ubuntu.Components.Pickers/index.html) ›

<!-- -->

-   DatePicker

DatePicker
==========

<span class="subtitle"></span>
DatePicker component provides date and time value picking functionality. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components.Pickers 1.0</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="../Ubuntu.Components.StyledItem/index.html">StyledItem</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[activeFocusOnPress](index.html#activeFocusOnPress-prop)**** : bool
-   ****[date](index.html#date-prop)**** : date
-   ****[day](index.html#day-prop)**** : int
-   ****[hours](index.html#hours-prop)**** : int
-   ****[locale](index.html#locale-prop)**** : var
-   ****[maximum](index.html#maximum-prop)**** : date
-   ****[minimum](index.html#minimum-prop)**** : date
-   ****[minutes](index.html#minutes-prop)**** : int
-   ****[mode](index.html#mode-prop)**** : string
-   ****[month](index.html#month-prop)**** : int
-   ****[moving](index.html#moving-prop)**** : bool
-   ****[seconds](index.html#seconds-prop)**** : int
-   ****[style](index.html#style-prop)**** : Component
-   ****[week](index.html#week-prop)**** : int
-   ****[year](index.html#year-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

[DatePicker](index.html) combines up to three Picker elements providing different date or time value selection possibilities. It can be used to select full date (year, month, day), full time (hours, minutes, seconds) as well as to select a combination of year and month, month and day, hours and minutes, minutes and seconds or individual time units (i.e. year, month or day as well as hours, minutes or seconds). The selected date as well as the initial one is provided by the [date](index.html#date-prop) property. For convenience the component provides also the *year*, *month*, *day*, *week*, *hours*, *minutes* and *seconds* values as separate properties, however these properties are not writable, and their initialization can happen only through the [date](index.html#date-prop) property.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
import Ubuntu.Components.Pickers 1.0
Column {
    Label {
        text: "Selected date: W" + datePicker.week + " - " +
                Qt.formatDate(datePicker.date, "dddd, dd-MMMM-yyyy")
    }
    DatePicker {
        id: datePicker
    }
}
```

The [mode](index.html#mode-prop) property specifies what time units should be shown by the picker. The property holds a string, combining **Years**, **Months**, **Days**, **Hours**, **Minutes** and **Seconds** strings sepatared with '|' character. A [DatePicker](index.html) which shows only year and month date units would look as follows:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
import Ubuntu.Components.Pickers 1.0
Column {
    Label {
        text: "Selected month: " + Qt.formatDate(datePicker.date, "MMMM-yyyy")
    }
    DatePicker {
        id: datePicker
        mode: "Years|Months"
    }
}
```

The **mode** of the [DatePicker](index.html) is set to date picking. In case time picking is needed, the model should be set to contain the time specific mode flags. The following example demonstrates how to use [DatePicker](index.html) for time picking.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
import Ubuntu.Components.Pickers 1.0
Column {
    Label {
        text: "Selected time: " + Qt.formatTime(datePicker.date, "hh:mm:ss")
    }
    DatePicker {
        id: datePicker
        mode: "Hours|Minutes|Seconds"
    }
}
```

Note that the order in which the mode flags are specified does not influence the order the pickers are arranged. That is driven by the date format of the [locale](index.html#locale-prop) used in the picker. Also not all combinations of mode flags are supported. See [mode](index.html#mode-prop) for the supported combinations.

The default interval the date values are chosen is a window starting at the current date ending 50 years later. This window is defined by the *minimum* and *maximum* properties. The interval can be altered considering the following rules:

-   - *minimum* must be less or equal than the [date](index.html#date-prop); if the *date* value is less than the given *minimum*, the date will be set to the minimum's value
-   - *maximum* value must be greater than the *minimum*, or invalid. When the maximum is smaller than the [date](index.html#date-prop), the [date](index.html#date-prop) property will be updated to get the maximum value. When set to invalid date (see Date.getInvalidDate()), the upper limit of the date interval becomes infinite, meaning the year picker will extend infinitely. This leads to increased memory use and should be avoided if possible. Invalid date will make hours picker presenting 24 hours.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
import Ubuntu.Components.Pickers 1.0
Column {
    Label {
        text: "Selected date: " + Qt.formatDate(datePicker.date, "dddd, dd-MMMM-yyyy")
    }
    DatePicker {
        id: datePicker
        minimum: {
            var d = new Date();
            d.setFullYear(d.getFullYear() - 1);
            return d;
        }
        maximum: Date.prototype.getInvalidDate.call()
    }
}
```

**Note**: do not use the [date](index.html#date-prop) property when initializing minimum and maximum as it will cause binding loops.

<span id="layout"></span>
### Layout

As mentioned earlier, [DatePicker](index.html) combines up to three Picker tumblers depending on the mode requested. These tumblers are laid out in a row in the order the default date format of the [locale](index.html#locale-prop) is.

<span id="date-picker-layout-rules"></span>
#### Date picker layout rules

The date picker consist of three pickers: year, month, and date. The exact contents of the month and date pickers depends on the available width:

-   \* full name for month, number and full day for date (“August” “28 Wednesday”)
-   \* otherwise full name for month, number and abbreviated day for date (“August” “28 Wed”);
-   \* otherwise full name for month, number for date (“August” “28”);
-   \* otherwise abbreviated name for month, number for date (“Aug” “28”).
-   \* otherwise number for month, number for date (“08” “28”).

*If the currently selected date becomes impossible due to year change (from a leap to a non-leap year when the date is set to February 29) or month change (e.g. from a month that has 31 days to one that has fewer when the date is set to 31), the date reduces automatically to the last day of the month (i.e February 28 or 30th day of the month).*

<span id="time-picker-layout-rules"></span>
#### Time picker layout rules

Time units are shown in fixed width picker tumblers, numbers padded with leading zeroes. There is no other special rule on the formatting of the time unit numbers.

<span id="how-minimum-maximum-affects-the-tumblers"></span>
#### How minimum/maximum affects the tumblers

If minimum and maximum are within the same year, the year picker will be insensitive. If minimum and maximum are within the same month, the month picker will also be insensitive.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="activeFocusOnPress-prop"></span><span class="name">activeFocusOnPress</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property specifies whether the [StyledItem](../Ubuntu.Components.StyledItem/index.html) can gain focus on a mouse press/touch or not. When the value is true, the focus will be set on the component when the mouse is pressed over it or touched. However if one of the component's ancestor [StyledItem](../Ubuntu.Components.StyledItem/index.html) or derived is having the property value false, the focus will not be gained automatically.

In the following example the [TextField](../Ubuntu.Components.TextField/index.html) will stay focused when clicked on the red rectangle.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
Column {
    width: units.gu(50)
    height: units.gu(100)
    StyledItem {
        objectName: "passiveScope"
        width: parent.width
        height: units.gu(30)
        Rectangle {
            anchors.fill: parent
            color: "red"
            StyledItem {
                objectName: "activeScope"
                activeFocusOnPress: true
                anchors.fill: parent
            }
        }
    }
    TextField {
        id: input
        text: "The input stays focus even if red box is clicked"
    }
    Component.onCompleted: input.forceActiveFocus()
    Connections {
        target: window
        onActiveFocusItemChanged: console.debug("focus on", window.activeFocusItem)
    }
}
```

The default value is `false`.

This QML property was introduced in Ubuntu.Components 1.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="date-prop"></span><span class="name">date</span> : <span class="type"><a href="index.html#date-prop">date</a></span></p></td>
</tr>
</tbody>
</table>

The date chosen by the [DatePicker](index.html). The default value is the date at the component creation time. The property automatically updates year, month and day properties.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="day-prop"></span><span class="qmlreadonly">read-only</span><span class="name">day</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

For convenience, the **day** value of the [date](index.html#date-prop) property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hours-prop"></span><span class="qmlreadonly">read-only</span><span class="name">hours</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

For convenience, the **hours** value of the [date](index.html#date-prop) property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="locale-prop"></span><span class="name">locale</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span></p></td>
</tr>
</tbody>
</table>

The property defines the locale used in the picker. The default value is the system locale.

``` qml
DatePicker {
     locale: Qt.locale("hu_HU")
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximum-prop"></span><span class="name">maximum</span> : <span class="type"><a href="index.html#date-prop">date</a></span></p></td>
</tr>
</tbody>
</table>

The maximum date (inclusive) to be shown in the picker. Both year and month values will be considered from the properties.

See [minimum](index.html#minimum-prop) for more details.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="minimum-prop"></span><span class="name">minimum</span> : <span class="type"><a href="index.html#date-prop">date</a></span></p></td>
</tr>
</tbody>
</table>

The minimum date (inclusive) to be shown in the picker. Both year and month values will be considered from the properties.

The year and month picker values are filled based on these values. The year picker will be infinite (extending infinitely) if the maximum is an invalid date. If the distance between maximum and minimum is less than a year, the year picker will be shown disabled.

The month picker will be circular if the distance between maximum and minimum is at least one year, or if the maximum date is invalid.

The default values are the current date for the minimum, and 50 year distance value for maximum.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="minutes-prop"></span><span class="qmlreadonly">read-only</span><span class="name">minutes</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

For convenience, the **minutes** value of the [date](index.html#date-prop) property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mode-prop"></span><span class="name">mode</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Specifies what kind of date value selectors should be shown by the picker. This is a string of 'flags' separated by '|' separator, where flags are:

Date picker modes
Value
Description
Years
Specifies to show the year picker
Months
Specifies to show the month picker
Days
Specifies to show the day picker
Time picker modes
Value
Description
Hours
Specifies to show the hours picker
Minutes
Specifies to show the minutes picker
Seconds
Specifies to show the seconds picker

With some exceptions, any combination of these flags is allowed within the same group. Date and time picker modes cannot be combined.

The supported combinations are: *Years|Months|Days*, *Years|Months*, *Months|Days*, *Hours|Minutes|Seconds*, *Hours|Minutes* and *Minutes|Seconds*, as well as each mode flag individually.

The default value is "*Years|Months|Days*".

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="month-prop"></span><span class="qmlreadonly">read-only</span><span class="name">month</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

For convenience, the **month** value of the [date](index.html#date-prop) property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="moving-prop"></span><span class="qmlreadonly">read-only</span><span class="name">moving</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property holds whether the component's pickers are moving.

**See also** [Picker::moving](../Ubuntu.Components.Pickers.Picker/index.html#moving-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="seconds-prop"></span><span class="qmlreadonly">read-only</span><span class="name">seconds</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

For convenience, the **seconds** value of the [date](index.html#date-prop) property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="style-prop"></span><span class="name">style</span> : <span class="type"><a href="../../sdk-14.10/QtQml.Component/index.html">Component</a></span></p></td>
</tr>
</tbody>
</table>

Component instantiated immediately and placed below everything else.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="week-prop"></span><span class="qmlreadonly">read-only</span><span class="name">week</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

For convenience, the **week** value of the [date](index.html#date-prop) property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="year-prop"></span><span class="qmlreadonly">read-only</span><span class="name">year</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

For convenience, the **year** value of the [date](index.html#date-prop) property.

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
