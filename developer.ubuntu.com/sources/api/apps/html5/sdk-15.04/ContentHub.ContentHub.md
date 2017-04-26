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

-   ContentHub

ContentHub
==========

The ContentHub object.

<span id="ContentHub"></span>
**`ContentHub`**( `  ` )

-   Methods
-   Properties

<span id="api.importContent"></span>
**`api.importContent`**( `type, peer, transferOptions, onError, onSuccess ` )
Creates a ContentStore object for the given ContentPeer.

**Parameters:**
-   `type` **&lt;ContentType&gt;**

    type of the content to import

-   `peer` **&lt;<a href="../ContentHub.ContentPeer/index.html" class="crosslink">ContentPeer</a>&gt;**

    peer who's content should be imported

-   `transferOptions` **&lt;Object&gt;**

    a dictionary of transfer options. The options are the following:

    -   multipleFiles {Bool}: specified if a transfer should involve multiple files or not
    -   scope {ContentScope}: specifies the location where the transferred files should be copied to

-   `onError` **&lt;Function(reason:)&gt;**

    called when the transfer has failed

-   `onSuccess` **&lt;Function(Array of ContentItem&gt;**

    )} called when the transfer has been a success and items are available

<span id="getPeers"></span>
**`getPeers`**( `filters, callback ` )
Creates a ContentPeer object for the given source type.

**Parameters:**
-   `filters` **&lt;Object&gt;**

    A dictionary of parameters to filter the result. The filtering keys are:

    -   contentType: desired ContentType
    -   handler: desired ContentHandler

-   `callback` **&lt;Function(List of ContentPeer objects)&gt;**

    Callback that receives the result or null

<span id="getStore"></span>
**`getStore`**( `scope, callback ` )
Creates a ContentStore object for the given scope type.

**Parameters:**
-   `scope` **&lt;ContentScope&gt;**

    The content scope for the store

-   `callback` **&lt;Function(ContentStore)&gt;**

    Callback that receives the result or null

<span id="launchContentPeerPicker"></span>
**`launchContentPeerPicker`**( `filters, onPeerSelected, onCancelPressed ` )
Launches the content peer picker ui that allows the user to select a peer.

**Parameters:**
-   `filters` **&lt;Object&gt;**

    A dictionary of parameters to filter the result. The filtering keys are:

    -   contentType: desired ContentType
    -   handler: desired ContentHandler
    -   showTitle: boolean value indicating if the title should be visible

-   `onPeerSelected` **&lt;Function(ContentPeer)&gt;**

    Called when the user has selected a peer

-   `onCancelPressed` **&lt;Function()&gt;**

    Called when the user has pressed cancel

<span id="onExportRequested"></span>
**`onExportRequested`**( `callback ` )
Sets a handler that is to be called when the current application is the target of an export request.

**Parameters:**
-   `callback` **&lt;Function(ContentTransfer)&gt;**

    Function when one requests a resource to be exported. The corresponding ContentTransfer is provided as a parameter.

##### Example

``` code
       var api = external.getUnityObject(1.0);
                       var hub = api.ContentHub;
                    
                       var transferState = hub.ContentTransfer.State;
                       
                       function _exportRequested(transfer) {
                         var url = window.location.href;
                         url = url.substr(0, url.lastIndexOf('/')+1) + 'img/ubuntuone-music.png';
                       
                         transfer.setItems([{name: 'Ubuntu One', url: url}],
                           function() {
                             transfer.setState(hub.ContentTransfer.State.Charged);
                           });
                         };
                       
                       hub.onExportRequested(_exportRequested);
                
```

<span id="onImportRequested"></span>
**`onImportRequested`**( `callback ` )
Sets a handler that is to be called when the current application is the target of an import request.

**Parameters:**
-   `callback` **&lt;Function(ContentTransfer)&gt;**

    Function when one requests a resource to be imported. The corresponding ContentTransfer is provided as a parameter.

##### Example

``` code
       var api = external.getUnityObject(1.0);
                       var hub = api.ContentHub;
                
                       var transferState = hub.ContentTransfer.State;
                
                       function _importRequested(transfer) {
                       };
                
                       hub.onImportRequested(_importRequested);
                
```

<span id="onShareRequested"></span>
**`onShareRequested`**( `callback ` )
Sets a handler that is to be called when the current application is the target of an share request.

**Parameters:**
-   `callback` **&lt;Function(ContentTransfer)&gt;**

    Function when one requests a resource to be shared. The corresponding ContentTransfer is provided as a parameter.

##### Example

``` code
       var api = external.getUnityObject(1.0);
                       var hub = api.ContentHub;
                
                       var transferState = hub.ContentTransfer.State;
                
                       function _shareRequested(transfer) {
                       };
                
                       hub.onShareRequested(_shareRequested);
                
```

<span id="ContentHandler"></span>
`ContentHandler` &lt;**String**&gt; *(static)*
ContentHandler is an enumeration of well known content handlers.

Values:

Source

Destination

Share

<span id="ContentScope"></span>
`ContentScope` &lt;**String**&gt; *(static)*
ContentScope is an enumeration of well known scope types.

Values:

System

User

App

<span id="ContentTransfer.Direction"></span>
`ContentTransfer.Direction` &lt;**String**&gt; *(static)*
ContentTransfer.Direction is an enumeration of the directions of a given ContentTransfer.

Values:

Import

Export

Share

<span id="ContentTransfer.SelectionType"></span>
`ContentTransfer.SelectionType` &lt;**String**&gt; *(static)*
ContentTransfer.SelectionType is an enumeration of the directions of a given ContentTransfer.

Values:

Single: Transfer should contain a single item

Multiple: Transfer can contain multiple items

<span id="ContentTransfer.State"></span>
`ContentTransfer.State` &lt;**String**&gt; *(static)*
ContentTransfer.State is an enumeration of the state of a given ongoing ContentTransfer.

Values:

Created: Transfer created, waiting to be initiated.

Initiated: Transfer has been initiated.

InProgress: Transfer is in progress.

Charged: Transfer is charged with items and ready to be collected.

Collected: Items in the transfer have been collected.

Aborted: Transfer has been aborted.

Finalized: Transfer has been finished and cleaned up.

Downloaded: Download specified by downloadId has completed.

Downloading: Transfer is downloading item specified by downloadId.

##### Example

var api = external.getUnityObject('1.0'); var hub = api.ContentHub;

var transferState = hub.ContentTransfer.State; var pictureContentType = hub.ContentType.Pictures;

hub.importContentForPeer( pictureContentType, peer, function(transfer) { hub.defaultStoreForType(pictureContentType, function(store) { transfer.setStore(store, function() { transfer.start(function(state) { if (transferState.Aborted === state) { \[...\] } \[...\] }); }); }); });

<span id="ContentType"></span>
`ContentType` &lt;**String**&gt; *(static)*
ContentType is an enumeration of well known content types.

Values:

``` code
Pictures
                
                Documents
                
                Music
                
                Contacts
                
                Videos
                
                Links
```

##### Example

var api = external.getUnityObject('1.0'); var hub = api.ContentHub;

var pictureContentType = hub.ContentType.Pictures;

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
