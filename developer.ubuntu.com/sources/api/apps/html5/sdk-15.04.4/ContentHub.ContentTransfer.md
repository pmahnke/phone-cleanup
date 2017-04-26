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
-   [SDK 15.04.4](../index.html) ›
-   [ContentHub](../ContentHub/index.html) ›

<!-- -->

-   ContentTransfer

ContentTransfer
===============

ContentTransfer is an object created by the ContentHub to and allows one to properly setup and manage a data transfer between two peers.

<span id="ContentTransfer"></span>
**`ContentTransfer`**( `  ` )
##### Example

``` code
  var api = external.getUnityObject('1.0');
      var hub = api.ContentHub;
    
      var pictureContentType = hub.ContentType.Pictures;
    
      hub.defaultSourceForType(
         pictureContentType
         , function(peer) {
           hub.importContentForPeer(
             pictureContentType,
             peer,
             function(transfer) {
               [setup the transfer options and store]
               transfer.start(function(state) { [...] });
             });
          });
```

-   Methods

<span id="destroy"></span>
**`destroy`**( `  ` )
Destroys the remote object. This proxy object is not valid anymore.

<span id="direction"></span>
**`direction`**( `callback ` )
Retrieves the current transfer direction.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**
-   `callback` **&lt;Function(ContentTransfer.Direction)&gt;**

    (optional)

<span id="finalize"></span>
**`finalize`**( `  ` )
Sets State to ContentTransfer.Finalized and cleans up temporary files.

<span id="items"></span>
**`items`**( `callback ` )
Retrieves the list of items associated with the ContentTransfer.

**Parameters:**
-   `callback` **&lt;Function( Objectname: , url:&gt;**

    } )}

<span id="onStateChanged"></span>
**`onStateChanged`**( `callback ` )
Notifies the listener when the state of the transfer changes.

**Parameters:**
-   `callback` **&lt;Function(ContentTransfer.State)&gt;**

<span id="selectionType"></span>
**`selectionType`**( `callback ` )
Retrieves the current selection type.

**Parameters:**
-   `callback` **&lt;Function(ContentTransfer.SelectionType)&gt;**

<span id="setDirection"></span>
**`setDirection`**( `direction, callback ` )
Sets the transfer direction (import or export).

**Parameters:**
-   `direction` **&lt;ContentTransfer.Direction&gt;**
-   `callback` **&lt;Function()&gt;**

    called when the state has been updated

<span id="setItems"></span>
**`setItems`**( `items, callback ` )
Sets the list of items for the associated ContentTransfer (used when exporting).

**Parameters:**
-   `items` **&lt;Array of Objectname: String, url: String&gt;**

    }

-   `callback` **&lt;Function()&gt;**

    called when the state has been updated

<span id="setSelectionType"></span>
**`setSelectionType`**( `selectionType, callback ` )
Sets the selection type (single or multiple).

**Parameters:**
-   `selectionType` **&lt;ContentTransfer.SelectionType&gt;**
-   `callback` **&lt;Function()&gt;**

    called when the state has been updated

<span id="setState"></span>
**`setState`**( `state, callback ` )
Sets the state of the transfer.

**Parameters:**
-   `state` **&lt;ContentTransfer.State&gt;**
-   `callback` **&lt;Function()&gt;**

    called when the state has been updated

<span id="setStore"></span>
**`setStore`**( `store, callback ` )
Sets the current store for the ContentTransfer.

**Parameters:**
-   `store` **&lt;<a href="../ContentHub.ContentStore/index.html" class="crosslink">ContentStore</a>&gt;**
-   `callback` **&lt;Function()&gt;**

    (optional) called when the store has been updated

<span id="start"></span>
**`start`**( `callback ` )
Starts a transfer

**Parameters:**
-   `callback` **&lt;Function(ContentTransfer.State)&gt;**

<span id="state"></span>
**`state`**( `callback ` )
Retrieves the current state.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**
-   `callback` **&lt;Function(ContentTransfer.State)&gt;**

    (optional)

<span id="store"></span>
**`store`**( `callback ` )
Retrieves the current store.

If the callback parameter is not set, the current "local" value is retrieved.

**Parameters:**
-   `callback` **&lt;Function(String)&gt;**

    (optional)

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
