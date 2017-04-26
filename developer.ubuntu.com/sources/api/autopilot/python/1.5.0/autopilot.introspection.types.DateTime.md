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
-   [Autopilot](../../../index.html) ›
-   [Python](../../index.html) ›
-   [1.5.0](../index.html) ›
-   [autopilot.introspection.types](../autopilot.introspection.types/index.html) ›

<!-- -->

-   DateTime

DateTime
========

 *class* `autopilot.introspection.types.``DateTime`(*\*args*, *\*\*kwargs*)<a href="index.html#DateTime" class="reference internal"></a><a href="index.html#autopilot.introspection.types.DateTime" class="headerlink" title="Permalink to this definition"></a>  
The DateTime class represents a date and time in the UTC timezone.

DateTime is constructed by passing a unix timestamp in to the constructor. The incoming timestamp is assumed to be in UTC.

Note

This class expects the passed in timestamp to be in UTC but will display the resulting date and time in local time (using the local timezone).

This is done to mimic the behaviour of most applications which will display date and time in local time by default

Timestamps are expressed as the number of seconds since 1970-01-01T00:00:00 in the UTC timezone:

    >>> my_dt = DateTime(1377209927)

This timestamp can always be accessed either using index access or via a named property:

    >>> my_dt[0] == my_dt.timestamp == 1377209927
    True

DateTime objects also expose the usual named properties you would expect on a date/time object:

    >>> my_dt.year
    2013
    >>> my_dt.month
    8
    >>> my_dt.day
    22
    >>> my_dt.hour
    22
    >>> my_dt.minute
    18
    >>> my_dt.second
    47

Two DateTime objects can be compared for equality:

    >>> my_dt == DateTime(1377209927)
    True

You can also compare a DateTime with any mutable sequence type containing the timestamp (although this probably isn’t very useful for test authors):

    >>> my_dt == [1377209927]
    True

Finally, you can also compare a DateTime instance with a python datetime instance:

    >>> my_datetime = datetime.datetime.utcfromtimestamp(1377209927)
    True

Note

Autopilot supports dates beyond 2038 on 32-bit platforms. To achieve this the underlying mechanisms require to work with timezone aware datetime objects.

> This means that the following won’t always be true (due to the naive timestamp not having the correct daylight-savings time details):
>
>     >>> # This time stamp is within DST in the 'Europe/London' timezone
>     >>> dst_ts = 1405382400
>     >>> os.environ['TZ'] ='Europe/London'
>     >>> time.tzset()
>     >>> datetime.fromtimestamp(dst_ts).hour == DateTime(dst_ts).hour
>     False
>
> But this will work:
>
>     >>> from dateutil.tz import gettz
>     >>> datetime.fromtimestamp(
>             dst_ts, gettz()).hour == DateTime(dst_ts).hour
>     True
>
> And this will always work to:
>
>     >>> dt1 =  DateTime(nz_dst_timestamp)
>     >>> dt2 = datetime(
>             dt1.year, dt1.month, dt1.day, dt1.hour, dt1.minute, dt1.second
>         )
>     >>> dt1 == dt2
>     True

Note

DateTime.timestamp() will not always equal the passed in timestamp. To paraphrase a message from \[<a href="http://bugs.python.org/msg229393" class="uri" class="reference external">http://bugs.python.org/msg229393</a>\] “datetime.timestamp is supposed to be inverse of datetime.fromtimestamp(), but since the later is not monotonic, no such inverse exists in the strict mathematical sense.”

DateTime instances can be converted to datetime instances:

    >>> isinstance(my_dt.datetime, datetime.datetime)
    True

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
