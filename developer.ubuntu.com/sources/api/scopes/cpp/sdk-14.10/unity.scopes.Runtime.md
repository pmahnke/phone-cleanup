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
-   [SDK 14.10](../index.html) ›

<!-- -->

-   Runtime

Runtime
=======

The main object for query originators to access the scopes run time. [More...](index.html#details)

`#include <unity/scopes/Runtime.h>`

<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

void 
<a href="index.html#a37009c392ed3a7c6ebaf37cdfdaf6d01" class="el">destroy</a> ()
 
Shuts down the run time, reclaiming all associated resources. More...
 
<a href="../unity.scopes/index.html#a45babc254d3548863d79ee54f266e84d" class="el">RegistryProxy</a> 
<a href="index.html#afc312448a4537b110bf1701bfb964501" class="el">registry</a> () const
 
Returns a proxy to the Registry object. More...
 
void 
<a href="index.html#ac9a0fd04039b521de5ef74d477ececb2" class="el">run_scope</a> (<a href="../unity.scopes.ScopeBase/index.html" class="el">ScopeBase</a> \*const scope\_base, std::string const &runtime\_ini\_file, std::string const &scope\_ini\_file)
 
Run a scope without going through the scope runner. More...
 
void 
<a href="index.html#a8924298a103d43313fe1974c040e7736" class="el">run_scope</a> (<a href="../unity.scopes.ScopeBase/index.html" class="el">ScopeBase</a> \*const scope\_base, std::string const &scope\_ini\_file)
 
Run a scope without going through the scope runner. More...
 
<a href="../unity.scopes/index.html#aa68ce1769f7a888d0b4b2951741ca75a" class="el">ObjectProxy</a> 
<a href="index.html#a24eec46bc15975c219642fcfe8e5357f" class="el">string_to_proxy</a> (std::string const &s) const
 
Convert a string to a proxy. More...
 
std::string 
<a href="index.html#ac96e508aa3d37d24eaf2aa65bdbfb43e" class="el">proxy_to_string</a> (<a href="../unity.scopes/index.html#aa68ce1769f7a888d0b4b2951741ca75a" class="el">ObjectProxy</a> const &proxy) const
 
Converts a proxy to a string. More...
 
 
<a href="index.html#a96f5965eec2dd22c54cca9d99cb04653" class="el">~Runtime</a> ()
 
Destroys a Runtime instance. More...
 
<span id="pub-static-methods"></span> Static Public Member Functions
--------------------------------------------------------------------

static UPtr 
<a href="index.html#a0c24bf97fe98f57c4fc7ad04456bd40c" class="el">create</a> (std::string const &configfile="")
 
Instantiates the scopes run time for a client with the given (optional) configuration file. More...
 
static UPtr 
<a href="index.html#aa729688b3c887476118c0ab5ad6a5a54" class="el">create_scope_runtime</a> (std::string const &scope\_id, std::string const &configfile="")
 
Create a run time for a scope. More...
 
<span id="details"></span>
Detailed Description
--------------------

The main object for query originators to access the scopes run time.

All interactions with the scopes run time require a <a href="index.html" class="el" title="The main object for query originators to access the scopes run time. ">Runtime</a> object to be instantiated first. The <a href="index.html" class="el" title="The main object for query originators to access the scopes run time. ">Runtime</a> instance controls the overall life cycle; once a <a href="index.html" class="el" title="The main object for query originators to access the scopes run time. ">Runtime</a> instance goes out of scope, the application must not make further calls on any instance obtained via the destroyed <a href="index.html" class="el" title="The main object for query originators to access the scopes run time. ">Runtime</a>.

The application must instantiate a <a href="index.html" class="el" title="The main object for query originators to access the scopes run time. ">Runtime</a> object only after `main()` is entered, and it must destroy the instance before leaving `main()`; failure to do so results in undefined behavior.

Note that scope implementations do not need to instantiate a <a href="index.html" class="el" title="The main object for query originators to access the scopes run time. ">Runtime</a> instance.

Constructor & Destructor Documentation
--------------------------------------

<span id="a96f5965eec2dd22c54cca9d99cb04653" class="anchor"></span>
|                                  |     |     |     |     |
|----------------------------------|-----|-----|-----|-----|
| unity::scopes::Runtime::~Runtime | (   |     | )   |     |

Destroys a <a href="index.html" class="el" title="The main object for query originators to access the scopes run time. ">Runtime</a> instance.

The destructor implicitly calls <a href="index.html#a37009c392ed3a7c6ebaf37cdfdaf6d01" class="el" title="Shuts down the run time, reclaiming all associated resources. ">destroy()</a> if the application code does not explicitly destroy the instance. You *must not* permit a <a href="index.html" class="el" title="The main object for query originators to access the scopes run time. ">Runtime</a> instance to persist beyond the end of `main()`; doing so has undefined behavior.

Member Function Documentation
-----------------------------

<span id="a0c24bf97fe98f57c4fc7ad04456bd40c" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>Runtime::UPtr unity::scopes::Runtime::create</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>configfile</em> = <code>&quot;&quot;</code></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">static</span></span></td>
</tr>
</tbody>
</table>

Instantiates the scopes run time for a client with the given (optional) configuration file.

The life time of the run time is under control of the caller. Letting the returned `unique_ptr` go out of scope shuts down the run time.

You *must not* create a <a href="index.html" class="el" title="The main object for query originators to access the scopes run time. ">Runtime</a> instance until after `main()` is entered, and you *must* destroy it before leaving `main()` (either by explicitly calling <a href="index.html#a37009c392ed3a7c6ebaf37cdfdaf6d01" class="el" title="Shuts down the run time, reclaiming all associated resources. ">destroy()</a>, or by letting the returned `unique_ptr` go out of scope). Failure to do so causes undefined behavior.

Parameters  
|            |                                                 |
|------------|-------------------------------------------------|
| configfile | The path name of the configuration file to use. |

If configfile is the empty string, a default configuration is used.

<span id="aa729688b3c887476118c0ab5ad6a5a54" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>Runtime::UPtr unity::scopes::Runtime::create_scope_runtime</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>scope_id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>configfile</em> = <code>&quot;&quot;</code> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">static</span></span></td>
</tr>
</tbody>
</table>

Create a run time for a scope.

This method is provided for custom scoperunner implementations, for example, for scopes written in Go.

Parameters  
|            |                                                                                                                                                                             |
|------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| scope\_id  | The unique ID of the scope. If scope\_id is empty, a unique ID is used. Calling `create_scope_runtime("", "Runtime.ini")` is equivalent to calling `create("Runtime.ini")`. |
| configfile | The path to the run time .ini file. If empty, the default configuration is used.                                                                                            |

<!-- -->

Returns  
A `unique_ptr` to the run time instance.

<span id="a37009c392ed3a7c6ebaf37cdfdaf6d01" class="anchor"></span>
|                                      |     |     |     |     |
|--------------------------------------|-----|-----|-----|-----|
| void unity::scopes::Runtime::destroy | (   |     | )   |     |

Shuts down the run time, reclaiming all associated resources.

Calling <a href="index.html#a37009c392ed3a7c6ebaf37cdfdaf6d01" class="el" title="Shuts down the run time, reclaiming all associated resources. ">destroy()</a> is optional; the destructor implicitly calls <a href="index.html#a37009c392ed3a7c6ebaf37cdfdaf6d01" class="el" title="Shuts down the run time, reclaiming all associated resources. ">destroy()</a> if it was not called explicitly. However, no exceptions are thrown by the destructor. If you want to log or handle any exceptions during shutdown, call <a href="index.html#a37009c392ed3a7c6ebaf37cdfdaf6d01" class="el" title="Shuts down the run time, reclaiming all associated resources. ">destroy()</a> explicitly before letting the `unique_ptr` returned by <a href="index.html#a0c24bf97fe98f57c4fc7ad04456bd40c" class="el" title="Instantiates the scopes run time for a client with the given (optional) configuration file...">create()</a> go out of scope.

<span id="ac96e508aa3d37d24eaf2aa65bdbfb43e" class="anchor"></span>
|                                                  |     |                                                                                                            |         |     |       |
|--------------------------------------------------|-----|------------------------------------------------------------------------------------------------------------|---------|-----|-------|
| string unity::scopes::Runtime::proxy\_to\_string | (   | <a href="../unity.scopes/index.html#aa68ce1769f7a888d0b4b2951741ca75a" class="el">ObjectProxy</a> const &  | *proxy* | )   | const |

Converts a proxy to a string.

<a href="index.html#ac96e508aa3d37d24eaf2aa65bdbfb43e" class="el" title="Converts a proxy to a string. ">proxy_to_string()</a> converts the passed proxy to a string. Note that it is typically easier to call the ObjectProxy::to\_string() method to achieve the same thing. However, <a href="index.html#ac96e508aa3d37d24eaf2aa65bdbfb43e" class="el" title="Converts a proxy to a string. ">proxy_to_string()</a> is needed in order to obtain a string for a null proxy (because it is not possible to invoke a member function on a null proxy).

Parameters  
|       |                                   |
|-------|-----------------------------------|
| proxy | The proxy to convert to a string. |

<!-- -->

Returns  
The string representation of the proxy.

<span id="afc312448a4537b110bf1701bfb964501" class="anchor"></span>
|                                                                                                                                      |     |     |     |       |
|--------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes/index.html#a45babc254d3548863d79ee54f266e84d" class="el">RegistryProxy</a> unity::scopes::Runtime::registry | (   |     | )   | const |

Returns a proxy to the <a href="../unity.scopes.Registry/index.html" class="el" title="White pages service for available scopes. ">Registry</a> object.

The returned proxy allows application code to interact with the registry, which provides access to the available scopes.

<span id="ac9a0fd04039b521de5ef74d477ececb2" class="anchor"></span>
|                                         |     |                                                                                  |                       |
|-----------------------------------------|-----|----------------------------------------------------------------------------------|-----------------------|
| void unity::scopes::Runtime::run\_scope | (   | <a href="../unity.scopes.ScopeBase/index.html" class="el">ScopeBase</a> \*const  | *scope\_base*,        |
|                                         |     | std::string const &                                                              | *runtime\_ini\_file*, |
|                                         |     | std::string const &                                                              | *scope\_ini\_file*    |
|                                         | )   |                                                                                  |                       |

Run a scope without going through the scope runner.

This method is intended to run a scope that can not be loaded via the scope runner, such as those written in languages that can not be dynamically loaded.

Parameters  
|                    |                                                                                                    |
|--------------------|----------------------------------------------------------------------------------------------------|
| scope\_base        | The scope implementation                                                                           |
| runtime\_ini\_file | The full path of runtime configuration file. Passing an empty string uses a default configuration. |
| scope\_ini\_file   | The full path of scope configuration file                                                          |

<span id="a8924298a103d43313fe1974c040e7736" class="anchor"></span>
|                                         |     |                                                                                  |                     |
|-----------------------------------------|-----|----------------------------------------------------------------------------------|---------------------|
| void unity::scopes::Runtime::run\_scope | (   | <a href="../unity.scopes.ScopeBase/index.html" class="el">ScopeBase</a> \*const  | *scope\_base*,      |
|                                         |     | std::string const &                                                              | *scope\_ini\_file*  |
|                                         | )   |                                                                                  |                     |

Run a scope without going through the scope runner.

Equivalent to `run_scope(scope_base, "", scope_ini_file);`

<span id="a24eec46bc15975c219642fcfe8e5357f" class="anchor"></span>
|                                                                                                                                             |     |                      |     |     |       |
|---------------------------------------------------------------------------------------------------------------------------------------------|-----|----------------------|-----|-----|-------|
| <a href="../unity.scopes/index.html#aa68ce1769f7a888d0b4b2951741ca75a" class="el">ObjectProxy</a> unity::scopes::Runtime::string\_to\_proxy | (   | std::string const &  | *s* | )   | const |

Convert a string to a proxy.

This method is intended for testing purposes. Do not use <a href="index.html#a24eec46bc15975c219642fcfe8e5357f" class="el" title="Convert a string to a proxy. ">string_to_proxy()</a> in production code! <a href="index.html#a24eec46bc15975c219642fcfe8e5357f" class="el" title="Convert a string to a proxy. ">string_to_proxy()</a> converts a string to a proxy. The returned proxy must be down-cast using `dynamic_pointer_cast` to the correct type before it can be used.

Parameters  
|     |                                     |
|-----|-------------------------------------|
| s   | The string to convert into a proxy. |

<!-- -->

Returns  
The converted proxy. It is possible for the return value to be `nullptr`, but only if the passed string represents a null proxy. Otherwise, the return value is a non-null proxy, or an exception (for example, if the proxy string did not parse correctly, or if the proxy could not be instantiated due to incorrect values inside the string).

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
