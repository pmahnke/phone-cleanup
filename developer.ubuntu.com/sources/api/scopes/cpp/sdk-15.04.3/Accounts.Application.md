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

-   Application

Application
===========

Information on the client applications of libaccounts. [More...](../../sdk-15.04.1/Accounts.Application/index.html#details)

`#include <Accounts/Application>`

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

<span id="aec7d6461aa7be31d98eff24b9d69ae3d" class="anchor"></span>  
<a href="../../sdk-15.04.1/Accounts.Application/index.html#aec7d6461aa7be31d98eff24b9d69ae3d" class="el">Application</a> ()
 
Construct an invalid application.
 
 
<a href="../../sdk-15.04.1/Accounts.Application/index.html#af5e0a77dad01833eddabf0def1caa475" class="el">Application</a> (const <a href="../../sdk-15.04.1/Accounts.Application/index.html" class="el">Application</a> &other)
 
Copy constructor. More...
 
<span id="a645636c24dff51fd2b9ec75fc083b928" class="anchor"></span> <a href="../../sdk-15.04.1/Accounts.Application/index.html" class="el">Application</a> & 
**operator=** (const <a href="../../sdk-15.04.1/Accounts.Application/index.html" class="el">Application</a> &other)
 
<span id="a713b51c450f3ae9db74cd857c2419173" class="anchor"></span>  
<a href="../../sdk-15.04.1/Accounts.Application/index.html#a713b51c450f3ae9db74cd857c2419173" class="el">~Application</a> ()
 
Destructor.
 
bool 
<a href="../../sdk-15.04.1/Accounts.Application/index.html#aac1b70a2ed67ead038c4d3f5ac4d8a81" class="el">isValid</a> () const
 
Check whether this object represents an Application. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Application/index.html#a2b0a198f837184bf6fff555cee3ce770" class="el">name</a> () const
 
Get the unique ID of the application. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Application/index.html#a9def71dea12661002bb3a63b3b91d08d" class="el">displayName</a> () const
 
Get the display name of the application. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Application/index.html#aeaebc63d2181b1a4506603f4e03f1275" class="el">description</a> () const
 
Get the description of the application. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Application/index.html#a038b22680aca535f9972908fe2f1f6a1" class="el">iconName</a> () const
 
Get the icon name of the application. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Application/index.html#a8e3558c6d34db1186be87e3483ff59f8" class="el">desktopFilePath</a> () const
 
Get the .desktop file associated with this application. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Application/index.html#a6c73afd4753195ea4eee794c95a770dd" class="el">trCatalog</a> () const
 
Get the translation catalog for the texts returned by the methods of this class. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.Application/index.html#a3e79b6f20785764a31a750544fde6f39" class="el">serviceUsage</a> (const <a href="../../sdk-15.04.1/Accounts.Service/index.html" class="el">Service</a> &service) const
 
Get the description from the application XML file, for the specified service; if not found, get the service-type description instead. More...
 
<span id="details"></span>
Detailed Description
--------------------

Information on the client applications of libaccounts.

The <a href="../../sdk-15.04.1/Accounts.Application/index.html" class="el" title="Information on the client applications of libaccounts. ">Application</a> structure holds information on the client applications registered with libaccounts. It is instantiated by <a href="../../sdk-15.04.1/Accounts.Manager/index.html#a28ff538d5abd52ff691e30ed75a6b41f" class="el" title="Get an object representing an application. ">Manager::application()</a> and <a href="../../sdk-15.04.1/Accounts.Manager/index.html#ae18f9f8c59a4e15e8849dd832c54b874" class="el" title="List the registered applications which support the given service. ">Manager::applicationList()</a>.

Definition at line 40 of file application.h.

Constructor & Destructor Documentation
--------------------------------------

<span id="af5e0a77dad01833eddabf0def1caa475" class="anchor"></span>
|                                                                                        |     |                                                                                                 |         |     |     |
|----------------------------------------------------------------------------------------|-----|-------------------------------------------------------------------------------------------------|---------|-----|-----|
| <a href="../../sdk-15.04.1/Accounts.Application/index.html" class="el">Application</a> | (   | const <a href="../../sdk-15.04.1/Accounts.Application/index.html" class="el">Application</a> &  | *other* | )   |     |

Copy constructor.

Copying an <a href="../../sdk-15.04.1/Accounts.Application/index.html" class="el" title="Information on the client applications of libaccounts. ">Application</a> object is very cheap, because the data is shared among copies.

Definition at line 62 of file application.cpp.

Member Function Documentation
-----------------------------

<span id="aeaebc63d2181b1a4506603f4e03f1275" class="anchor"></span>
|                     |     |     |     |       |
|---------------------|-----|-----|-----|-------|
| QString description | (   |     | )   | const |

Get the description of the application.

Returns  
The application description.

Definition at line 131 of file application.cpp.

<span id="a8e3558c6d34db1186be87e3483ff59f8" class="anchor"></span>
|                         |     |     |     |       |
|-------------------------|-----|-----|-----|-------|
| QString desktopFilePath | (   |     | )   | const |

Get the .desktop file associated with this application.

Returns  
The full path to the .desktop file.

Definition at line 160 of file application.cpp.

<span id="a9def71dea12661002bb3a63b3b91d08d" class="anchor"></span>
|                     |     |     |     |       |
|---------------------|-----|-----|-----|-------|
| QString displayName | (   |     | )   | const |

Get the display name of the application.

Returns  
The application display name.

Definition at line 115 of file application.cpp.

References Application::name().

<span id="a038b22680aca535f9972908fe2f1f6a1" class="anchor"></span>
|                  |     |     |     |       |
|------------------|-----|-----|-----|-------|
| QString iconName | (   |     | )   | const |

Get the icon name of the application.

Returns  
The application icon name.

Definition at line 140 of file application.cpp.

<span id="aac1b70a2ed67ead038c4d3f5ac4d8a81" class="anchor"></span>
|              |     |     |     |       |
|--------------|-----|-----|-----|-------|
| bool isValid | (   |     | )   | const |

Check whether this object represents an <a href="../../sdk-15.04.1/Accounts.Application/index.html" class="el" title="Information on the client applications of libaccounts. ">Application</a>.

Returns  
true if the <a href="../../sdk-15.04.1/Accounts.Application/index.html" class="el" title="Information on the client applications of libaccounts. ">Application</a> is a valid one.

Definition at line 95 of file application.cpp.

Referenced by Application::name().

<span id="a2b0a198f837184bf6fff555cee3ce770" class="anchor"></span>
|              |     |     |     |       |
|--------------|-----|-----|-----|-------|
| QString name | (   |     | )   | const |

Get the unique ID of the application.

This is the name of the .application file minus the .application suffix.

Returns  
The application unique ID.

Definition at line 105 of file application.cpp.

References Application::isValid().

Referenced by Application::displayName().

<span id="a3e79b6f20785764a31a750544fde6f39" class="anchor"></span>
|                      |     |                                                                                         |           |     |       |
|----------------------|-----|-----------------------------------------------------------------------------------------|-----------|-----|-------|
| QString serviceUsage | (   | const <a href="../../sdk-15.04.1/Accounts.Service/index.html" class="el">Service</a> &  | *service* | )   | const |

Get the description from the application XML file, for the specified service; if not found, get the service-type description instead.

Returns  
Usage description of the service.

Definition at line 187 of file application.cpp.

<span id="a6c73afd4753195ea4eee794c95a770dd" class="anchor"></span>
|                   |     |     |     |       |
|-------------------|-----|-----|-----|-------|
| QString trCatalog | (   |     | )   | const |

Get the translation catalog for the texts returned by the methods of this class.

Returns  
The translation catalog name.

Definition at line 177 of file application.cpp.

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
