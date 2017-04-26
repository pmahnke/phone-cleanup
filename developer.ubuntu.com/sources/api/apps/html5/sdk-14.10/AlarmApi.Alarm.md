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
-   [HTML5](../../index.html) ›
-   [SDK 14.10](../index.html) ›
-   [AlarmApi](../AlarmApi/index.html) ›

<!-- -->

-   Alarm

Alarm
=====

An Alarm.

<span id="Alarm"></span>
**`Alarm`**( `  ` )
##### Example

``` code
 var date = new Date();
     <set a valid date in the future>
    
     var api = external.getUnityObject('1.0');
     api.AlarmApi.api.createAndSaveAlarmFor(
         date,
         api.AlarmApi.AlarmType.OneTime,
         api.AlarmApi.AlarmDayOfWeek.AutoDetect,
         "alarm triggered",
         function(errorid) {
             console.log(api.AlarmApi.api.errorToMessage(errorid));
         });
```

-   Methods

<span id="cancel"></span>
**`cancel`**( `  ` )
Cancels a given Alarm.

<span id="daysOfWeek"></span>
**`daysOfWeek`**( `callback ` )
Retrieves the alarm day of the week.

The property holds the days of the week the alarm is scheduled. This property can have only one day set for one time alarms and multiple days for repeating alarms.

**Parameters:**
-   `callback` **&lt;Function(AlarmType)&gt;**

<span id="destroy"></span>
**`destroy`**( `  ` )
Destroys the remote object. This proxy object is not valid anymore.

<span id="enabled"></span>
**`enabled`**( `callback ` )
Retrieves the alarm's enabled state.

The property specifies whether the alarm is enabled or not. Disable dalarms are not scheduled. The default value is true

**Parameters:**
-   `callback` **&lt;Function(Boolean)&gt;**

<span id="error"></span>
**`error`**( `callback ` )
The property holds the error code occurred during the last performed operation.

**Parameters:**
-   `callback` **&lt;Function(Error)&gt;**

<span id="error"></span>
**`error`**( `callback ` )
Retrieves the alarm date.

The date property holds the date the alarm will be triggered. The default value is the current date and time the alarm object was created. Further reset calls will bring the value back to the time the reset was called.

**Parameters:**
-   `callback` **&lt;Function(Date)&gt;**

<span id="message"></span>
**`message`**( `callback ` )
Retrieves the alarm message.

The property holds the message string which will be displayed when the alarm is triggered. The default value is the localized "Alarm" text

**Parameters:**
-   `callback` **&lt;Function(String)&gt;**

<span id="reset"></span>
**`reset`**( `  ` )
Resets a given Alarm.

<span id="save"></span>
**`save`**( `  ` )
Saves the alarm as a system wide alarm with the parameters previously set.

<span id="setDate"></span>
**`setDate`**( `date, callback ` )
Sets the alarm date.

**Parameters:**
-   `date` **&lt;Date&gt;**
-   `callback` **&lt;Function()&gt;**

    (optional) To be called after the date is set.

<span id="setDaysOfWeek"></span>
**`setDaysOfWeek`**( `daysOfWeek, callback ` )
Sets the alarm day of the week.

**Parameters:**
-   `daysOfWeek` **&lt;AlarmDayOfWeek&gt;**
-   `callback` **&lt;Function()&gt;**

    (optional) To be called after the day of the week is set.

<span id="setEnabled"></span>
**`setEnabled`**( `enabled, callback ` )
Sets the alarm's enabled state.

**Parameters:**
-   `enabled` **&lt;Boolean&gt;**
-   `callback` **&lt;Function()&gt;**

    (optional) To be called after the enabled state is set.

<span id="setMessage"></span>
**`setMessage`**( `message, callback ` )
Sets the alarm message.

**Parameters:**
-   `message` **&lt;String&gt;**
-   `callback` **&lt;Function()&gt;**

    (optional) To be called after the message is set.

<span id="setSound"></span>
**`setSound`**( `sound, callback ` )
Sets the alarm sound.

**Parameters:**
-   `sound` **&lt;String&gt;**
-   `callback` **&lt;Function()&gt;**

    (optional) To be called after the sound is set.

<span id="setType"></span>
**`setType`**( `type, callback ` )
Sets the alarm type.

**Parameters:**
-   `type` **&lt;AlarmType&gt;**
-   `callback` **&lt;Function()&gt;**

    (optional) To be called after the type is set.

<span id="sound"></span>
**`sound`**( `callback ` )
Retrieves the alarm sound.

The property holds the alarm's sound to be played when the alarm is triggered. An empty url will mean to play the default sound.

The default value is an empty url.

**Parameters:**
-   `callback` **&lt;Function(String)&gt;**

<span id="status"></span>
**`status`**( `callback ` )
Retrieves the alarm status.

The property holds the status of the last performed operation

**Parameters:**
-   `callback` **&lt;Function(String)&gt;**

<span id="type"></span>
**`type`**( `callback ` )
Retrieves the alarm type.

The property holds the type of the alarm. The default value is AlarmType.OneTime

**Parameters:**
-   `callback` **&lt;Function(AlarmType)&gt;**

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
