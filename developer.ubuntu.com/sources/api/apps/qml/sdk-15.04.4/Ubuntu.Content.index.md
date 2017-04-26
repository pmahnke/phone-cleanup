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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.4</a> ›
-   <a href="../Ubuntu.Content/index.html" class="sub-nav-item">Ubuntu.Content</a> ›

<!-- -->

-   Ubuntu Content API

Ubuntu Content API
==================

<span class="subtitle"></span>
<span id="details"></span> <span id="content-management-exchange"></span> Content Management & Exchange <span id="introduction"></span>
Introduction
------------

Unity and the overall Ubuntu experience put heavy emphasis on the notion of content, with Unity's dash offering streamlined access to arbitrary content, both local to the device or online. More to this, Unity's dash is the primary way of surfacing content on mobile form factors without the need to access individual applications and their respective content silos. The content-hub deals with application-specific content management and implements an architecture that allows an app to define its own content silo, exchange content with other applications/the system, and a way to provide the user with content picking functionality.

<span id="definitions"></span>
Definitions
-----------

To ease conversations, we start over with a set of definitions:

-   **Content item**: A content item is an entity that consists of meta-data and data. E.g., an image is a content item, where the actual pixels are the data, and information like size, image format, bit depth, location etc. is considered meta data. See also [ContentItem](../Ubuntu.Content.ContentItem/index.html).
-   **Content types**: A set of well-known content types. E.g., images or music files. See also [ContentType](../Ubuntu.Content.ContentType/index.html)
-   **Content set**: A set of unique content items. Can be considered a content item itself, e.g., in the case of playlists.
-   **Content owner**: The unique owner of a content item. A content item has to be owned by exactly one app. See also [ContentPeer](../Ubuntu.Content.ContentPeer/index.html)
-   **Content store**: A container (think of it as a top-level folder in the filesystem) that contains content items of a certain type. Different stores exist for different scopes, where scope refers to either system-wide, user-wide or app-specific storage locations. See also [ContentStore](../Ubuntu.Content.ContentStore/index.html)
-   **Content transfer**: Transferring content item/s to and from a source or destination. A transfer is uniquely defined by a source, destination, direction (import or export), and a set of items that should be exchanged. See also [ContentTransfer](../Ubuntu.Content.ContentTransfer/index.html)
-   **Content picking**: Operation that allows a user to select content for subsequent import from a content source (e.g., an application). The content source is responsible for providing a UI to the user.

<span id="architectural-overview"></span>
Architectural Overview
----------------------

The architecture enforces complete application isolation, both in terms of content separation, sandboxing/confinement and in terms of the application lifecycle. As we cannot assume that two apps that want to exchange content are running at the same time, a system-level component needs to mediate and control the content exchange operation, making sure that neither app instance assumes the existence of the other one. We refer to this component as the content hub.

<span id="example-usage-importing-pictures"></span>
Example usage - Importing Pictures
----------------------------------

``` qml
import QtQuick 2.0
import Ubuntu.Components 1.1
import Ubuntu.Content 1.1
Rectangle {
  id: root
  property list<ContentItem> importItems
  property var activeTransfer
  ContentPeer {
      id: picSourceSingle
      contentType: ContentType.Pictures
      handler: ContentHandler.Source
      selectionType: ContentTransfer.Single
  }
  ContentPeer {
      id: picSourceMulti
      contentType: ContentType.Pictures
      handler: ContentHandler.Source
      selectionType: ContentTransfer.Multiple
  }
  Row {
      Button {
          text: "Import single item"
          onClicked: {
              root.activeTransfer = picSourceSingle.request()
          }
      }
      Button {
          text: "Import multiple items"
          onClicked: {
              root.activeTransfer = picSourceMulti.request()
          }
      }
  }
  ContentTransferHint {
      id: transferHint
      anchors.fill: parent
      activeTransfer: root.activeTransfer
  }
  Connections {
      target: root.activeTransfer
      onStateChanged: {
          if (root.activeTransfer.state === ContentTransfer.Charged)
              importItems = root.activeTransfer.items;
      }
  }
}
```

<span id="general-topics"></span> General Topics
-   [ContentHub](../Ubuntu.Content.ContentHub/index.html)
-   [ContentPeer](../Ubuntu.Content.ContentPeer/index.html)
-   [ContentPeerModel](../Ubuntu.Content.ContentPeerModel/index.html)
-   [ContentPeerPicker](../Ubuntu.Content.ContentPeerPicker/index.html)
-   [ContentStore](../Ubuntu.Content.ContentStore/index.html)
-   [ContentTransfer](../Ubuntu.Content.ContentTransfer/index.html)
-   [ContentTransferHint](../Ubuntu.Content.ContentTransferHint/index.html)
-   [ContentType](../Ubuntu.Content.ContentType/index.html)

<span id="reporting-bugs"></span> Reporting Bugs
If you find any problems with the or this documentation, please file a bug in Ubuntu Content API [Launchpad page](https://bugs.launchpad.net/content-hub)

<span id="components"></span> Components
Available through:

``` cpp
    import Ubuntu.Content 1.1
```

**See also** [ContentHub](../Ubuntu.Content.ContentHub/index.html).

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
