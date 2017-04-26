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

-   List

List
====

A List comes with various options, including: a &lt;em&gt;header&lt;/em&gt;, main text (pushed left), an icon (pushed left), and a secondary label (pushed right).

<span id="UbuntuUI.List"></span>
**`UbuntuUI.List`**( `  ` )
##### Example

``` code
<section data-role="list" id="testlist">
      <header>My header text</header>
      <ul>
        <li>
          <a href="#">Main text, to the left</a>
        </li>
        <li>
          <a href="#">Main text</a>
          <label>Right text</label>
        </li>
        <li>
          <aside>
            <img src="someicon.png">
          </aside>
          <a href="#">Main text</a>
          <label>Right</label>
        </li>
      </ul>
     </section>
    
     JavaScript access:
       var list = UI.list('[id="testlist"]');
```

-   Methods

<span id="append"></span>
Element **`append`**( `text, label, id, onclick, user_data ` )
Append an item to a list

**Parameters:**
-   `text` **&lt;String&gt;**
    -   The main text, flushed left (no markup)
-   `label` **&lt;String&gt;**
    -   Additional text, flushed right (no markup)
-   `id` **&lt;ID&gt;**
    -   An id attribute value set for the new list item (must be unique in DOM)
-   `onclick` **&lt;Function&gt;**
    -   The click callback function
-   `user_data` **&lt;Object&gt;**
    -   Additional data that is passed to the click callback

**Returns:** &lt;Element&gt;
-   The created list item, or null on failure ot create

<span id="at"></span>
**`at`**( `index ` )
Gets a list item &lt;li&gt; by its index, where index counting starts from 1

**Parameters:**
-   `index` **&lt;Number&gt;**

**Returns:**
The list item, or null on failure

<span id="element"></span>
DOMElement **`element`**( `  ` )
Returns the DOM element associated with the selector this widget is bind to.

**Returns:** &lt;DOMElement&gt;

##### Example

``` code
       var mylist = UI.list("#listid").element();
```

<span id="forEach"></span>
**`forEach`**( `func ` )
Iterates over all list items and runs a provided function on each

**Parameters:**
-   `func` **&lt;Function&gt;**
    -   The function to run on each list item

<span id="remove"></span>
**`remove`**( `index ` )
Removes a list item &lt;li&gt; by its index, where index counting starts from 1

**Parameters:**
-   `index` **&lt;Number&gt;**

<span id="removeAllItems"></span>
**`removeAllItems`**( `  ` )
Removes all items from a list

<span id="setHeader"></span>
**`setHeader`**( `text ` )
Add or Set the List Header

**Parameters:**
-   `text` **&lt;String&gt;**
    -   The header text

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
