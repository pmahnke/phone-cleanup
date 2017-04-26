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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.5</a> ›
-   <a href="../Ubuntu.DownloadManager/index.html" class="sub-nav-item">Ubuntu.DownloadManager</a> ›

<!-- -->

-   Ubuntu Download Manager API

Ubuntu Download Manager API
===========================

<span class="subtitle"></span>
<span id="details"></span> <span id="introduction"></span>
Introduction
------------

The application lifecycle model of found in Ubuntu Touch does not ensure that application will be allowed to perform a long running connection to a server in order to perform a download. The Ubuntu Download Manager is a system daemon that leverages the long connections required to perform downloads from the click applications and provides a set of APIs for the application to interact with the downloads.

The download manager is a centralized daemon and therefore must ensure that only those applications

<span id="security"></span>
Security
--------

The download manager is a centralized daemon that can be used by all those applications that are allows to use the networking apparmor profile, due to this fact the downloading daemon ensures that the interaction with a download can only be performed either by the application that originally created the download or by an application that is not confined and that can therefore interact with all the daemons of the application.

Once a download has been created the download manager will ensure that the data being downloaded is stored in a location that can only be accessed by the creating application to ensure that the app confinement is kept.

<span id="components"></span>
Components
----------

Available through:

``` cpp
import Ubuntu.DownloadManager 1.2
```

-   [DownloadManager](../Ubuntu.DownloadManager.DownloadManager/index.html)
-   [SingleDownload](../Ubuntu.DownloadManager.SingleDownload/index.html)
-   [Metadata](../Ubuntu.DownloadManager.Metadata/index.html)

<span id="example-usage-downloading-a-file"></span>
Example usage - Downloading a file
----------------------------------

``` qml
import QtQuick 2.0
import Ubuntu.Components 1.2
import Ubuntu.DownloadManager 1.2
Rectangle {
    width: units.gu(100)
    height: units.gu(20)
    TextField {
        id: text
        placeholderText: "File URL to download..."
        height: 50
        anchors {
            left: parent.left
            right: button.left
            rightMargin: units.gu(2)
        }
    }
    Button {
        id: button
        text: "Download"
        height: 50
        anchors.right: parent.right
        onClicked: {
            single.download(text.text);
        }
    }
    ProgressBar {
        minimumValue: 0
        maximumValue: 100
        value: single.progress
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
        SingleDownload {
            id: single
        }
    }
}
```

<span id="reporting-bugs"></span> Reporting Bugs
If you find any problems with the module or this documentation, please file a bug in the Ubuntu Download Manager [Launchpad page](https://bugs.launchpad.net/ubuntu-download-manager)

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
