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

-   AuthData

AuthData
========

Information for account authentication. [More...](../../sdk-15.04.1/Accounts.AuthData/index.html#details)

`#include <Accounts/AuthData>`

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

 
<a href="../../sdk-15.04.1/Accounts.AuthData/index.html#aeba8fdc4a52c97afb61f49b9a4d6b9c4" class="el">AuthData</a> (const <a href="../../sdk-15.04.1/Accounts.AuthData/index.html" class="el">AuthData</a> &other)
 
Copy constructor. More...
 
<span id="a5bbaeb60e91e492e40be40271b3f4194" class="anchor"></span> virtual 
<a href="../../sdk-15.04.1/Accounts.AuthData/index.html#a5bbaeb60e91e492e40be40271b3f4194" class="el">~AuthData</a> ()
 
Destructor.
 
uint 
<a href="../../sdk-15.04.1/Accounts.AuthData/index.html#a9fe8b6778698b1949275326717f35b02" class="el">credentialsId</a> () const
 
QString 
<a href="../../sdk-15.04.1/Accounts.AuthData/index.html#a47b45cea7d4fbacc4d751adaeb1e8d79" class="el">method</a> () const
 
Get the authentication method which must be used when logging in with this account. More...
 
QString 
<a href="../../sdk-15.04.1/Accounts.AuthData/index.html#aaff7a936205f9c8044c0093f6497c514" class="el">mechanism</a> () const
 
Get the authentication mechanism which must be used when logging in with this account. More...
 
QVariantMap 
<a href="../../sdk-15.04.1/Accounts.AuthData/index.html#a149775212ebd051147314d4a3bfff30d" class="el">parameters</a> () const
 
Get the dictionary of authentication parameters which must be used when logging in with this account. More...
 
<span id="details"></span>
Detailed Description
--------------------

Information for account authentication.

The <a href="../../sdk-15.04.1/Accounts.AuthData/index.html" class="el" title="Information for account authentication. ">AuthData</a> class holds information on the authentication parameters used by an account. It is an implicitly shared object which can be created with the <a href="../../sdk-15.04.1/Accounts.AccountService/index.html#a49a9f7deccedeebacadc37ae01ac83ab" class="el" title="Read the authentication data stored in the account (merging the service-specific settings with the gl...">AccountService::authData</a> method.

Definition at line 49 of file auth-data.h.

Constructor & Destructor Documentation
--------------------------------------

<span id="aeba8fdc4a52c97afb61f49b9a4d6b9c4" class="anchor"></span>
|                                                                                  |     |                                                                                           |         |     |     |
|----------------------------------------------------------------------------------|-----|-------------------------------------------------------------------------------------------|---------|-----|-----|
| <a href="../../sdk-15.04.1/Accounts.AuthData/index.html" class="el">AuthData</a> | (   | const <a href="../../sdk-15.04.1/Accounts.AuthData/index.html" class="el">AuthData</a> &  | *other* | )   |     |

Copy constructor.

Copying an <a href="../../sdk-15.04.1/Accounts.AuthData/index.html" class="el" title="Information for account authentication. ">AuthData</a> object is very cheap, because the data is shared among copies.

Definition at line 48 of file auth-data.cpp.

Member Function Documentation
-----------------------------

<span id="a9fe8b6778698b1949275326717f35b02" class="anchor"></span>
|                    |     |     |     |       |
|--------------------|-----|-----|-----|-------|
| uint credentialsId | (   |     | )   | const |

Returns  
The ID of the credentials associated with this account.

Definition at line 74 of file auth-data.cpp.

<span id="aaff7a936205f9c8044c0093f6497c514" class="anchor"></span>
|                   |     |     |     |       |
|-------------------|-----|-----|-----|-------|
| QString mechanism | (   |     | )   | const |

Get the authentication mechanism which must be used when logging in with this account.

Returns  
The authentication mechanism.

Definition at line 94 of file auth-data.cpp.

<span id="a47b45cea7d4fbacc4d751adaeb1e8d79" class="anchor"></span>
|                |     |     |     |       |
|----------------|-----|-----|-----|-------|
| QString method | (   |     | )   | const |

Get the authentication method which must be used when logging in with this account.

Returns  
The authentication method.

Definition at line 84 of file auth-data.cpp.

<span id="a149775212ebd051147314d4a3bfff30d" class="anchor"></span>
|                        |     |     |     |       |
|------------------------|-----|-----|-----|-------|
| QVariantMap parameters | (   |     | )   | const |

Get the dictionary of authentication parameters which must be used when logging in with this account.

Returns  
The authentication parameters.

Definition at line 104 of file auth-data.cpp.

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
