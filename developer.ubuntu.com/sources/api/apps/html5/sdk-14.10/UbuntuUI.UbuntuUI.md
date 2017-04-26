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
-   [SDK 14.10](../index.html) ›
-   [UbuntuUI](../UbuntuUI/index.html) ›

<!-- -->

-   UbuntuUI

UbuntuUI
========

UbuntuUI is the critical Ubuntu HTML5 framework class. You need to construct an UbuntuUI object and initialize it to have an Ubuntu HTML5 app. You then use this object to access Ubuntu HTML5 objects (and object methods) that correspond to the Ubuntu HTML5 DOM elements.

Note: The UbuntuUI object is "UI" in all API doc examples.

<span id="UbuntuUI"></span>
**`UbuntuUI`**( `  ` )
##### Example

``` code
 var UI = new UbuntuUI();
     window.onload = function () {
       UI.init();
       UI.pagestack.push('pageid');
       [...]
     };
```

-   Methods

<span id="button"></span>
Button **`button`**( `id ` )
Gets an Ubuntu Button object

**Parameters:**
-   `id` **&lt;ID&gt;**
    -   The element's id attribute

**Returns:** &lt;Button&gt;
-   The Button with the specified id

<span id="dialog"></span>
Dialog **`dialog`**( `id ` )
Gets an Ubuntu Dialog object

**Parameters:**
-   `id` **&lt;ID&gt;**
    -   The element's id attribute

**Returns:** &lt;Dialog&gt;
-   The Dialog with the specified id

<span id="element"></span>
Element **`element`**( `  ` )
Gets the DOM element from a given selector

**Returns:** &lt;Element&gt;
-   The DOM element Gets the HTML element associated with an Ubuntu HTML5 JavaScript object

<span id="header"></span>
Header **`header`**( `id ` )
Gets an Ubuntu Header object

**Parameters:**
-   `id` **&lt;ID&gt;**
    -   The element's id attribute

**Returns:** &lt;Header&gt;
-   The Header with the specified id

<span id="init"></span>
**`init`**( `  ` )
Required call that initializes the UbuntuUI object

<span id="list"></span>
List **`list`**( `selector ` )
Gets an Ubuntu List

**Parameters:**
-   `selector` **&lt;Selector&gt;**
    -   A selector that JavaScript querySelector method understands

**Returns:** &lt;List&gt;

<span id="optionselector"></span>
OptionSelector **`optionselector`**( `id, expanded, multiSelection ` )
Gets an Ubuntu Option Selector

**Parameters:**
-   `id` **&lt;ID&gt;**
    -   The element's id attribute
-   `expanded` **&lt;Boolean&gt;**
    -   Specifies whether the list is always expanded
-   `multiSelection` **&lt;Boolean&gt;**
    -   If multiple choice selection is enabled the list is always expanded.

**Returns:** &lt;OptionSelector&gt;

<span id="page"></span>
Page **`page`**( `id ` )
Gets an Ubuntu Page object

**Parameters:**
-   `id` **&lt;ID&gt;**
    -   The element's id attribute

**Returns:** &lt;Page&gt;
-   The Page with the specified id

<span id="pagestack"></span>
Pagestack **`pagestack`**( `  ` )
Gets this UbuntuUI's single Pagestack object

**Returns:** &lt;Pagestack&gt;
-   The Pagestack

<span id="popover"></span>
Popover **`popover`**( `el, id ` )
Gets an Ubuntu Popover object

**Parameters:**
-   `el` **&lt;Element&gt;**
    -   The element to which the Popover's position is relative
-   `id` **&lt;ID&gt;**
    -   The element's id attribute

**Returns:** &lt;Popover&gt;
-   The Popover with the specified id

<span id="progress"></span>
Progress **`progress`**( `id ` )
Gets an Ubuntu Progress object

**Parameters:**
-   `id` **&lt;ID&gt;**
    -   The element's id attribute

**Returns:** &lt;Progress&gt;
-   The Progress with the specified id

<span id="shape"></span>
Shape **`shape`**( `id ` )
Gets an Ubuntu Shape object

**Parameters:**
-   `id` **&lt;ID&gt;**
    -   The element's id attribute

**Returns:** &lt;Shape&gt;
-   The Shape with the specified id

<span id="tab"></span>
Tab **`tab`**( `id ` )
Gets an Ubuntu Tab object

**Parameters:**
-   `id` **&lt;ID&gt;**
    -   The element's id attribute

**Returns:** &lt;Tab&gt;
-   The Tab with the specified id

<span id="tabs"></span>
Tabs **`tabs`**( `  ` )
Gets this UbuntuUI's single Tabs object

**Returns:** &lt;Tabs&gt;
-   The Tabs

<span id="toolbar"></span>
Toolbar **`toolbar`**( `id ` )
Gets an Ubuntu Toolbar object

**Parameters:**
-   `id` **&lt;ID&gt;**
    -   The element's id attribute

**Returns:** &lt;Toolbar&gt;
-   The Toolbar with the specified id

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
