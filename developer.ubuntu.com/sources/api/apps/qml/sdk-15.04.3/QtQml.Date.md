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
-   [QtQml](../QtQml/index.html) ›

<!-- -->

-   Date

Date
====

<span class="subtitle"></span>
Provides date functions More...

|                   |                  |
|-------------------|------------------|
| Import Statement: | import QtQml 2.2 |

<span id="methods"></span>
Methods
-------

-   string ****[fromLocaleDateString](index.html#fromLocaleDateString-method)****(locale, dateString, format)
-   string ****[fromLocaleString](index.html#fromLocaleString-method)****(locale, dateTimeString, format)
-   string ****[fromLocaleTimeString](index.html#fromLocaleTimeString-method)****(locale, timeString, format)
-   string ****[timeZoneUpdated](index.html#timeZoneUpdated-method)****()
-   string ****[toLocaleDateString](index.html#toLocaleDateString-method)****(locale, format)
-   string ****[toLocaleString](index.html#toLocaleString-method)****(locale, format)
-   string ****[toLocaleTimeString](index.html#toLocaleTimeString-method)****(locale, format)

<span id="details"></span>
Detailed Description
--------------------

The QML Date object extends the [JS Date object](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date) with locale aware functions.

Functions that accept a locale format may be either an enumeration value:

|                     |                                                                                                                                                                                                                                                                                                                                                                                        |
|---------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Locale.LongFormat   | The long version of the string; for example, returning "January" as a month name.                                                                                                                                                                                                                                                                                                      |
| Locale.ShortFormat  | The short version of the string; for example, returning "Jan" as a month name.                                                                                                                                                                                                                                                                                                         |
| Locale.NarrowFormat | A special version for use when space is limited; for example, returning "J" as a month name. Note that the narrow format might contain the same text for different months and days or it can even be an empty string if the locale doesn't support narrow names, so you should avoid using it for date formatting. Also, for the system locale this format is the same as ShortFormat. |

or a string specifying the format These expressions may be used for format dates:

| Expression | Output                                                                                         |
|------------|------------------------------------------------------------------------------------------------|
| d          | the day as number without a leading zero (1 to 31)                                             |
| dd         | the day as number with a leading zero (01 to 31)                                               |
| ddd        | the abbreviated localized day name (e.g. 'Mon' to 'Sun').                                      |
| dddd       | the long localized day name (e.g. 'Monday' to 'Sunday').                                       |
| M          | the month as number without a leading zero (1 to 12)                                           |
| MM         | the month as number with a leading zero (01 to 12)                                             |
| MMM        | the abbreviated localized month name (e.g. 'Jan' to 'Dec').                                    |
| MMMM       | the long localized month name (e.g. 'January' to 'December').                                  |
| yy         | the year as two digit number (00 to 99)                                                        |
| yyyy       | the year as four digit number. If the year is negative, a minus sign is prepended in addition. |

All other input characters will be ignored. Any sequence of characters that are enclosed in singlequotes will be treated as text and not be used as an expression. Two consecutive singlequotes ("''") are replaced by a singlequote in the output.

Example format strings (assuming that the Date is the 20 July 1969):

| Format            | Result            |
|-------------------|-------------------|
| dd.MM.yyyy        | 20.07.1969        |
| ddd MMMM d yy     | Sun July 20 69    |
| 'The day is' dddd | The day is Sunday |

These expressions may be used for formatting time:

| Expression | Output                                                                |
|------------|-----------------------------------------------------------------------|
| h          | the hour without a leading zero (0 to 23 or 1 to 12 if AM/PM display) |
| hh         | the hour with a leading zero (00 to 23 or 01 to 12 if AM/PM display)  |
| H          | the hour without a leading zero (0 to 23, even with AM/PM display)    |
| HH         | the hour with a leading zero (00 to 23, even with AM/PM display)      |
| m          | the minute without a leading zero (0 to 59)                           |
| mm         | the minute with a leading zero (00 to 59)                             |
| s          | the second without a leading zero (0 to 59)                           |
| ss         | the second with a leading zero (00 to 59)                             |
| z          | the milliseconds without leading zeroes (0 to 999)                    |
| zzz        | the milliseconds with leading zeroes (000 to 999)                     |
| AP or A    | use AM/PM display. *AP* will be replaced by either "AM" or "PM".      |
| ap or a    | use am/pm display. *ap* will be replaced by either "am" or "pm".      |
| t          | the timezone (for example "CEST")                                     |

All other input characters will be ignored. Any sequence of characters that are enclosed in singlequotes will be treated as text and not be used as an expression. Two consecutive singlequotes ("''") are replaced by a singlequote in the output.

Example format strings (assuming that the QTime is 14:13:09.042)

| Format       | Result       |
|--------------|--------------|
| hh:mm:ss.zzz | 14:13:09.042 |
| h:m:s ap     | 2:13:9 pm    |
| H:m:s a      | 14:13:9 pm   |

If the date is invalid, an empty string will be returned.

Note: Using the locale-aware functions to perform date or time formatting can result in incorrectly formatted times, due to an inconsistency in specification between Qt and JS. ECMA-262 specifies that historical dates should be intrepreted by projecting the current rules for daylight-saving onto past years, while Qt uses historical data (where available) to determine whether daylight-saving was in effect for a given date. Therefore, constructing a Date value in JS and converting it to a string using the locale-aware functions can yield a result incorrect by one hour, if DST is currently in effect, while it was not for the time specified, or vice versa.

**See also** [Locale](../QtQml.Locale/index.html).

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fromLocaleDateString-method"></span><span class="type">string</span> <span class="name">fromLocaleDateString</span>(<span class="type">locale</span>, <span class="type">dateString</span>, <span class="type">format</span>)</p></td>
</tr>
</tbody>
</table>

Converts the date string *dateString* to a [Date](index.html) object using *locale* and *format*.

If *format* is not specified, [Locale.LongFormat](../QtQml.Locale/index.html) will be used.

If *locale* is not specified, the default locale will be used.

The following example shows the current date first being formatted as a date string using the default locale and format, then parsed back again in the same manner:

``` cpp
import QtQml 2.0
QtObject {
    property var locale: Qt.locale()
    property date currentDate: new Date()
    property string dateString
    Component.onCompleted: {
        dateString = currentDate.toLocaleDateString();
        print(Date.fromLocaleDateString(dateString));
    }
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fromLocaleString-method"></span><span class="type">string</span> <span class="name">fromLocaleString</span>(<span class="type">locale</span>, <span class="type">dateTimeString</span>, <span class="type">format</span>)</p></td>
</tr>
</tbody>
</table>

Converts the datetime string *dateTimeString* to a [Date](index.html) object using *locale* and *format*.

If *format* is not specified, [Locale.LongFormat](../QtQml.Locale/index.html) will be used.

If *locale* is not specified, the default locale will be used.

The following example shows a datetime being parsed from a datetime string in a certain format using the default locale:

``` cpp
import QtQml 2.0
QtObject {
    property var locale: Qt.locale()
    property string dateTimeString: "Tue 2013-09-17 10:56:06"
    Component.onCompleted: {
        print(Date.fromLocaleString(locale, dateTimeString, "ddd yyyy-MM-dd hh:mm:ss"));
    }
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fromLocaleTimeString-method"></span><span class="type">string</span> <span class="name">fromLocaleTimeString</span>(<span class="type">locale</span>, <span class="type">timeString</span>, <span class="type">format</span>)</p></td>
</tr>
</tbody>
</table>

Converts the time string *timeString* to a [Date](index.html) object using *locale* and *format*.

If *format* is not specified, [Locale.LongFormat](../QtQml.Locale/index.html) will be used.

If *locale* is not specified, the default locale will be used.

The following example shows the current time first being formatted as a time string using the default locale and a short format, then parsed back again in the same manner:

``` cpp
import QtQml 2.2
QtObject {
    property var locale: Qt.locale()
    property date currentTime: new Date()
    property string timeString
    Component.onCompleted: {
        timeString = currentTime.toLocaleTimeString(locale, Locale.ShortFormat);
        print(Date.fromLocaleTimeString(locale, timeString, Locale.ShortFormat));
    }
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="timeZoneUpdated-method"></span><span class="type">string</span> <span class="name">timeZoneUpdated</span>()</p></td>
</tr>
</tbody>
</table>

Informs the JS engine that the system's timezone has been changed, which is necessary for the correct manipulation of datetime data.

JS stores Date objects in UTC time; all access to and from Date components in local time involves the application of the current offset from UTC. If the current offset changes due to the timezone being updated, the JS engine needs to be informed so that it can recalculate the offset.

This function should be called after the system's timezone has been updated.

For example, an application that changes the timezone would call timeZoneUpdated() after setting the new time zone:

``` cpp
property string selectedTimeZone
onSelectedTimeZoneChanged: {
    MyFunctions.setSystemTimeZone(selectedTimeZone)
    Date.timeZoneUpdated()
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="toLocaleDateString-method"></span><span class="type">string</span> <span class="name">toLocaleDateString</span>(<span class="type">locale</span>, <span class="type">format</span>)</p></td>
</tr>
</tbody>
</table>

Converts the Date to a string containing the date suitable for the specified *locale* in the specified *format*.

If *format* is not specified, [Locale.LongFormat](../QtQml.Locale/index.html) will be used.

If *locale* is not specified, the default locale will be used.

The following example shows the current date formatted for the German locale:

``` cpp
import QtQuick 2.0
Text {
    text: "The date is: " + new Date().toLocaleDateString(Qt.locale("de_DE"))
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="toLocaleString-method"></span><span class="type">string</span> <span class="name">toLocaleString</span>(<span class="type">locale</span>, <span class="type">format</span>)</p></td>
</tr>
</tbody>
</table>

Converts the Date to a string containing the date and time suitable for the specified *locale* in the specified *format*.

If *format* is not specified, [Locale.LongFormat](../QtQml.Locale/index.html) will be used.

If *locale* is not specified, the default locale will be used.

The following example shows the current date and time formatted for the German locale:

``` cpp
import QtQuick 2.0
Text {
    text: "The date is: " + new Date().toLocaleString(Qt.locale("de_DE"))
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="toLocaleTimeString-method"></span><span class="type">string</span> <span class="name">toLocaleTimeString</span>(<span class="type">locale</span>, <span class="type">format</span>)</p></td>
</tr>
</tbody>
</table>

Converts the Date to a string containing the time suitable for the specified *locale* in the specified *format*.

If *format* is not specified, [Locale.LongFormat](../QtQml.Locale/index.html) will be used.

If *locale* is not specified, the default locale will be used.

The following example shows the current time formatted for the German locale:

``` cpp
import QtQuick 2.0
Text {
    text: "The date is: " + new Date().toLocaleTimeString(Qt.locale("de_DE"))
}
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
