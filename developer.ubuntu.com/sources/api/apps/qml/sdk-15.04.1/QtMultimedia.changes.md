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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.1</a> ›
-   <a href="../QtMultimedia/index.html" class="sub-nav-item">QtMultimedia</a> ›

<!-- -->

-   Changes in Qt Multimedia

Changes in Qt Multimedia
========================

<span class="subtitle"></span>
<span id="details"></span>
The Qt Multimedia module in Qt 5 combines (and replaces) two older modules, namely the Qt Multimedia module from Qt 4.x, and Qt Multimedia Kit module from Qt Mobility. Existing code that uses Qt Multimedia from Qt 4 can be ported with minimal effort, but porting code that uses Qt Multimedia Kit may be a more involved process. The [changed features](index.html#changed-features) section highlights changes relevant to porting.

Also, note that widget-based classes, such as QVideoWidget, are now in a separate module called Qt Multimedia Widgets.

<span id="new-features-in-qt-5-0"></span>
New features in Qt 5.0
----------------------

There are a number of new features in Qt Multimedia:

-   Expanded QML API
-   In addition to the [Video](../QtMultimedia.qml-multimedia/index.html#video) QML type, there is now the option of using [MediaPlayer](../QtMultimedia.MediaPlayer/index.html) and [VideoOutput](../QtMultimedia.VideoOutput/index.html) together
-   QML [Torch](../QtMultimedia.Torch/index.html) class
-   New QAudioRecorder class
-   Volume support for QAudioOutput and QAudioInput
-   More examples and documentation
-   QSound moved from Qt GUI to Qt Multimedia
-   QSoundEffect available to C++ now, as well as QML
-   FM Radio Data System classes and types now available (QRadioData, RadioData)
-   Various other API improvements and bugfixes

<span id="removed-features"></span>
Removed features
----------------

A number of classes or features previously offered in Qt Multimedia or Qt Multimedia Kit have been removed.

| Removed feature   | Notes                                                                                                                        |
|-------------------|------------------------------------------------------------------------------------------------------------------------------|
| QMediaImageViewer | This class (and related controls and services) were removed since their functionality was not suitable for many applications |

<span id="changed-features"></span>
Changed features
----------------

A number of classes previously offered in Qt Multimedia or Qt Multimedia Kit have changed in ways that may affect previously written code. This table highlights such changes.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Changed feature</th>
<th>Notes</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><code>qmake</code> project file changes</td>
<td>Previously, to use Qt Multimedia Kit, the <code>qmake</code> project file must contain
<pre class="cpp"><code>CONFIG += mobility
MOBILITY += multimedia</code></pre>
<p>Now, you only need to write</p>
<pre class="cpp"><code>QT += multimedia</code></pre>
<p>Or, if you want to use the widget classes,</p>
<pre class="cpp"><code>QT += multimedia multimediawidgets</code></pre></td>
</tr>
<tr class="even">
<td>Namespaces</td>
<td>The <code>QtMultimediaKit</code> namespace has been renamed to QMultimedia. This affects a few enumerations, namely <code>SupportEstimate</code>, <code>EncodingQuality</code>, <code>EncodingMode</code> and <code>AvailabilityStatus</code>. Searching and replacing <code>QtMultimediaKit</code> with <code>QMultimedia</code> will greatly aid porting efforts. Metadata have been split off into their own namespace, QMediaMetaData.</td>
</tr>
<tr class="odd">
<td>Metadata types</td>
<td>In Qt Multimedia Kit, pre-defined metadata keys were enumerations in the <code>QtMultimediaKit</code> namespace. These pre-defined keys have been changed to string literals in the <code>QMediaMetaData</code> namespace, for consistency with extended keys.</td>
</tr>
<tr class="even">
<td>Metadata accessor methods</td>
<td>In Qt Multimedia Kit, there were two different families of methods to access metadata. Functions such as <code>QMediaObject::metaData()</code> operated on pre-defined metadata using enumerated keys, while functions such as <code>QMediaObject::extendedMetaData()</code> operated on extended metadata using string keys. Qt 5 combines both families into one (e.g. QMediaObject::metaData()), which can operate on both pre-defined and extended metadata, using string keys.</td>
</tr>
<tr class="odd">
<td>Qt Metatype registration</td>
<td>Qt 5 registers many more classes and types with the meta-object system than before. If you have previously applied Q_DECLARE_METATYPE macros to any Qt Multimedia class, you will probably need to remove them.</td>
</tr>
<tr class="even">
<td>QSoundEffect availability</td>
<td>The SoundEffect QML type was publicly accessible in Qt Multimeda Kit, and now the C++ version is officially public too. If your code contains the previously undocumented QSoundEffect, you may need to update it.</td>
</tr>
<tr class="odd">
<td>Camera controls</td>
<td>A large number of the camera controls (QCameraImageProcessingControl, QCameraFocusControl, etc.) have been updated to address a number of design flaws. In particular, a number of discrete accessor methods have been collapsed into parametrized methods, and the ranges or data types of some parameters have been adjusted.</td>
</tr>
</tbody>
</table>

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
