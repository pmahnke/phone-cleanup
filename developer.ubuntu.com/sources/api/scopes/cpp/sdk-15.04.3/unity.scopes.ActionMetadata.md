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

<!-- -->

-   ActionMetadata

ActionMetadata
==============

Metadata passed to scopes for preview and activation. [More...](index.html#details)

`#include <unity/scopes/ActionMetadata.h>`

Inheritance diagram for unity::scopes::ActionMetadata:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/710e3cda-28b7-4af4-ac2f-e108221c9452-api/scopes/cpp/sdk-15.04.3/unity.scopes.ActionMetadata/classunity_1_1scopes_1_1_action_metadata__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

 
<a href="index.html#a23b266a9ee4a78a26754a6affd6447d6" class="el">ActionMetadata</a> (std::string const &<a href="../unity.scopes.QueryMetadata/index.html#a3ca25150669d96171aec6ab56ef6bb0e" class="el">locale</a>, std::string const &<a href="../unity.scopes.QueryMetadata/index.html#a494f592f3055fba4da6554a6d8fb7c42" class="el">form_factor</a>)
 
Create ActionMetadata with the given locale and form factor. More...
 
void 
<a href="index.html#a562159a400cba00176ecb0be479775b5" class="el">set_scope_data</a> (<a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &data)
 
Attach arbitrary data to this ActionMetadata. More...
 
<a href="../unity.scopes.Variant/index.html" class="el">Variant</a> 
<a href="index.html#a34777e687ce700a7b6313f3dad6d3340" class="el">scope_data</a> () const
 
Get data attached to this ActionMetadata. More...
 
void 
<a href="index.html#a12b6cf0c4aa1fd80da3b75c23e5f12d5" class="el">set_hint</a> (std::string const &key, <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &value)
 
Sets a hint. More...
 
<a href="../unity.scopes/index.html#ad5d8ccfa11a327fca6f3e4cee11f4c10" class="el">VariantMap</a> 
<a href="index.html#a46d85a19a5eb20d4ee63e201e68cc6c4" class="el">hints</a> () const
 
Get all hints. More...
 
bool 
<a href="index.html#a845e60ef8aca1fd25c950edddb031f69" class="el">contains_hint</a> (std::string const &key) const
 
Check if this SearchMetadata has a hint. More...
 
<a href="../unity.scopes.Variant/index.html" class="el">Variant</a> & 
<a href="index.html#a41854841528dc1934ba73aec6e34b38e" class="el">operator[]</a> (std::string const &key)
 
Returns a reference to a hint. More...
 
<a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const & 
<a href="index.html#a0662d6922a822b36b5eb20df3796a03e" class="el">operator[]</a> (std::string const &key) const
 
Returns a const reference to a hint. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

<span id="ae766e634b8bd820c7c03e8262a3b743c" class="anchor"></span>  
**ActionMetadata** (<a href="index.html" class="el">ActionMetadata</a> const &other)
 
<span id="ad258c9a06a8773024a362bf933c03fc9" class="anchor"></span>  
**ActionMetadata** (<a href="index.html" class="el">ActionMetadata</a> &&)
 
<span id="a82f1a5147c07eb69e65b2c197fa201c1" class="anchor"></span> <a href="index.html" class="el">ActionMetadata</a> & 
**operator=** (<a href="index.html" class="el">ActionMetadata</a> const &other)
 
<span id="a625a159fc913ace02d17895f8a994c0f" class="anchor"></span> <a href="index.html" class="el">ActionMetadata</a> & 
**operator=** (<a href="index.html" class="el">ActionMetadata</a> &&)
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/dd4d8f33-3360-4cbb-ab2b-127487a45393-api/scopes/cpp/sdk-15.04.3/unity.scopes.ActionMetadata/closed.png) Public Member Functions inherited from <a href="../unity.scopes.QueryMetadata/index.html" class="el">unity::scopes::QueryMetadata</a>
std::string 
<a href="../unity.scopes.QueryMetadata/index.html#a3ca25150669d96171aec6ab56ef6bb0e" class="el">locale</a> () const
 
Get the locale string. More...
 
std::string 
<a href="../unity.scopes.QueryMetadata/index.html#a494f592f3055fba4da6554a6d8fb7c42" class="el">form_factor</a> () const
 
Get the form factor string. More...
 
void 
<a href="../unity.scopes.QueryMetadata/index.html#a5b2395aff97cbe1009759de03f270bf3" class="el">set_internet_connectivity</a> (<a href="../unity.scopes.QueryMetadata/index.html#a20eb916661728a7d9c00485e28f88701" class="el">ConnectivityStatus</a> connectivity\_status)
 
Set internet connectivity status. More...
 
<a href="../unity.scopes.QueryMetadata/index.html#a20eb916661728a7d9c00485e28f88701" class="el">ConnectivityStatus</a> 
<a href="../unity.scopes.QueryMetadata/index.html#a3da06f370e53b5e381ec8cf33d8ee191" class="el">internet_connectivity</a> () const
 
Get internet connectivity status. More...
 
<span id="inherited"></span> Additional Inherited Members
---------------------------------------------------------

![-](https://developer.ubuntu.com/static/devportal_uploaded/b3685572-1249-4d1b-a52d-2957e0dbccd5-api/scopes/cpp/sdk-15.04.3/unity.scopes.ActionMetadata/closed.png) Public Types inherited from <a href="../unity.scopes.QueryMetadata/index.html" class="el">unity::scopes::QueryMetadata</a>
enum  
<a href="../unity.scopes.QueryMetadata/index.html#a20eb916661728a7d9c00485e28f88701" class="el">ConnectivityStatus</a> { **Unknown**, **Connected**, **Disconnected** }
 
Indicates the internet connectivity status. [More...](../unity.scopes.QueryMetadata/index.html#a20eb916661728a7d9c00485e28f88701)
 
<span id="details"></span>
Detailed Description
--------------------

Metadata passed to scopes for preview and activation.

See also  
<a href="../unity.scopes.ScopeBase/index.html#a154b9b4cfc0f40572cfec60dd819396f" class="el" title="Invoked when a scope is requested to create a preview for a particular result. ">unity::scopes::ScopeBase::preview</a>, <a href="../unity.scopes.ScopeBase/index.html#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" class="el" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">unity::scopes::ScopeBase::activate</a>, <a href="../unity.scopes.ScopeBase/index.html#a2f4d476fa790349c9a7de52be3232d11" class="el" title="Invoked when a scope is requested to handle a preview action. ">unity::scopes::ScopeBase::perform_action</a>

Constructor & Destructor Documentation
--------------------------------------

<span id="a23b266a9ee4a78a26754a6affd6447d6" class="anchor"></span>
|                                               |     |                      |                 |
|-----------------------------------------------|-----|----------------------|-----------------|
| unity::scopes::ActionMetadata::ActionMetadata | (   | std::string const &  | *locale*,       |
|                                               |     | std::string const &  | *form\_factor*  |
|                                               | )   |                      |                 |

Create <a href="index.html" class="el" title="Metadata passed to scopes for preview and activation. ">ActionMetadata</a> with the given locale and form factor.

Parameters  
|              |                                                           |
|--------------|-----------------------------------------------------------|
| locale       | locale string, eg. en\_EN                                 |
| form\_factor | form factor name, e.g. phone, desktop, phone-version etc. |

Member Function Documentation
-----------------------------

<span id="a845e60ef8aca1fd25c950edddb031f69" class="anchor"></span>
|                                                    |     |                      |       |     |       |
|----------------------------------------------------|-----|----------------------|-------|-----|-------|
| bool unity::scopes::ActionMetadata::contains\_hint | (   | std::string const &  | *key* | )   | const |

Check if this <a href="../unity.scopes.SearchMetadata/index.html" class="el" title="Metadata passed with search requests. ">SearchMetadata</a> has a hint.

Parameters  
|     |                |
|-----|----------------|
| key | The hint name. |

<!-- -->

Returns  
True if the hint is set.

<span id="a46d85a19a5eb20d4ee63e201e68cc6c4" class="anchor"></span>
|                                                                                                                                       |     |     |     |       |
|---------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes/index.html#ad5d8ccfa11a327fca6f3e4cee11f4c10" class="el">VariantMap</a> unity::scopes::ActionMetadata::hints | (   |     | )   | const |

Get all hints.

Returns  
Hints dictionary.

<!-- -->

Exceptions  
|                          |                            |
|--------------------------|----------------------------|
| unity::NotFoundException | if no hints are available. |

<span id="a41854841528dc1934ba73aec6e34b38e" class="anchor"></span>
|                                                                                                                   |     |                      |       |     |     |
|-------------------------------------------------------------------------------------------------------------------|-----|----------------------|-------|-----|-----|
| <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> & unity::scopes::ActionMetadata::operator\[\] | (   | std::string const &  | *key* | )   |     |

Returns a reference to a hint.

This method can be used to read or set hints. Setting a value of an existing hint overwrites its previous value. Referencing a non-existing hint automatically creates it with a default value of Variant::Type::Null.

Parameters  
|     |                       |
|-----|-----------------------|
| key | The name of the hint. |

<!-- -->

Returns  
A reference to the hint.

<span id="a0662d6922a822b36b5eb20df3796a03e" class="anchor"></span>
|                                                                                                                         |     |                      |       |     |       |
|-------------------------------------------------------------------------------------------------------------------------|-----|----------------------|-------|-----|-------|
| <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const & unity::scopes::ActionMetadata::operator\[\] | (   | std::string const &  | *key* | )   | const |

Returns a const reference to a hint.

This method can be used for read-only access to hints. Referencing a non-existing hint throws unity::InvalidArgumentException.

Parameters  
|     |                       |
|-----|-----------------------|
| key | The name of the hint. |

<!-- -->

Returns  
A const reference to the hint.

<!-- -->

Exceptions  
|                          |                                        |
|--------------------------|----------------------------------------|
| unity::NotFoundException | if no hint with the given name exists. |

<span id="a34777e687ce700a7b6313f3dad6d3340" class="anchor"></span>
|                                                                                                                |     |     |     |       |
|----------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> unity::scopes::ActionMetadata::scope\_data | (   |     | )   | const |

Get data attached to this <a href="index.html" class="el" title="Metadata passed to scopes for preview and activation. ">ActionMetadata</a>.

Returns  
The attached data, or <a href="../unity.scopes.Variant/index.html#a2bd2d5425fdec9af9340c22e3b47ac1c" class="el" title="Construct a null variant. ">Variant::null</a>.

<span id="a12b6cf0c4aa1fd80da3b75c23e5f12d5" class="anchor"></span>
|                                               |     |                                                                              |          |
|-----------------------------------------------|-----|------------------------------------------------------------------------------|----------|
| void unity::scopes::ActionMetadata::set\_hint | (   | std::string const &                                                          | *key*,   |
|                                               |     | <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &  | *value*  |
|                                               | )   |                                                                              |          |

Sets a hint.

Parameters  
|       |                       |
|-------|-----------------------|
| key   | The name of the hint. |
| value | Hint value            |

<span id="a562159a400cba00176ecb0be479775b5" class="anchor"></span>
|                                                      |     |                                                                              |        |     |     |
|------------------------------------------------------|-----|------------------------------------------------------------------------------|--------|-----|-----|
| void unity::scopes::ActionMetadata::set\_scope\_data | (   | <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &  | *data* | )   |     |

Attach arbitrary data to this <a href="index.html" class="el" title="Metadata passed to scopes for preview and activation. ">ActionMetadata</a>.

Parameters  
|      |                           |
|------|---------------------------|
| data | The data value to attach. |

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
