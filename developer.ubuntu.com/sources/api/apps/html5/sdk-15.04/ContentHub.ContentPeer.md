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
-   [SDK 15.04](../index.html) ›
-   [ContentHub](../ContentHub/index.html) ›

<!-- -->

-   ContentPeer

ContentPeer
===========

ContentPeer is an object returned by the ContentHub. It represents a remote peer that can be used in a request to import, export or share content.

<span id="ContentPeer"></span>
**`ContentPeer`**( `  ` )
##### Example

``` code
  var api = external.getUnityObject('1.0');
      var hub = api.ContentHub;
    
      var pictureContentType = hub.ContentType.Pictures;
    
      hub.defaultSourceForType(
         pictureContentType
         , function(peer) {
            [do something with the peer]
          });
```

-   Methods

<span id="appId"></span>
String **`appId`**( `callback ` )
Retrieves the app Id of the associated peer.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**
-   `callback` **&lt;Function(String)&gt;**

    (optional)

**Returns:** &lt;String&gt;
Application Id for this peer

<span id="contentType"></span>
String **`contentType`**( `callback ` )
Retrieves the specific ContentType for this peer.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**
-   `callback` **&lt;Function(String)&gt;**

    (optional)

**Returns:** &lt;String&gt;
ContentType for this peer

<span id="destroy"></span>
**`destroy`**( `  ` )
Destroys the remote object. This proxy object is not valid anymore.

<span id="handler"></span>
String **`handler`**( `callback ` )
Retrieves the specific ContentHandler for this peer.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**
-   `callback` **&lt;Function(String)&gt;**

    (optional)

**Returns:** &lt;String&gt;
ContentHandler for this peer

<span id="isDefaultPeer"></span>
**`isDefaultPeer`**( `callback ` )
Returns true if the peer is a default one, false otherwise.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**
-   `callback` **&lt;Function(Bool)&gt;**

    (optional)

<span id="name"></span>
**`name`**( `callback ` )
Retrieves the name of the associated peer.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**
-   `callback` **&lt;Function(String)&gt;**

    (optional)

<span id="request"></span>
**`request`**( `callback ` )
Request to exchange content with this ContentPeer.

**Parameters:**
-   `callback` **&lt;Function(ContentTransfer)&gt;**

    Called with the resulting content transfer

<span id="requestForStore"></span>
**`requestForStore`**( `store, callback ` )
Request to import content from this ContentPeer and use a ContentStore for permanent storage.

**Parameters:**
-   `store` **&lt;<a href="../ContentHub.ContentStore/index.html" class="crosslink">ContentStore</a>&gt;**

    Store used as a permanent storage

-   `callback` **&lt;Function(ContentTransfer)&gt;**

    Called with the resulting content transfer

<span id="selectionType"></span>
String **`selectionType`**( `callback ` )
Retrieves the specific SelectionType for this peer.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**
-   `callback` **&lt;Function(String)&gt;**

    (optional)

**Returns:** &lt;String&gt;
ContentTransfer.SelectionType for this peer

<span id="setAppId"></span>
**`setAppId`**( `appId, callback ` )
Sets the app Id of the associated peer.

**Parameters:**
-   `appId` **&lt;String&gt;**
-   `callback` **&lt;Function()&gt;**

    called when the appId has been updated

<span id="setContentType"></span>
**`setContentType`**( `contentType, callback ` )
Sets specific ContentType for this peer.

**Parameters:**
-   `contentType` **&lt;ContentType&gt;**
-   `callback` **&lt;Function()&gt;**

    called when the content type has been updated

<span id="setHandler"></span>
**`setHandler`**( `handler, callback ` )
Sets specific ContentHandler for this peer.

**Parameters:**
-   `handler` **&lt;ContentHandler&gt;**
-   `callback` **&lt;Function()&gt;**

    called when the appId has been updated

<span id="setSelectionType"></span>
**`setSelectionType`**( `selectionType, callback ` )
Sets specific SelectionType for this peer.

**Parameters:**
-   `selectionType` **&lt;ContentTransfer.SelectionType&gt;**
-   `callback` **&lt;Function()&gt;**

    called when the content type has been updated

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
