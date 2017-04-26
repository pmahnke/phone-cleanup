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
-   [SDK 15.04.1](../index.html) ›
-   [UbuntuUI](../UbuntuUI/index.html) ›

<!-- -->

-   Pagestack

Pagestack
=========

The Pagestack manages all Pages in a stack data structure. Initially, the Pagestack contains no Pages. The &lt;em&gt;push()&lt;/em&gt; method is normally executed on load to display the app starting page.

``` code
 UI.pagestack.push("pageID")
```

The topmost Page on the Pagestack is always displayed.

The Pagestack is declared as a direct child of the &lt;em&gt;content&lt;/em&gt; div.

\#\#\#\#\#Default application wide footer The Pagestack contains a default &lt;em&gt;footer&lt;/em&gt; (represented in JavaScript as a Toolbar), even if you do not declare one in HTML. The &lt;em&gt;footer&lt;/em&gt; has a single Back button. \#\#\#\#\#Customized application wide footer This application-wide &lt;em&gt;footer&lt;/em&gt; can be customized (for example, you can add Buttons) by declaring a &lt;em&gt;footer&lt;/em&gt; as a direct child of the &lt;em&gt;pagestack&lt;/em&gt; div (see example). \#\#\#\#\#\#Page specific footers A &lt;em&gt;page&lt;/em&gt; may declare a page-specific &lt;em&gt;footer&lt;/em&gt; as a child element.

<span id="UbuntuUI.Pagestack"></span>
**`UbuntuUI.Pagestack`**( `  ` )
##### Example

``` code
<div data-role="mainview">
    
       <header data-role="header">
       </header>
    
       <div data-role="content">
    
         <div data-role="pagestack">
    
           <div data-role="page" id="main" data-title="Page 1">
           </div>
    
           <div data-role="page" id="page2" data-title="Page 2">
             [...]
             <footer data-role="footer" class="revealed" id="footerPage2">
               [...]
             </footer>
           </div>
    
           <footer data-role="footer" class="revealed" id="footerAppWide">
             [...]
           </footer>
    
         </div>  <!-- end of Pagestack div -->
    
       </div>
    
     </div>
    
     JavaScript access:
     UI.pagestack.METHOD();
    
```

-   Methods

<span id="clear"></span>
**`clear`**( `  ` )
Clears the whole page stack

<span id="currentPage"></span>
PageID | Null **`currentPage`**( `  ` )
Gets the id attribute of the page element on top of this pagestack

**Returns:** &lt;PageID | Null&gt;
-   The topmost page's id attribute, else null when there are no pages on this pagestack

<span id="depth"></span>
Number **`depth`**( `  ` )
Gets the number of pages in this pagestack

**Returns:** &lt;Number&gt;
-   The number of pages in this pagestack

<span id="isEmpty"></span>
Boolean **`isEmpty`**( `  ` )
Checks for zero pages in this pagestack

**Returns:** &lt;Boolean&gt;
-   True when this pagestack has no pages, else false

<span id="pop"></span>
**`pop`**( `  ` )
Pops the current page off this pagestack, which causes the next page to become the top page and to display

<span id="push"></span>
**`push`**( `id, properties ` )
Push a page to the top of this pagestack

**Parameters:**
-   `id` **&lt;String&gt;**
    -   The id attribute of the page element to be pushed
-   `properties` **&lt;Object&gt;**
    -   A list of properties passed down to the page that is to be activated

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
