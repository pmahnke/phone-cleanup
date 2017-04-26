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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.3</a> ›
-   <a href="../QtMultimedia/index.html" class="sub-nav-item">QtMultimedia</a> ›

<!-- -->

-   Spectrum Example

Spectrum Example
================

<span class="subtitle"></span>
<span id="details"></span>
*Spectrum* demonstrates how the [Qt Multimedia](../QtMultimedia.qtmultimedia-index/index.html) module can be used to analyze an audio stream while recording it, and also play the recorded stream.

![](https://developer.ubuntu.com/static/devportal_uploaded/d22a1a66-5c14-48a0-a0ec-5534dddc0b06-api/apps/qml/sdk-15.04.3/qtmultimedia-spectrum-example/images/spectrum-demo.png)

Because Qt Multimedia allows the application to access the raw audio stream, the data can either be inspected or modified by the application. The Spectrum Analyzer example displays three pieces of information while audio is being either captured or played back:

-   Information about the raw audio stream, shown in the uppermost widget:
    -   The amount of data currently in the buffer, shown in blue
    -   The segment of data which was most recently analysed to compute the frequency spectrum, shown in green
    -   The raw audio waveform, shown in white and scrolling from right to left
-   A representation of the frequency spectrum, shown at the lower left
-   The current RMS level of the audio stream, and the recent 'high watermark' level, shown at the lower right

Spectrum analysis is performed by calculating the Fast Fourier Transform (FFT) of a segment of audio data. An open-source library, [FFTReal](http://ldesoras.free.fr/prod.html), against which the application is dynamically linked, is used to compute the transform.

<span id="running-the-example"></span>
Running the Example
-------------------

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

Files:

-   spectrum/3rdparty/fftreal/Array.h
-   spectrum/3rdparty/fftreal/DynArray.h
-   spectrum/3rdparty/fftreal/FFTReal.h
-   spectrum/3rdparty/fftreal/FFTRealFixLen.h
-   spectrum/3rdparty/fftreal/FFTRealFixLenParam.h
-   spectrum/3rdparty/fftreal/FFTRealPassDirect.h
-   spectrum/3rdparty/fftreal/FFTRealPassInverse.h
-   spectrum/3rdparty/fftreal/FFTRealSelect.h
-   spectrum/3rdparty/fftreal/FFTRealUseTrigo.h
-   spectrum/3rdparty/fftreal/OscSinCos.h
-   spectrum/3rdparty/fftreal/TestAccuracy.h
-   spectrum/3rdparty/fftreal/TestHelperFixLen.h
-   spectrum/3rdparty/fftreal/TestHelperNormal.h
-   spectrum/3rdparty/fftreal/TestSpeed.h
-   spectrum/3rdparty/fftreal/TestWhiteNoiseGen.h
-   spectrum/3rdparty/fftreal/def.h
-   spectrum/3rdparty/fftreal/fftreal\_wrapper.cpp
-   spectrum/3rdparty/fftreal/fftreal\_wrapper.h
-   spectrum/3rdparty/fftreal/test.cpp
-   spectrum/3rdparty/fftreal/test\_fnc.h
-   spectrum/3rdparty/fftreal/test\_settings.h
-   spectrum/3rdparty/fftreal/stopwatch/ClockCycleCounter.cpp
-   spectrum/3rdparty/fftreal/stopwatch/ClockCycleCounter.h
-   spectrum/3rdparty/fftreal/stopwatch/Int64.h
-   spectrum/3rdparty/fftreal/stopwatch/StopWatch.cpp
-   spectrum/3rdparty/fftreal/stopwatch/StopWatch.h
-   spectrum/3rdparty/fftreal/stopwatch/def.h
-   spectrum/3rdparty/fftreal/stopwatch/fnc.h
-   spectrum/app/engine.cpp
-   spectrum/app/engine.h
-   spectrum/app/frequencyspectrum.cpp
-   spectrum/app/frequencyspectrum.h
-   spectrum/app/levelmeter.cpp
-   spectrum/app/levelmeter.h
-   spectrum/app/mainwidget.cpp
-   spectrum/app/mainwidget.h
-   spectrum/app/progressbar.cpp
-   spectrum/app/progressbar.h
-   spectrum/app/settingsdialog.cpp
-   spectrum/app/settingsdialog.h
-   spectrum/app/spectrograph.cpp
-   spectrum/app/spectrograph.h
-   spectrum/app/spectrum.h
-   spectrum/app/spectrumanalyser.cpp
-   spectrum/app/spectrumanalyser.h
-   spectrum/app/tonegenerator.cpp
-   spectrum/app/tonegenerator.h
-   spectrum/app/tonegeneratordialog.cpp
-   spectrum/app/tonegeneratordialog.h
-   spectrum/app/utils.cpp
-   spectrum/app/utils.h
-   spectrum/app/waveform.cpp
-   spectrum/app/waveform.h
-   spectrum/app/wavfile.cpp
-   spectrum/app/wavfile.h
-   spectrum/app/main.cpp
-   spectrum/spectrum.pro
-   spectrum/3rdparty/fftreal/fftreal.pro
-   spectrum/app/app.pro
-   spectrum/app/spectrum.qrc

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
