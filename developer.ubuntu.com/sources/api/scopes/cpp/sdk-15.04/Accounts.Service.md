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
-   [SDK 15.04](../index.html) ›
-   [Accounts](../Accounts/index.html) ›

<!-- -->

-   Service

Service
=======

Representation of an account service. [More...](index.html#details)

`#include <Accounts/Service>`

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

<span id="a37865e4e61715c6d6f81181f7323ae62" class="anchor"></span>  
<a href="index.html#a37865e4e61715c6d6f81181f7323ae62" class="el">Service</a> ()
 
Construct an invalid service.
 
 
<a href="index.html#a491f7a1e2b9dfedb805d55c06ca006df" class="el">Service</a> (const <a href="index.html" class="el">Service</a> &other)
 
Copy constructor. More...
 
<span id="acc48a1d85689d512416f5a8cc982b0b4" class="anchor"></span> <a href="index.html" class="el">Service</a> & 
**operator=** (const <a href="index.html" class="el">Service</a> &other)
 
bool 
<a href="index.html#aac1b70a2ed67ead038c4d3f5ac4d8a81" class="el">isValid</a> () const
 
Check whether this object represents a Service. More...
 
QString 
<a href="index.html#a2b0a198f837184bf6fff555cee3ce770" class="el">name</a> () const
 
Get the name of the service. More...
 
QString 
<a href="index.html#a9def71dea12661002bb3a63b3b91d08d" class="el">displayName</a> () const
 
Get the display name of the service, untranslated. More...
 
QString 
<a href="index.html#a6c73afd4753195ea4eee794c95a770dd" class="el">trCatalog</a> () const
 
QString 
<a href="index.html#aa090de65c448278a23851f45f38fa9ce" class="el">serviceType</a> () const
 
Get the service type ID of the service. More...
 
QString 
<a href="index.html#a4da62eb704e693e71b73d101f5304a7e" class="el">provider</a> () const
 
Get the provider ID of the service. More...
 
QString 
<a href="index.html#a038b22680aca535f9972908fe2f1f6a1" class="el">iconName</a> () const
 
Get the icon name for this service. More...
 
bool 
<a href="index.html#ab9544628f8c8af163b13eb6b47a3aead" class="el">hasTag</a> (const QString &tag) const
 
Check if this service has a tag. More...
 
QSet&lt; QString &gt; 
<a href="index.html#a4bfac5a5814d94c97ae61695f09e95ee" class="el">tags</a> () const
 
Return all tags of the service as a set. More...
 
const QDomDocument 
<a href="index.html#a305fe3a04c76c8069c3465621a7967cc" class="el">domDocument</a> () const
 
Get the contents of the service XML file. More...
 
<span id="friends"></span> Friends
----------------------------------

<span id="adfa1934bd3a7945ac2a26125481ed12f" class="anchor"></span> bool 
**operator==** (const <a href="index.html" class="el">Accounts::Service</a> &s1, const <a href="index.html" class="el">Accounts::Service</a> &s2)
 
<span id="details"></span>
Detailed Description
--------------------

Representation of an account service.

The <a href="index.html" class="el" title="Representation of an account service. ">Service</a> object represents an account service. It can be used to retrieve some basic properties of the service (such as name, type and provider) and to get access to the contents of the XML file which defines it.

Definition at line 48 of file service.h.

Constructor & Destructor Documentation
--------------------------------------

<span id="a491f7a1e2b9dfedb805d55c06ca006df" class="anchor"></span>
|                                             |     |                                                      |         |     |     |
|---------------------------------------------|-----|------------------------------------------------------|---------|-----|-----|
| <a href="index.html" class="el">Service</a> | (   | const <a href="index.html" class="el">Service</a> &  | *other* | )   |     |

Copy constructor.

Copying a <a href="index.html" class="el" title="Representation of an account service. ">Service</a> object is very cheap, because the data is shared among copies.

Definition at line 69 of file service.cpp.

Member Function Documentation
-----------------------------

<span id="a9def71dea12661002bb3a63b3b91d08d" class="anchor"></span>
|                     |     |     |     |       |
|---------------------|-----|-----|-----|-------|
| QString displayName | (   |     | )   | const |

Get the display name of the service, untranslated.

Returns  
The display name of the service.

Definition at line 124 of file service.cpp.

<span id="a305fe3a04c76c8069c3465621a7967cc" class="anchor"></span>
|                                |     |     |     |       |
|--------------------------------|-----|-----|-----|-------|
| const QDomDocument domDocument | (   |     | )   | const |

Get the contents of the service XML file.

Returns  
The DOM of the whole XML service file

Definition at line 201 of file service.cpp.

<span id="ab9544628f8c8af163b13eb6b47a3aead" class="anchor"></span>
|             |     |                  |       |     |       |
|-------------|-----|------------------|-------|-----|-------|
| bool hasTag | (   | const QString &  | *tag* | )   | const |

Check if this service has a tag.

Parameters  
|     |                 |
|-----|-----------------|
| tag | Tag to look for |

<!-- -->

Returns  
<a href="index.html" class="el" title="Representation of an account service. ">Service</a> has the tag?

Definition at line 171 of file service.cpp.

<span id="a038b22680aca535f9972908fe2f1f6a1" class="anchor"></span>
|                  |     |     |     |       |
|------------------|-----|-----|-----|-------|
| QString iconName | (   |     | )   | const |

Get the icon name for this service.

Returns  
The icon name.

Definition at line 159 of file service.cpp.

<span id="aac1b70a2ed67ead038c4d3f5ac4d8a81" class="anchor"></span>
|              |     |     |     |       |
|--------------|-----|-----|-----|-------|
| bool isValid | (   |     | )   | const |

Check whether this object represents a <a href="index.html" class="el" title="Representation of an account service. ">Service</a>.

Returns  
true if the <a href="index.html" class="el" title="Representation of an account service. ">Service</a> is a valid one.

Definition at line 104 of file service.cpp.

Referenced by Service::name().

<span id="a2b0a198f837184bf6fff555cee3ce770" class="anchor"></span>
|              |     |     |     |       |
|--------------|-----|-----|-----|-------|
| QString name | (   |     | )   | const |

Get the name of the service.

This can be used as a unique identifier for this service.

Returns  
The unique name of the service.

Definition at line 114 of file service.cpp.

References Service::isValid().

<span id="a4da62eb704e693e71b73d101f5304a7e" class="anchor"></span>
|                  |     |     |     |       |
|------------------|-----|-----|-----|-------|
| QString provider | (   |     | )   | const |

Get the provider ID of the service.

Returns  
The provider of the service.

Definition at line 150 of file service.cpp.

<span id="aa090de65c448278a23851f45f38fa9ce" class="anchor"></span>
|                     |     |     |     |       |
|---------------------|-----|-----|-----|-------|
| QString serviceType | (   |     | )   | const |

Get the service type ID of the service.

Returns  
The service type of the service.

Definition at line 133 of file service.cpp.

<span id="a4bfac5a5814d94c97ae61695f09e95ee" class="anchor"></span>
|                            |     |     |     |       |
|----------------------------|-----|-----|-----|-------|
| QSet&lt; QString &gt; tags | (   |     | )   | const |

Return all tags of the service as a set.

Returns  
Set of tags

Definition at line 181 of file service.cpp.

<span id="a6c73afd4753195ea4eee794c95a770dd" class="anchor"></span>
|                   |     |     |     |       |
|-------------------|-----|-----|-----|-------|
| QString trCatalog | (   |     | )   | const |

Returns  
The translation catalog of the service.

Definition at line 141 of file service.cpp.

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
