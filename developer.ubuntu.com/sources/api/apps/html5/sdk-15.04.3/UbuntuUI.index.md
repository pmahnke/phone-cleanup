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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.3</a> ›
-   <a href="../UbuntuUI/index.html" class="sub-nav-item">UbuntuUI</a> ›

<!-- -->

-   Ubuntu HTML5 API

Ubuntu HTML5 API
================

These pages provide reference docs for the Ubunbtu HTML5 framework.

See [developer.ubuntu.com](http://developer.ubuntu.com) for more information on writing Ubuntu HTML5 apps, including: using the Ubuntu SDK, creating HTML5 app projects, importing Ubuntu HTML5 CSS and JavaScript into your app, and more.

#### Ubuntu HTML5 widgets

The Ubuntun HTML5 framework provides a set of "widgets" you use to build an application in the Ubuntu style (see design.ubuntu.com for descriptions of Ubuntu app "building blocks" with links to APIs for each supported implementation toolkit). For example, an Ubuntu HTML5 app has a dynamic Header with Tabs that together provide navigation through the app's Pages. Pages may contain Lists, Popovers, Buttons, Shapes, and a lot more. The app has a Footer (also called a Toolbar) to which you can add Buttons. There are many options and the list keeps growing!

Each widget has its HTML part, a corresponding JavaScript object (many of which provide additional methods), and CSS styles.

#### What you need to know

To write Ubuntu HTML5 apps, you need to know:

-   How to *declare* each widget type in HTML
-   How to acces the JavaScript widget objects and use their methods
-   How to initialize the Ubuntu HTML5 framework at app load time

These topics are introduced here and explained in the class documentation.

#### Elements and special attributes

Ubuntu HTML5 apps use normal HTML/HTML5 elements (like &lt;div&gt;, &lt;section&gt;, &lt;ul&gt;, and so on). However, special attributes are added to some key elements to declare them as Ubuntu HTML5 elements. This connects them with the Ubuntu HTML5 JavaScript framework. The *data-role* attribute is often used. Its value indicates the type of Ubuntu HTML5 element. For example, here's a button: &lt;button data-role="button"&gt;.

Making correct HTML declarations is necessary to connect your DOM elements to the Ubuntu HTML5 JavaScript framework and to Ubuntu HTML CSS styles. See the JavaScript class docs for sample HTML declarations.
#### *id* attributes

You can declare most Ubuntu HTML5 elements without *id* attributes. They will pick up the CSS styles and look fine. But, you generally need an *id* attribute to access the corresponding JavaScript objects. So it's a good idea to add them.

#### JavaScript classes and methods

Almost every Ubuntu HTML5 DOM element has a corresponding Ubuntu HTML5 JavaScript object. These are created automatically when you create an UbuntuUI object and execute its init() method. (This is usually done at startup, for example in the *window.onload* function).

Many of these classes/objects have additional methods. For example, the List class provides methods to add items to the list, remove an item, apply a function to all items, and more.

#### How these docs are organized

These pages or organized by the Ubuntu HTML5 JavaScript classes. Each class has an example showing how the corresponding HTML is declared (as needed). And of course each class has API documentation explaining usage of all (public) methods.

The single most important class is UbuntuUI, so start there.

Then, an Ubuntu HTML5 app is structured as a PageStack of Pages, so be sure to visit those classes.

#### Ubuntu HTML5 CSS

Be sure to check out the Ubuntu HTML5 CSS files you import into your app. They provide a set of styles that theme the HTML5 widgets to the Ubuntu app design and style.

#### Let's grow this!

Let's work together to keep HTML5 as a top-notch app development framework on Ubuntu. Everyone can help by filing bugs, triaging them, and of course, fixing them. So let's get to work writing apps!

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
