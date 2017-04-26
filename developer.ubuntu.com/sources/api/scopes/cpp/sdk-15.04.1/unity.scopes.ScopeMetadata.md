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
-   [SDK 15.04.1](../index.html) ›

<!-- -->

-   ScopeMetadata

ScopeMetadata
=============

Holds scope attributes such as name, description, icon etc. [More...](index.html#details)

`#include <unity/scopes/ScopeMetadata.h>`

<span id="pub-types"></span> Public Types
-----------------------------------------

<span id="a6fb29deb86215b969a721b9c67328eeb" class="anchor"></span>enum  
<a href="index.html#a6fb29deb86215b969a721b9c67328eeb" class="el">ResultsTtlType</a> { **None**, **Small**, **Medium**, **Large** }
 
Enum representing the expected valid lifetime of results from the scope.
 
<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

std::string 
<a href="index.html#abc13282db1a0d899e6a1daf2a40beba8" class="el">scope_id</a> () const
 
Get the scope identifier. More...
 
<a href="../unity.scopes/index.html#a94db15da410f8419e4da711db842aaae" class="el">ScopeProxy</a> 
<a href="index.html#a2d3a7700ed04e0f4b6ccb054d869d8c2" class="el">proxy</a> () const
 
Get the proxy object for this scope. More...
 
std::string 
<a href="index.html#a7aca280ea8e8b1a96ac24b8f7efabfe8" class="el">display_name</a> () const
 
Get the display name for this scope. More...
 
std::string 
<a href="index.html#adc16d2c66411956f96a6ba3f0b33d811" class="el">description</a> () const
 
Get the description for this scope. More...
 
std::string 
<a href="index.html#a67465b69a72c548c1c46919dff6809d7" class="el">author</a> () const
 
Get the author for this scope. More...
 
std::string 
<a href="index.html#aabeec6ec7dad68309af95c5a1731673c" class="el">art</a> () const
 
Get the art for this scope. More...
 
std::string 
<a href="index.html#af6d6753b013551a2d465a21f8f8bf131" class="el">icon</a> () const
 
Get the icon for this scope. More...
 
std::string 
<a href="index.html#a5c8ae76986842475d4eaf4d2304f6143" class="el">search_hint</a> () const
 
Get the search hint for this scope. More...
 
std::string 
<a href="index.html#abdeacf5f5dbdb8c75b5a2cbc32e80d82" class="el">hot_key</a> () const
 
Get the hot key for this scope. More...
 
bool 
<a href="index.html#a24360dffb0183b75e064148d5952fdcb" class="el">invisible</a> () const
 
Check if this scope should be hidden in the Dash. More...
 
<a href="../unity.scopes/index.html#ad5d8ccfa11a327fca6f3e4cee11f4c10" class="el">VariantMap</a> 
<a href="index.html#a5929e9ed85eabc03a1bd2324a1234fd6" class="el">appearance_attributes</a> () const
 
Get optional display attributes. More...
 
std::string 
<a href="index.html#a6c4592204ef51a8a6eec2f6cc65ba8cb" class="el">scope_directory</a> () const
 
Get directory where scope config files and .so file lives. More...
 
<a href="../unity.scopes/index.html#ad5d8ccfa11a327fca6f3e4cee11f4c10" class="el">VariantMap</a> 
<a href="index.html#af2aaf529613cd41a1a9a3895271eab32" class="el">serialize</a> () const
 
Return a dictionary of all metadata attributes. More...
 
<a href="index.html#a6fb29deb86215b969a721b9c67328eeb" class="el">ResultsTtlType</a> 
<a href="index.html#aab63ca25ab0e3ff312908e07d3334ae0" class="el">results_ttl_type</a> () const
 
Return the TTL for the results this scope produces. More...
 
<a href="../unity.scopes/index.html#aa3bf32d584efd902bca79698a07dd934" class="el">VariantArray</a> 
<a href="index.html#a6351dda2c91889a06f0ec31e669ab385" class="el">settings_definitions</a> () const
 
Return the settings definitions for this scope. More...
 
bool 
<a href="index.html#a688ff4dbec4f71d8b6bcd3b0879b737b" class="el">location_data_needed</a> () const
 
Check if this scope wants location data. More...
 
std::vector&lt; std::string &gt; 
<a href="index.html#ae804c65fc5a6a3fdf85d6c2a0280c3af" class="el">child_scope_ids</a> () const
 
Return the list of scope identifiers aggregated by this scope. More...
 
int 
<a href="index.html#ac7a2cf80883ad3de1d726728fc0b8e72" class="el">version</a> () const
 
Return the version of the scope. More...
 
std::set&lt; std::string &gt; 
<a href="index.html#ad195fd0f83a5afb2aaaf738ee237b045" class="el">keywords</a> () const
 
Return the set of keywords specified by this scope. More...
 
bool 
<a href="index.html#a80ba381c5b402b3c4cd57f0f52271cab" class="el">is_aggregator</a> () const
 
Check if this scope is an aggregator. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

<span id="aef700d4bee866b1ae15cc30232256f1f" class="anchor"></span>  
**ScopeMetadata** (<a href="index.html" class="el">ScopeMetadata</a> const &other)
 
<span id="a01b7b68f295a960bda90eda90a02a035" class="anchor"></span>  
**ScopeMetadata** (<a href="index.html" class="el">ScopeMetadata</a> &&)
 
<span id="a2fa9b35ac14a150b4a029331dcfcba46" class="anchor"></span> <a href="index.html" class="el">ScopeMetadata</a> & 
**operator=** (<a href="index.html" class="el">ScopeMetadata</a> const &other)
 
<span id="a8977022019f1f983df98f1e21180454d" class="anchor"></span> <a href="index.html" class="el">ScopeMetadata</a> & 
**operator=** (<a href="index.html" class="el">ScopeMetadata</a> &&)
 
<span id="details"></span>
Detailed Description
--------------------

Holds scope attributes such as name, description, icon etc.

The information stored by <a href="index.html" class="el" title="Holds scope attributes such as name, description, icon etc. ">ScopeMetadata</a> comes from the .ini file for the given scope (for local scopes) or is fetched from the remote server (for scopes running on Smart Scopes Server). Use <a href="../unity.scopes.Registry/index.html" class="el" title="White pages service for available scopes. ">unity::scopes::Registry</a> to get the metadata for a specific scope or all scopes.

Member Function Documentation
-----------------------------

<span id="a5929e9ed85eabc03a1bd2324a1234fd6" class="anchor"></span>
|                                                                                                                                                       |     |     |     |       |
|-------------------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes/index.html#ad5d8ccfa11a327fca6f3e4cee11f4c10" class="el">VariantMap</a> unity::scopes::ScopeMetadata::appearance\_attributes | (   |     | )   | const |

Get optional display attributes.

Appearance attributes define customized look of the scope in Scopes <a href="../unity.scopes.Scope/index.html" class="el" title="Allows queries, preview requests, and activation requests to be sent to a scope. ">Scope</a>.

Returns  
Map of attributes (may be empty)

<span id="aabeec6ec7dad68309af95c5a1731673c" class="anchor"></span>
|                                               |     |     |     |       |
|-----------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::ScopeMetadata::art | (   |     | )   | const |

Get the art for this scope.

Returns  
The scope art.

<span id="a67465b69a72c548c1c46919dff6809d7" class="anchor"></span>
|                                                  |     |     |     |       |
|--------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::ScopeMetadata::author | (   |     | )   | const |

Get the author for this scope.

Returns  
The scope author.

<span id="ae804c65fc5a6a3fdf85d6c2a0280c3af" class="anchor"></span>
|                                                                                |     |     |     |       |
|--------------------------------------------------------------------------------|-----|-----|-----|-------|
| std::vector&lt;std::string&gt; unity::scopes::ScopeMetadata::child\_scope\_ids | (   |     | )   | const |

Return the list of scope identifiers aggregated by this scope.

The list returned by this method comes from the .ini file. The scope author must ensure that it contains all scopes that an aggregator might collect results from. This list may contain scopes that are not currently installed and are optional for proper functioning of the aggregator scope.

Returns  
The list of scopes ids aggregated by this scope.

<span id="adc16d2c66411956f96a6ba3f0b33d811" class="anchor"></span>
|                                                       |     |     |     |       |
|-------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::ScopeMetadata::description | (   |     | )   | const |

Get the description for this scope.

Returns  
The scope description.

<span id="a7aca280ea8e8b1a96ac24b8f7efabfe8" class="anchor"></span>
|                                                         |     |     |     |       |
|---------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::ScopeMetadata::display\_name | (   |     | )   | const |

Get the display name for this scope.

Returns  
The scope display name.

<span id="abdeacf5f5dbdb8c75b5a2cbc32e80d82" class="anchor"></span>
|                                                    |     |     |     |       |
|----------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::ScopeMetadata::hot\_key | (   |     | )   | const |

Get the hot key for this scope.

Returns  
The hot key.

<span id="af6d6753b013551a2d465a21f8f8bf131" class="anchor"></span>
|                                                |     |     |     |       |
|------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::ScopeMetadata::icon | (   |     | )   | const |

Get the icon for this scope.

Returns  
The scope icon.

<span id="a24360dffb0183b75e064148d5952fdcb" class="anchor"></span>
|                                              |     |     |     |       |
|----------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::ScopeMetadata::invisible | (   |     | )   | const |

Check if this scope should be hidden in the Dash.

Returns  
True if this scope is invisible.

<span id="a80ba381c5b402b3c4cd57f0f52271cab" class="anchor"></span>
|                                                   |     |     |     |       |
|---------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::ScopeMetadata::is\_aggregator | (   |     | )   | const |

Check if this scope is an aggregator.

Returns  
True if this scope is an aggregator.

<span id="ad195fd0f83a5afb2aaaf738ee237b045" class="anchor"></span>
|                                                                    |     |     |     |       |
|--------------------------------------------------------------------|-----|-----|-----|-------|
| std::set&lt;std::string&gt; unity::scopes::ScopeMetadata::keywords | (   |     | )   | const |

Return the set of keywords specified by this scope.

The set returned by this method is formulated from the value specified under the "Keywords" key in the scope's .ini file.

Returns  
The set of keywords specified by this scope.

<span id="a688ff4dbec4f71d8b6bcd3b0879b737b" class="anchor"></span>
|                                                           |     |     |     |       |
|-----------------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::ScopeMetadata::location\_data\_needed | (   |     | )   | const |

Check if this scope wants location data.

Returns  
True if this scope wants location data.

<span id="a2d3a7700ed04e0f4b6ccb054d869d8c2" class="anchor"></span>
|                                                                                                                                      |     |     |     |       |
|--------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes/index.html#a94db15da410f8419e4da711db842aaae" class="el">ScopeProxy</a> unity::scopes::ScopeMetadata::proxy | (   |     | )   | const |

Get the proxy object for this scope.

Returns  
The scope proxy.

<span id="aab63ca25ab0e3ff312908e07d3334ae0" class="anchor"></span>
|                                                                                                                                       |     |     |     |       |
|---------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="index.html#a6fb29deb86215b969a721b9c67328eeb" class="el">ResultsTtlType</a> unity::scopes::ScopeMetadata::results\_ttl\_type | (   |     | )   | const |

Return the TTL for the results this scope produces.

Returns  
Enum of timeout type.

<span id="a6c4592204ef51a8a6eec2f6cc65ba8cb" class="anchor"></span>
|                                                            |     |     |     |       |
|------------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::ScopeMetadata::scope\_directory | (   |     | )   | const |

Get directory where scope config files and .so file lives.

Note that the directory is not set for remote scopes; in such case this method throws <a href="../unity.scopes.NotFoundException/index.html" class="el" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a>.

Exceptions  
|                                                                                                                                                                                             |                         |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------|
| <a href="../unity.scopes.NotFoundException/index.html" class="el" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a> | if directory is not set |

<!-- -->

Returns  
path string

<span id="abc13282db1a0d899e6a1daf2a40beba8" class="anchor"></span>
|                                                     |     |     |     |       |
|-----------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::ScopeMetadata::scope\_id | (   |     | )   | const |

Get the scope identifier.

Returns  
The ID of the scope.

<span id="a5c8ae76986842475d4eaf4d2304f6143" class="anchor"></span>
|                                                        |     |     |     |       |
|--------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::ScopeMetadata::search\_hint | (   |     | )   | const |

Get the search hint for this scope.

Returns  
The search hint.

<span id="af2aaf529613cd41a1a9a3895271eab32" class="anchor"></span>
|                                                                                                                                          |     |     |     |       |
|------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes/index.html#ad5d8ccfa11a327fca6f3e4cee11f4c10" class="el">VariantMap</a> unity::scopes::ScopeMetadata::serialize | (   |     | )   | const |

Return a dictionary of all metadata attributes.

Returns  
Dictionary of all metadata attributes.

<span id="a6351dda2c91889a06f0ec31e669ab385" class="anchor"></span>
|                                                                                                                                                        |     |     |     |       |
|--------------------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes/index.html#aa3bf32d584efd902bca79698a07dd934" class="el">VariantArray</a> unity::scopes::ScopeMetadata::settings\_definitions | (   |     | )   | const |

Return the settings definitions for this scope.

Returns  
The settings definition as a VariantArray. The array contains the definition of the settings in their original order.

<!-- -->

Exceptions  
|                                                                                                                                                                                             |                              |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------|
| <a href="../unity.scopes.NotFoundException/index.html" class="el" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a> | if the scope has no settings |

<!-- -->

See also  
TBD TODO

<span id="ac7a2cf80883ad3de1d726728fc0b8e72" class="anchor"></span>
|                                           |     |     |     |       |
|-------------------------------------------|-----|-----|-----|-------|
| int unity::scopes::ScopeMetadata::version | (   |     | )   | const |

Return the version of the scope.

Returns  
The version or, if the scope does not define its version, the value `0`.

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
