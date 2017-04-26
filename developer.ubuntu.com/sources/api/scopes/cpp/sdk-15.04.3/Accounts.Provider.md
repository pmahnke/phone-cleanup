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
-   [SDK 15.04.3](../index.html) ›
-   [Accounts](../Accounts/index.html) ›

<!-- -->

-   Provider

Provider
========

Representation of an account provider. [More...](../../sdk-15.04.1/Accounts.Provider/index.html#details)

`#include <Accounts/Provider>`

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

<span id="a0a281cda2c25f17e851f76142d4527a0" class="anchor"></span>  
<a href="../../sdk-15.04.1/Accounts.Provider/index.html#a0a281cda2c25f17e851f76142d4527a0" class="el">Provider</a> ()
 
Construct an invalid provider.
 
 
<a href="../../sdk-15.04.1/Accounts.Provider/index.html#abff16d2acc53f89d7f633e85a4b90634" class="el">Provider</a> (const <a href="../../sdk-15.04.1/Accounts.Provider/index.html" class="el">Provider</a> &other)
 
Copy constructor. More...
 
<span id="a2ea3187c2cc7f9464d47da1aada7d78c" class="anchor"></span> <a href="../../sdk-15.04.1/Accounts.Provider/index.html" class="el">Provider</a> & 
**operator=** (const <a href="../../sdk-15.04.1/Accounts.Provider/index.html" class="el">Provider</a> &other)
 
bool 
<a href="../../sdk-15.04.1/Accounts.Provider/index.html#aac1b70a2ed67ead038c4d3f5ac4d8a81" class="el">isValid</a> () const
 
Check whether this object represents a Provider. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Provider/index.html#a2b0a198f837184bf6fff555cee3ce770" class="el">name</a> () const
 
Get the name of the provider. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Provider/index.html#a9def71dea12661002bb3a63b3b91d08d" class="el">displayName</a> () const
 
Get the display name of the provider, untranslated. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Provider/index.html#aeaebc63d2181b1a4506603f4e03f1275" class="el">description</a> () const
 
Get the description of the provider, untranslated. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Provider/index.html#ac7fe5a9dd669a037edfa2930803311a5" class="el">pluginName</a> () const
 
Get the name of the account plugin associated with the provider. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Provider/index.html#a6c73afd4753195ea4eee794c95a770dd" class="el">trCatalog</a> () const
 
QString 
<a href="../../sdk-15.04.1/Accounts.Provider/index.html#a038b22680aca535f9972908fe2f1f6a1" class="el">iconName</a> () const
 
QString 
<a href="../../sdk-15.04.1/Accounts.Provider/index.html#ab0c2fc656cae3b09e456ec0747315ecc" class="el">domainsRegExp</a> () const
 
bool 
<a href="../../sdk-15.04.1/Accounts.Provider/index.html#aa785668bfd84285ad40299410c02367d" class="el">isSingleAccount</a> () const
 
const QDomDocument 
<a href="../../sdk-15.04.1/Accounts.Provider/index.html#a305fe3a04c76c8069c3465621a7967cc" class="el">domDocument</a> () const
 
<span id="friends"></span> Friends
----------------------------------

<span id="acad7a7994506519762f09b8a66c91c6a" class="anchor"></span> bool 
**operator==** (const <a href="../../sdk-15.04.1/Accounts.Provider/index.html" class="el">Accounts::Provider</a> &p1, const <a href="../../sdk-15.04.1/Accounts.Provider/index.html" class="el">Accounts::Provider</a> &p2)
 
<span id="details"></span>
Detailed Description
--------------------

Representation of an account provider.

The <a href="../../sdk-15.04.1/Accounts.Provider/index.html" class="el" title="Representation of an account provider. ">Provider</a> object represents an account provider. It can be used to retrieve some basic properties of the provider (such as the name) and to get access to the contents of the XML file which defines it.

Definition at line 48 of file provider.h.

Constructor & Destructor Documentation
--------------------------------------

<span id="abff16d2acc53f89d7f633e85a4b90634" class="anchor"></span>
|                                                                                  |     |                                                                                           |         |     |     |
|----------------------------------------------------------------------------------|-----|-------------------------------------------------------------------------------------------|---------|-----|-----|
| <a href="../../sdk-15.04.1/Accounts.Provider/index.html" class="el">Provider</a> | (   | const <a href="../../sdk-15.04.1/Accounts.Provider/index.html" class="el">Provider</a> &  | *other* | )   |     |

Copy constructor.

Copying a <a href="../../sdk-15.04.1/Accounts.Provider/index.html" class="el" title="Representation of an account provider. ">Provider</a> object is very cheap, because the data is shared among copies.

Definition at line 65 of file provider.cpp.

Member Function Documentation
-----------------------------

<span id="aeaebc63d2181b1a4506603f4e03f1275" class="anchor"></span>
|                     |     |     |     |       |
|---------------------|-----|-----|-----|-------|
| QString description | (   |     | )   | const |

Get the description of the provider, untranslated.

Returns  
The description of the provider.

Definition at line 124 of file provider.cpp.

<span id="a9def71dea12661002bb3a63b3b91d08d" class="anchor"></span>
|                     |     |     |     |       |
|---------------------|-----|-----|-----|-------|
| QString displayName | (   |     | )   | const |

Get the display name of the provider, untranslated.

Returns  
The display name of the provider.

Definition at line 115 of file provider.cpp.

<span id="ab0c2fc656cae3b09e456ec0747315ecc" class="anchor"></span>
|                       |     |     |     |       |
|-----------------------|-----|-----|-----|-------|
| QString domainsRegExp | (   |     | )   | const |

Returns  
A regular expression pattern which matches all the internet domains in which this type of account can be used.

Definition at line 161 of file provider.cpp.

<span id="a305fe3a04c76c8069c3465621a7967cc" class="anchor"></span>
|                                |     |     |     |       |
|--------------------------------|-----|-----|-----|-------|
| const QDomDocument domDocument | (   |     | )   | const |

Returns  
The DOM of the whole XML provider file.

Definition at line 177 of file provider.cpp.

<span id="a038b22680aca535f9972908fe2f1f6a1" class="anchor"></span>
|                  |     |     |     |       |
|------------------|-----|-----|-----|-------|
| QString iconName | (   |     | )   | const |

Returns  
The provider icon name.

Definition at line 152 of file provider.cpp.

<span id="aa785668bfd84285ad40299410c02367d" class="anchor"></span>
|                      |     |     |     |       |
|----------------------|-----|-----|-----|-------|
| bool isSingleAccount | (   |     | )   | const |

Returns  
Whether the provider supports creating one account at most.

Definition at line 169 of file provider.cpp.

<span id="aac1b70a2ed67ead038c4d3f5ac4d8a81" class="anchor"></span>
|              |     |     |     |       |
|--------------|-----|-----|-----|-------|
| bool isValid | (   |     | )   | const |

Check whether this object represents a <a href="../../sdk-15.04.1/Accounts.Provider/index.html" class="el" title="Representation of an account provider. ">Provider</a>.

Returns  
true if the <a href="../../sdk-15.04.1/Accounts.Provider/index.html" class="el" title="Representation of an account provider. ">Provider</a> is a valid one.

Definition at line 95 of file provider.cpp.

Referenced by Provider::name().

<span id="a2b0a198f837184bf6fff555cee3ce770" class="anchor"></span>
|              |     |     |     |       |
|--------------|-----|-----|-----|-------|
| QString name | (   |     | )   | const |

Get the name of the provider.

This can be used as a unique identifier for this provider.

Returns  
The unique name of the provider.

Definition at line 105 of file provider.cpp.

References Provider::isValid().

<span id="ac7fe5a9dd669a037edfa2930803311a5" class="anchor"></span>
|                    |     |     |     |       |
|--------------------|-----|-----|-----|-------|
| QString pluginName | (   |     | )   | const |

Get the name of the account plugin associated with the provider.

Some platforms might find it useful to store plugin names in the provider XML files, especially when the same plugin can work for different providers.

Returns  
The plugin name.

Definition at line 135 of file provider.cpp.

<span id="a6c73afd4753195ea4eee794c95a770dd" class="anchor"></span>
|                   |     |     |     |       |
|-------------------|-----|-----|-----|-------|
| QString trCatalog | (   |     | )   | const |

Returns  
The name of the translation catalog, which can be used to translate the <a href="../../sdk-15.04.1/Accounts.Provider/index.html#a9def71dea12661002bb3a63b3b91d08d" class="el" title="Get the display name of the provider, untranslated. ">displayName()</a>.

Definition at line 144 of file provider.cpp.

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
