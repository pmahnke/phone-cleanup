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
-   [SDK 15.04.1](../index.html) ›
-   [AlarmApi](../AlarmApi/index.html) ›

<!-- -->

-   AlarmApi

AlarmApi
========

The AlarmApi object

<span id="AlarmApi"></span>
**`AlarmApi`**( `  ` )
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
-   Properties

<span id="api.createAndSaveAlarmFor"></span>
**`api.createAndSaveAlarmFor`**( `date, type, daysOfWeek, message, callback ` )
Creates and saves a new alarm.

**Parameters:**
-   `date` **&lt;Date&gt;**

    date at which the alarm is to be triggered.

-   `type` **&lt;AlarmType&gt;**

    type of the alarm.

-   `daysOfWeek` **&lt;AlarmDayOfWeek&gt;**

    days of the week the alarm is scheduled.

-   `message` **&lt;String&gt;**

    Message to be displayed when the alarm is triggered.

-   `callback` **&lt;Function(AlarmError)&gt;**

    (optional) Function to be called when the alarm has been saved.

<span id="api.errorToMessage"></span>
**`api.errorToMessage`**( `error ` )
Returns a message adapted to the given error id.

**Parameters:**
-   `error` **&lt;AlarmError&gt;**

    error id.

<span id="createAlarm"></span>
**`createAlarm`**( `callback ` )
Creates a Alarm object.

**Parameters:**
-   `callback` **&lt;Function(Alarm)&gt;**

    Function called with the created Alarm.

<span id="AlarmDayOfWeek"></span>
`AlarmDayOfWeek` &lt;**Integer**&gt; *(static)*
Flags for the week days an Alarm should be triggered.

Values:

``` code
Monday: The alarm will kick on Mondays
                
                Tuesday: The alarm will kick on Tuesdays
                
                Wednesday: The alarm will kick on Wednesday
                
                Thursday: The alarm will kick on Thursday
                
                Friday: The alarm will kick on Friday
                
                Saturday: The alarm will kick on Saturday
                
                Sunday: The alarm will kick on Sunday
                
                AutoDetect: The alarm day will be detected
                  from the alarm date.
```

##### Example

``` code
var api = external.getUnityObject('1.0');
                var dayofweek = api.AlarmApi.AlarmDayOfWeek;
                // use dayofweek.Monday or/and dayofweek.Tuesday, etc.
```

<span id="AlarmError"></span>
`AlarmError` &lt;**Integer**&gt; *(static)*
Error ids returned during AlarmApi calls.

Values:

``` code
NoError: Successful operation completion
                
                InvalidDate: The date specified for the alarm was invalid
                
                EarlyDate: The date specified for the alarm is an earlier
                    date than the current one
                
                NbDaysOfWeek: The daysOfWeek parameter of the alarm was not specified
                
                OneTimeOnMoreDays: The one-time alarm was set to be kicked in several days
                
                InvalidEvent: The alarm event is invalid
                
                AdaptationError: The error occurred in alarm adaptation layer.
                    Adaptations may define additional behind this value
```

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

<span id="AlarmType"></span>
`AlarmType` &lt;**Object**&gt; *(static)*
Enumeration of the available types of Alarm.

Values:

``` code
OneTime: The alarm occurs only once
                
                Repeating: The alarm is a repeating one,
                    either daily, weekly on a given day
                    or on selected days
```

##### Example

``` code
var api = external.getUnityObject('1.0');
                var alarmtype = api.AlarmApi.AlarmType;
                // use alarmtype.OneTime or alarmtype.Repeating
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
