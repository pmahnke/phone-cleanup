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
-   [Scopes](../../../index.html) ›
-   [C++](../../index.html) ›
-   [SDK 15.04.5](../index.html) ›
-   [unity.scopes.qt](../unity.scopes.qt/index.html) ›

<!-- -->

-   QPreviewReply

QPreviewReply
=============

Allows the results of a preview to be sent to the preview requester. [More...](index.html#details)

`#include <unity/scopes/qt/QPreviewReply.h>`

Inheritance diagram for unity::scopes::qt::QPreviewReply:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/0bd30626-ebad-45d4-bb4b-a15f353587de-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QPreviewReply/classunity_1_1scopes_1_1qt_1_1_q_preview_reply__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

bool 
<a href="index.html#abe5967042a22327f6ec9d5a1f595968c" class="el">register_layout</a> (QColumnLayoutList const &layouts)
 
Registers a list of column layouts for the current preview. More...
 
bool 
<a href="index.html#a87571e9d961382e967ae6f12560bd755" class="el">push</a> (QPreviewWidgetList const &widget\_list)
 
Sends widget definitions to the sender of the preview query. More...
 
bool 
<a href="index.html#a31c34e45f1eab196c74d3c314881e147" class="el">push</a> (QString const &key, QVariant const &value)
 
Sends data for a preview widget attribute. More...
 
<span id="details"></span>
Detailed Description
--------------------

Allows the results of a preview to be sent to the preview requester.

Member Function Documentation
-----------------------------

<span id="a87571e9d961382e967ae6f12560bd755" class="anchor"></span>
|                                             |     |                             |                |     |     |
|---------------------------------------------|-----|-----------------------------|----------------|-----|-----|
| bool unity::scopes::qt::QPreviewReply::push | (   | QPreviewWidgetList const &  | *widget\_list* | )   |     |

Sends widget definitions to the sender of the preview query.

This method can be called mutiple times to send widgets in stages.

Returns  
True if the query is still alive, false if the query failed or was cancelled.

<span id="a31c34e45f1eab196c74d3c314881e147" class="anchor"></span>
|                                             |     |                   |          |
|---------------------------------------------|-----|-------------------|----------|
| bool unity::scopes::qt::QPreviewReply::push | (   | QString const &   | *key*,   |
|                                             |     | QVariant const &  | *value*  |
|                                             | )   |                   |          |

Sends data for a preview widget attribute.

Returns  
True if the query is still alive, false if the query failed or was cancelled.

<span id="abe5967042a22327f6ec9d5a1f595968c" class="anchor"></span>
|                                                         |     |                            |           |     |     |
|---------------------------------------------------------|-----|----------------------------|-----------|-----|-----|
| bool unity::scopes::qt::QPreviewReply::register\_layout | (   | QColumnLayoutList const &  | *layouts* | )   |     |

Registers a list of column layouts for the current preview.

Layouts must be registered before pushing a <a href="../unity.scopes/index.html#aed3b7b1daf2e49d0a820ef931caa792d" class="el" title="List of preview widgets (see unity::scopes::PreviewWidget) ">unity::scopes::PreviewWidgetList</a>, and must be registered only once.

Returns  
True if the query is still alive, false if the query failed or was cancelled.

<!-- -->

Exceptions  
|                       |                                                                                                                                                                                        |
|-----------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| unity::LogicException | <a href="index.html#abe5967042a22327f6ec9d5a1f595968c" class="el" title="Registers a list of column layouts for the current preview. ">register_layout()</a> is called more than once. |

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
