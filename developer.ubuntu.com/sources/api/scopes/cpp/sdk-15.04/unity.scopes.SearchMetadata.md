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

<!-- -->

-   SearchMetadata

SearchMetadata
==============

Metadata passed with search requests. [More...](index.html#details)

`#include <unity/scopes/SearchMetadata.h>`

Inheritance diagram for unity::scopes::SearchMetadata:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/989e33cd-225a-4ec6-9887-c7e1be9fba49-api/scopes/cpp/sdk-15.04/unity.scopes.SearchMetadata/classunity_1_1scopes_1_1_search_metadata__inherit__graph.png)

<span class="legend">\[legend\]</span>

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

 
<a href="index.html#afbef43ec4b8977f3a4bd334795ba53db" class="el">SearchMetadata</a> (std::string const &<a href="../unity.scopes.QueryMetadata/index.html#a3ca25150669d96171aec6ab56ef6bb0e" class="el">locale</a>, std::string const &<a href="../unity.scopes.QueryMetadata/index.html#a494f592f3055fba4da6554a6d8fb7c42" class="el">form_factor</a>)
 
Create SearchMetadata with the given locale and form factor. More...
 
 
<a href="index.html#aed4a61dc45656bc36f07ca2802a8c6e0" class="el">SearchMetadata</a> (int <a href="index.html#a439fca5f1acb2476784e43ca4d01cd3f" class="el">cardinality</a>, std::string const &<a href="../unity.scopes.QueryMetadata/index.html#a3ca25150669d96171aec6ab56ef6bb0e" class="el">locale</a>, std::string const &<a href="../unity.scopes.QueryMetadata/index.html#a494f592f3055fba4da6554a6d8fb7c42" class="el">form_factor</a>)
 
Create SearchMetadata with the given cardinality, locale, and form factor. More...
 
void 
<a href="index.html#af6ee25cabcefae0204753bd78d5c67f2" class="el">set_cardinality</a> (int <a href="index.html#a439fca5f1acb2476784e43ca4d01cd3f" class="el">cardinality</a>)
 
Set cardinality. More...
 
int 
<a href="index.html#a439fca5f1acb2476784e43ca4d01cd3f" class="el">cardinality</a> () const
 
Get cardinality. More...
 
void 
<a href="index.html#aa7f858cb1d9716381836b0e8e9a01d06" class="el">set_location</a> (<a href="../unity.scopes.Location/index.html" class="el">Location</a> const &<a href="index.html#a150922b97294bcda195030648a1f6f1b" class="el">location</a>)
 
Set location. More...
 
<a href="../unity.scopes.Location/index.html" class="el">Location</a> 
<a href="index.html#a150922b97294bcda195030648a1f6f1b" class="el">location</a> () const
 
Get location. More...
 
bool 
<a href="index.html#a3d71111819dbfc9e409ab2ae1d9dce7f" class="el">has_location</a> () const
 
Does the SearchMetadata have a location. More...
 
void 
<a href="index.html#a06b9b4acc427e5124f400763bb4f14d0" class="el">remove_location</a> ()
 
Remove location data entirely. More...
 
void 
<a href="index.html#a20dd440f94658a78eff73a8d66ea98c0" class="el">set_aggregated_keywords</a> (std::set&lt; std::string &gt; const &<a href="index.html#ab00673c4b1264388e0673d525e6d883e" class="el">aggregated_keywords</a>)
 
Set the list of scope keywords used to initiate this search request. More...
 
std::set&lt; std::string &gt; 
<a href="index.html#ab00673c4b1264388e0673d525e6d883e" class="el">aggregated_keywords</a> () const
 
Get the list of scope keywords used to initiate this search request. More...
 
bool 
<a href="index.html#ab999e0fd62e31b4c5e3095264ed81672" class="el">is_aggregated</a> () const
 
Check if this search request originated from an aggregator scope. More...
 
void 
<a href="index.html#a7b8bf8376371fd3e90b4b84484822ba2" class="el">set_hint</a> (std::string const &key, <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &value)
 
Sets a hint. More...
 
<a href="../unity.scopes/index.html#ad5d8ccfa11a327fca6f3e4cee11f4c10" class="el">VariantMap</a> 
<a href="index.html#ab112cd1adfb1fdd24a1960c7db444531" class="el">hints</a> () const
 
Get all hints. More...
 
bool 
<a href="index.html#ac2815cd1941d463eeffd82fde76c79c7" class="el">contains_hint</a> (std::string const &key) const
 
Check if this SearchMetadata has a hint. More...
 
<a href="../unity.scopes.Variant/index.html" class="el">Variant</a> & 
<a href="index.html#a0f8ec6f0f54b6ecc0fee1cfcf6d630a3" class="el">operator[]</a> (std::string const &key)
 
Returns a reference to a hint. More...
 
<a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const & 
<a href="index.html#a811a5da751cfe716e04a30bb8273ad8c" class="el">operator[]</a> (std::string const &key) const
 
Returns a const reference to a hint. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

<span id="a8cfb009f8bd3df8e363a088cbdf74671" class="anchor"></span>  
**SearchMetadata** (<a href="index.html" class="el">SearchMetadata</a> const &other)
 
<span id="a2799ec969b5621674c2291ef933547e1" class="anchor"></span>  
**SearchMetadata** (<a href="index.html" class="el">SearchMetadata</a> &&)
 
<span id="a52c3883c60fa312a306062c94a209ec6" class="anchor"></span> <a href="index.html" class="el">SearchMetadata</a> & 
**operator=** (<a href="index.html" class="el">SearchMetadata</a> const &other)
 
<span id="a70f02e2124009c8ded20f2441c627b67" class="anchor"></span> <a href="index.html" class="el">SearchMetadata</a> & 
**operator=** (<a href="index.html" class="el">SearchMetadata</a> &&)
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/9af0b2ec-a2ec-43ae-92db-85b33b9e1527-api/scopes/cpp/sdk-15.04/unity.scopes.SearchMetadata/closed.png) Public Member Functions inherited from <a href="../unity.scopes.QueryMetadata/index.html" class="el">unity::scopes::QueryMetadata</a>
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

![-](https://developer.ubuntu.com/static/devportal_uploaded/8ece28b6-6fdf-44bf-9fba-0802f67f6d71-api/scopes/cpp/sdk-15.04/unity.scopes.SearchMetadata/closed.png) Public Types inherited from <a href="../unity.scopes.QueryMetadata/index.html" class="el">unity::scopes::QueryMetadata</a>
enum  
<a href="../unity.scopes.QueryMetadata/index.html#a20eb916661728a7d9c00485e28f88701" class="el">ConnectivityStatus</a> { **Unknown**, **Connected**, **Disconnected** }
 
Indicates the internet connectivity status. [More...](../unity.scopes.QueryMetadata/index.html#a20eb916661728a7d9c00485e28f88701)
 
<span id="details"></span>
Detailed Description
--------------------

Metadata passed with search requests.

Constructor & Destructor Documentation
--------------------------------------

<span id="afbef43ec4b8977f3a4bd334795ba53db" class="anchor"></span>
|                                               |     |                      |                 |
|-----------------------------------------------|-----|----------------------|-----------------|
| unity::scopes::SearchMetadata::SearchMetadata | (   | std::string const &  | *locale*,       |
|                                               |     | std::string const &  | *form\_factor*  |
|                                               | )   |                      |                 |

Create <a href="index.html" class="el" title="Metadata passed with search requests. ">SearchMetadata</a> with the given locale and form factor.

Parameters  
|              |                                                           |
|--------------|-----------------------------------------------------------|
| locale       | locale string, eg. en\_EN                                 |
| form\_factor | form factor name, e.g. phone, desktop, phone-version etc. |

<span id="aed4a61dc45656bc36f07ca2802a8c6e0" class="anchor"></span>
|                                               |     |                      |                 |
|-----------------------------------------------|-----|----------------------|-----------------|
| unity::scopes::SearchMetadata::SearchMetadata | (   | int                  | *cardinality*,  |
|                                               |     | std::string const &  | *locale*,       |
|                                               |     | std::string const &  | *form\_factor*  |
|                                               | )   |                      |                 |

Create <a href="index.html" class="el" title="Metadata passed with search requests. ">SearchMetadata</a> with the given cardinality, locale, and form factor.

Parameters  
|              |                                                           |
|--------------|-----------------------------------------------------------|
| cardinality  | maximum number of search results                          |
| locale       | locale string, eg. en\_EN                                 |
| form\_factor | form factor name, e.g. phone, desktop, phone-version etc. |

Member Function Documentation
-----------------------------

<span id="ab00673c4b1264388e0673d525e6d883e" class="anchor"></span>
|                                                                                   |     |     |     |       |
|-----------------------------------------------------------------------------------|-----|-----|-----|-------|
| std::set&lt; std::string &gt; unity::scopes::SearchMetadata::aggregated\_keywords | (   |     | )   | const |

Get the list of scope keywords used to initiate this search request.

Returns  
The list of scope keywords used to initiate this search request.

<span id="a439fca5f1acb2476784e43ca4d01cd3f" class="anchor"></span>
|                                                |     |     |     |       |
|------------------------------------------------|-----|-----|-----|-------|
| int unity::scopes::SearchMetadata::cardinality | (   |     | )   | const |

Get cardinality.

Returns  
The maxmium number of search results, or 0 for no limit.

<span id="ac2815cd1941d463eeffd82fde76c79c7" class="anchor"></span>
|                                                    |     |                      |       |     |       |
|----------------------------------------------------|-----|----------------------|-------|-----|-------|
| bool unity::scopes::SearchMetadata::contains\_hint | (   | std::string const &  | *key* | )   | const |

Check if this <a href="index.html" class="el" title="Metadata passed with search requests. ">SearchMetadata</a> has a hint.

Parameters  
|     |                |
|-----|----------------|
| key | The hint name. |

<!-- -->

Returns  
True if the hint is set.

<span id="a3d71111819dbfc9e409ab2ae1d9dce7f" class="anchor"></span>
|                                                   |     |     |     |       |
|---------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::SearchMetadata::has\_location | (   |     | )   | const |

Does the <a href="index.html" class="el" title="Metadata passed with search requests. ">SearchMetadata</a> have a location.

Returns  
True if there is a location property.

<span id="ab112cd1adfb1fdd24a1960c7db444531" class="anchor"></span>
|                                                                                                                                       |     |     |     |       |
|---------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes/index.html#ad5d8ccfa11a327fca6f3e4cee11f4c10" class="el">VariantMap</a> unity::scopes::SearchMetadata::hints | (   |     | )   | const |

Get all hints.

Returns  
Hints dictionary.

<!-- -->

Exceptions  
|                          |                            |
|--------------------------|----------------------------|
| unity::NotFoundException | if no hints are available. |

<span id="ab999e0fd62e31b4c5e3095264ed81672" class="anchor"></span>
|                                                    |     |     |     |       |
|----------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::SearchMetadata::is\_aggregated | (   |     | )   | const |

Check if this search request originated from an aggregator scope.

Returns  
True if this search request originated from an aggregator scope.

<span id="a150922b97294bcda195030648a1f6f1b" class="anchor"></span>
|                                                                                                               |     |     |     |       |
|---------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.Location/index.html" class="el">Location</a> unity::scopes::SearchMetadata::location | (   |     | )   | const |

Get location.

Returns  
<a href="../unity.scopes.Location/index.html" class="el" title="Holds location attributes such as latitude, longitude, etc. ">Location</a> data representing the current location, including attributes such as city and country.

<!-- -->

Exceptions  
|                          |                                   |
|--------------------------|-----------------------------------|
| unity::NotFoundException | if no location data is available. |

<span id="a0f8ec6f0f54b6ecc0fee1cfcf6d630a3" class="anchor"></span>
|                                                                                                                   |     |                      |       |     |     |
|-------------------------------------------------------------------------------------------------------------------|-----|----------------------|-------|-----|-----|
| <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> & unity::scopes::SearchMetadata::operator\[\] | (   | std::string const &  | *key* | )   |     |

Returns a reference to a hint.

This method can be used to read or set hints. Setting a value of an existing hint overwrites its previous value. Referencing a non-existing hint automatically creates it with a default value of Variant::Type::Null.

Parameters  
|     |                       |
|-----|-----------------------|
| key | The name of the hint. |

<!-- -->

Returns  
A reference to the hint.

<span id="a811a5da751cfe716e04a30bb8273ad8c" class="anchor"></span>
|                                                                                                                         |     |                      |       |     |       |
|-------------------------------------------------------------------------------------------------------------------------|-----|----------------------|-------|-----|-------|
| <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const & unity::scopes::SearchMetadata::operator\[\] | (   | std::string const &  | *key* | )   | const |

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

<span id="a06b9b4acc427e5124f400763bb4f14d0" class="anchor"></span>
|                                                      |     |     |     |     |
|------------------------------------------------------|-----|-----|-----|-----|
| void unity::scopes::SearchMetadata::remove\_location | (   |     | )   |     |

Remove location data entirely.

This method does nothing if no location data is present.

<span id="a20dd440f94658a78eff73a8d66ea98c0" class="anchor"></span>
|                                                               |     |                                        |                        |     |     |
|---------------------------------------------------------------|-----|----------------------------------------|------------------------|-----|-----|
| void unity::scopes::SearchMetadata::set\_aggregated\_keywords | (   | std::set&lt; std::string &gt; const &  | *aggregated\_keywords* | )   |     |

Set the list of scope keywords used to initiate this search request.

Parameters  
|                      |                                                                  |
|----------------------|------------------------------------------------------------------|
| aggregated\_keywords | The list of scope keywords used to initiate this search request. |

<span id="af6ee25cabcefae0204753bd78d5c67f2" class="anchor"></span>
|                                                      |     |      |               |     |     |
|------------------------------------------------------|-----|------|---------------|-----|-----|
| void unity::scopes::SearchMetadata::set\_cardinality | (   | int  | *cardinality* | )   |     |

Set cardinality.

Parameters  
|             |                                       |
|-------------|---------------------------------------|
| cardinality | The maximum number of search results. |

<span id="a7b8bf8376371fd3e90b4b84484822ba2" class="anchor"></span>
|                                               |     |                                                                              |          |
|-----------------------------------------------|-----|------------------------------------------------------------------------------|----------|
| void unity::scopes::SearchMetadata::set\_hint | (   | std::string const &                                                          | *key*,   |
|                                               |     | <a href="../unity.scopes.Variant/index.html" class="el">Variant</a> const &  | *value*  |
|                                               | )   |                                                                              |          |

Sets a hint.

Parameters  
|       |                       |
|-------|-----------------------|
| key   | The name of the hint. |
| value | Hint value            |

<span id="aa7f858cb1d9716381836b0e8e9a01d06" class="anchor"></span>
|                                                   |     |                                                                                |            |     |     |
|---------------------------------------------------|-----|--------------------------------------------------------------------------------|------------|-----|-----|
| void unity::scopes::SearchMetadata::set\_location | (   | <a href="../unity.scopes.Location/index.html" class="el">Location</a> const &  | *location* | )   |     |

Set location.

Parameters  
|          |                                                                                                                                                  |
|----------|--------------------------------------------------------------------------------------------------------------------------------------------------|
| location | <a href="../unity.scopes.Location/index.html" class="el" title="Holds location attributes such as latitude, longitude, etc. ">Location</a> data. |

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
