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
-   [UbuntuUI](../UbuntuUI/index.html) ›

<!-- -->

-   Page

Page
====

One of the navigation pattern that can be used within an Ubuntu App is the deep navigation. This pattern is implemented by the Pagestack. A Pagestack contains one or more Pages. Each page displays full-screen. See the Pagestack class.

Each Page must have &lt;em&gt;id&lt;/em&gt; and &lt;em&gt;data-title&lt;/em&gt; attributes. The &lt;em&gt;id&lt;/em&gt; attribute is used a unique reference to push the Page to the top of the Pagestack (see the Pagestack class). The &lt;em&gt;data-title&lt;/em&gt; attribute is used to update the Header title as pages are pushed and poped.

<span id="UbuntuUI.Page"></span>
**`UbuntuUI.Page`**( `  ` )
##### Example

``` code
 </body>
       <div data-role="mainview">
    
         <header data-role="header">
         </header>
    
         <div data-role="content">
           <div data-role="pagestack">
             <div data-role="page" data-title="Main" id="main">
               [...]
             </div>
             <div data-role="page" data-title="My Data" id="data">
               [...]
             </div>
           </div>
         </div>
    
       </div>
     </body>
    
     JavaScript access:
     var page = UI.page("pageID");
```

-   Methods
-   Properties

<span id="activate"></span>
**`activate`**( `properties ` )
Activates the current page.

**Parameters:**
-   `properties` **&lt;Object&gt;**
    -   Data to be passed down to any activation callback listening for the page activation (see Page.onactivated)

<span id="deactivate"></span>
**`deactivate`**( `  ` )
Deactivates the current page.

<span id="element"></span>
**`element`**( `  ` )
Returns the DOM element associated with the selector this widget is bind to.

##### Example

``` code
  var mypage = UI.page("pageid").element();
```

<span id="isPage"></span>
Boolean **`isPage`**( `  ` )
Validates that a given DOM node element is a Ubuntu UI Page.

**Returns:** &lt;Boolean&gt;
if the DOM element is a page

<span id="onactivated"></span>
**`onactivated`**( `callback ` )
Activates the current page.

**Parameters:**
-   `callback` **&lt;Function&gt;**
    -   Callback function called with activation properties (from Pagestack.push) when the page is activated

<span id="actions"></span>
`actions` &lt;**List**&gt;
actions property.

<span id="title"></span>
`title` &lt;**String**&gt;
title property.

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
