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

<!-- -->

-   OnlineAccountClient

OnlineAccountClient
===================

A simple interface for integrating online accounts access and monitoring into scopes. [More...](index.html#details)

`#include <unity/scopes/OnlineAccountClient.h>`

<span id="nested-classes"></span> Classes
-----------------------------------------

struct  
<a href="../unity.scopes.OnlineAccountClient.ServiceStatus/index.html" class="el">ServiceStatus</a>
 
A container for details about a service's status and authorization parameters. [More...](../unity.scopes.OnlineAccountClient.ServiceStatus/index.html#details)
 
<span id="pub-types"></span> Public Types
-----------------------------------------

enum  
<a href="index.html#af9407bf4186d20e8445379e000e57f20" class="el">MainLoopSelect</a> { <a href="index.html#af9407bf4186d20e8445379e000e57f20a541835f51d0a5ec79aaddada2e91ebf1" class="el">RunInExternalMainLoop</a>, <a href="index.html#af9407bf4186d20e8445379e000e57f20af63048fc5fcfcdf174df9a1c65939470" class="el">CreateInternalMainLoop</a> }
 
Indicates whether an external main loop already exists, or one should be created internally. [More...](index.html#af9407bf4186d20e8445379e000e57f20)
 
enum  
<a href="index.html#a4505ad39c78dcc9fbb78a594c33b9a22" class="el">PostLoginAction</a> {
  <a href="index.html#a4505ad39c78dcc9fbb78a594c33b9a22ab365a1534cce6d36e42e0be03169ffb6" class="el">Unknown</a>, <a href="index.html#a4505ad39c78dcc9fbb78a594c33b9a22a20868ed64ce21f859aae50ec76aa738d" class="el">DoNothing</a>, <a href="index.html#a4505ad39c78dcc9fbb78a594c33b9a22a4096156be602a8dd697c5a2f1d834cec" class="el">InvalidateResults</a>, <a href="index.html#a4505ad39c78dcc9fbb78a594c33b9a22ac4055329b8e4dbec09736d1f7025d66b" class="el">ContinueActivation</a>,
  <a href="index.html#a4505ad39c78dcc9fbb78a594c33b9a22a2b115d76d434e3db48f278562e585b0c" class="el">LastActionCode_</a> = ContinueActivation
}
 
Indicates what action to take when the login process completes. [More...](index.html#a4505ad39c78dcc9fbb78a594c33b9a22)
 
typedef std::function&lt; void(<a href="../unity.scopes.OnlineAccountClient.ServiceStatus/index.html" class="el">ServiceStatus</a> const &)&gt; 
<a href="index.html#a0c327d92e4684b5849928fa18ebfc204" class="el">ServiceUpdateCallback</a>
 
Function signature for the service update callback. More...
 
<span id="pub-methods"></span> Public Member Functions
------------------------------------------------------

 
<a href="index.html#af1139a1b81d9d95c0c84ea52d51dc07c" class="el">OnlineAccountClient</a> (std::string const &service\_name, std::string const &service\_type, std::string const &provider\_name, <a href="index.html#af9407bf4186d20e8445379e000e57f20" class="el">MainLoopSelect</a> main\_loop\_select=<a href="index.html#af9407bf4186d20e8445379e000e57f20af63048fc5fcfcdf174df9a1c65939470" class="el">CreateInternalMainLoop</a>)
 
Create OnlineAccountClient for the specified account service. More...
 
 
<a href="index.html#a84abcdff4d36c0d9544add0052df4fe2" class="el">OnlineAccountClient</a> (std::string const &service\_name, std::string const &service\_type, std::string const &provider\_name, <a href="../unity.scopes/index.html#ad5d8ccfa11a327fca6f3e4cee11f4c10" class="el">VariantMap</a> const &auth\_params, <a href="index.html#af9407bf4186d20e8445379e000e57f20" class="el">MainLoopSelect</a> main\_loop\_select=<a href="index.html#af9407bf4186d20e8445379e000e57f20af63048fc5fcfcdf174df9a1c65939470" class="el">CreateInternalMainLoop</a>)
 
Create OnlineAccountClient for the specified account service. More...
 
void 
<a href="index.html#a9ca9980de9adedb524a3143936400be0" class="el">set_service_update_callback</a> (<a href="index.html#a0c327d92e4684b5849928fa18ebfc204" class="el">ServiceUpdateCallback</a> callback)
 
Set the callback function to be invoked when a service status changes. More...
 
void 
<a href="index.html#adaa0dacf9d31bc23fc35e082d3b7a7ee" class="el">refresh_service_statuses</a> ()
 
Refresh all service statuses. More...
 
std::vector&lt; <a href="../unity.scopes.OnlineAccountClient.ServiceStatus/index.html" class="el">ServiceStatus</a> &gt; 
<a href="index.html#abe613053f2292f595247aa67c8f78351" class="el">get_service_statuses</a> ()
 
Get statuses for all services matching the name, type and provider specified on construction. More...
 
void 
<a href="index.html#a78b3e267ff30c23cc3a3644f29724e9b" class="el">register_account_login_item</a> (<a href="../unity.scopes.Result/index.html" class="el">Result</a> &result, <a href="../unity.scopes.CannedQuery/index.html" class="el">CannedQuery</a> const &query, <a href="index.html#a4505ad39c78dcc9fbb78a594c33b9a22" class="el">PostLoginAction</a> login\_passed\_action, <a href="index.html#a4505ad39c78dcc9fbb78a594c33b9a22" class="el">PostLoginAction</a> login\_failed\_action)
 
Register a result item that requires the user to be logged in. More...
 
void 
<a href="index.html#a2fcd08f9c9b4fb625ba733e895e60f6c" class="el">register_account_login_item</a> (<a href="../unity.scopes.PreviewWidget/index.html" class="el">PreviewWidget</a> &widget, <a href="index.html#a4505ad39c78dcc9fbb78a594c33b9a22" class="el">PostLoginAction</a> login\_passed\_action, <a href="index.html#a4505ad39c78dcc9fbb78a594c33b9a22" class="el">PostLoginAction</a> login\_failed\_action)
 
Register a widget item that requires the user to be logged in. More...
 
<span id="details"></span>
Detailed Description
--------------------

A simple interface for integrating online accounts access and monitoring into scopes.

Each instantiation of this class targets a particular account service as specified on construction.

Member Typedef Documentation
----------------------------

<span id="a0c327d92e4684b5849928fa18ebfc204" class="anchor"></span>
|                                                                                                                                                                                                                                                                               |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| typedef std::function&lt;void(<a href="../unity.scopes.OnlineAccountClient.ServiceStatus/index.html" class="el">ServiceStatus</a> const&)&gt; <a href="index.html#a0c327d92e4684b5849928fa18ebfc204" class="el">unity::scopes::OnlineAccountClient::ServiceUpdateCallback</a> |

Function signature for the service update callback.

See also  
<a href="index.html#a9ca9980de9adedb524a3143936400be0" class="el" title="Set the callback function to be invoked when a service status changes. ">set_service_update_callback</a>

Member Enumeration Documentation
--------------------------------

<span id="af9407bf4186d20e8445379e000e57f20" class="anchor"></span>
|                                                                                                                               |
|-------------------------------------------------------------------------------------------------------------------------------|
| enum <a href="index.html#af9407bf4186d20e8445379e000e57f20" class="el">unity::scopes::OnlineAccountClient::MainLoopSelect</a> |

Indicates whether an external main loop already exists, or one should be created internally.

A running main loop is essential in order to receive service updates from the online accounts backend. When in doubt, set to CreateInternalMainLoop.

Enumerator
<span id="af9407bf4186d20e8445379e000e57f20a541835f51d0a5ec79aaddada2e91ebf1" class="anchor"></span>RunInExternalMainLoop 
An external main loop already exists and is running.

<span id="af9407bf4186d20e8445379e000e57f20af63048fc5fcfcdf174df9a1c65939470" class="anchor"></span>CreateInternalMainLoop 
An external main loop does not exist.

<span id="a4505ad39c78dcc9fbb78a594c33b9a22" class="anchor"></span>
|                                                                                                                                |
|--------------------------------------------------------------------------------------------------------------------------------|
| enum <a href="index.html#a4505ad39c78dcc9fbb78a594c33b9a22" class="el">unity::scopes::OnlineAccountClient::PostLoginAction</a> |

Indicates what action to take when the login process completes.

Enumerator
<span id="a4505ad39c78dcc9fbb78a594c33b9a22ab365a1534cce6d36e42e0be03169ffb6" class="anchor"></span>Unknown 
An action unknown to the run-time was used.

<span id="a4505ad39c78dcc9fbb78a594c33b9a22a20868ed64ce21f859aae50ec76aa738d" class="anchor"></span>DoNothing 
Simply return to the scope with no further action.

<span id="a4505ad39c78dcc9fbb78a594c33b9a22a4096156be602a8dd697c5a2f1d834cec" class="anchor"></span>InvalidateResults 
Invalidate the scope results.

<span id="a4505ad39c78dcc9fbb78a594c33b9a22ac4055329b8e4dbec09736d1f7025d66b" class="anchor"></span>ContinueActivation 
Continue with regular result / widget activation.

<span id="a4505ad39c78dcc9fbb78a594c33b9a22a2b115d76d434e3db48f278562e585b0c" class="anchor"></span>LastActionCode\_ 
Dummy end marker.

Constructor & Destructor Documentation
--------------------------------------

<span id="af1139a1b81d9d95c0c84ea52d51dc07c" class="anchor"></span>
|                                                         |     |                                                                                       |                                                  |
|---------------------------------------------------------|-----|---------------------------------------------------------------------------------------|--------------------------------------------------|
| unity::scopes::OnlineAccountClient::OnlineAccountClient | (   | std::string const &                                                                   | *service\_name*,                                 |
|                                                         |     | std::string const &                                                                   | *service\_type*,                                 |
|                                                         |     | std::string const &                                                                   | *provider\_name*,                                |
|                                                         |     | <a href="index.html#af9407bf4186d20e8445379e000e57f20" class="el">MainLoopSelect</a>  | *main\_loop\_select* = `CreateInternalMainLoop`  |
|                                                         | )   |                                                                                       |                                                  |

Create <a href="index.html" class="el" title="A simple interface for integrating online accounts access and monitoring into scopes. ">OnlineAccountClient</a> for the specified account service.

Parameters  
|                    |                                                                                                                                                                                                                                                                              |
|--------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| service\_name      | The name of the service (E.g. "com.ubuntu.scopes.youtube\_youtube").                                                                                                                                                                                                         |
| service\_type      | The type of service (E.g. "sharing").                                                                                                                                                                                                                                        |
| provider\_name     | The name of the service provider (E.g. "google").                                                                                                                                                                                                                            |
| main\_loop\_select | Indicates whether or not an external main loop exists (see <a href="index.html#af9407bf4186d20e8445379e000e57f20" class="el" title="Indicates whether an external main loop already exists, or one should be created internally. ">OnlineAccountClient::MainLoopSelect</a>). |

<span id="a84abcdff4d36c0d9544add0052df4fe2" class="anchor"></span>
|                                                         |     |                                                                                                           |                                                  |
|---------------------------------------------------------|-----|-----------------------------------------------------------------------------------------------------------|--------------------------------------------------|
| unity::scopes::OnlineAccountClient::OnlineAccountClient | (   | std::string const &                                                                                       | *service\_name*,                                 |
|                                                         |     | std::string const &                                                                                       | *service\_type*,                                 |
|                                                         |     | std::string const &                                                                                       | *provider\_name*,                                |
|                                                         |     | <a href="../unity.scopes/index.html#ad5d8ccfa11a327fca6f3e4cee11f4c10" class="el">VariantMap</a> const &  | *auth\_params*,                                  |
|                                                         |     | <a href="index.html#af9407bf4186d20e8445379e000e57f20" class="el">MainLoopSelect</a>                      | *main\_loop\_select* = `CreateInternalMainLoop`  |
|                                                         | )   |                                                                                                           |                                                  |

Create <a href="index.html" class="el" title="A simple interface for integrating online accounts access and monitoring into scopes. ">OnlineAccountClient</a> for the specified account service.

Parameters  
|                    |                                                                                                                                                                                                                                                                              |
|--------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| service\_name      | The name of the service (E.g. "com.ubuntu.scopes.youtube\_youtube").                                                                                                                                                                                                         |
| service\_type      | The type of service (E.g. "sharing").                                                                                                                                                                                                                                        |
| provider\_name     | The name of the service provider (E.g. "google").                                                                                                                                                                                                                            |
| auth\_params       | Authentication parameters; this can be used to pass the OAuth client keys, for example.                                                                                                                                                                                      |
| main\_loop\_select | Indicates whether or not an external main loop exists (see <a href="index.html#af9407bf4186d20e8445379e000e57f20" class="el" title="Indicates whether an external main loop already exists, or one should be created internally. ">OnlineAccountClient::MainLoopSelect</a>). |

Member Function Documentation
-----------------------------

<span id="abe613053f2292f595247aa67c8f78351" class="anchor"></span>
|                                                                                                                                                                                                          |     |     |     |     |
|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-----|
| std::vector&lt; <a href="../unity.scopes.OnlineAccountClient.ServiceStatus/index.html" class="el">OnlineAccountClient::ServiceStatus</a> &gt; unity::scopes::OnlineAccountClient::get\_service\_statuses | (   |     | )   |     |

Get statuses for all services matching the name, type and provider specified on construction.

Returns  
A list of service statuses.

<span id="adaa0dacf9d31bc23fc35e082d3b7a7ee" class="anchor"></span>
|                                                                     |     |     |     |     |
|---------------------------------------------------------------------|-----|-----|-----|-----|
| void unity::scopes::OnlineAccountClient::refresh\_service\_statuses | (   |     | )   |     |

Refresh all service statuses.

**WARNING**: If a service update callback is set, this method will invoke that callback for each service monitored. Therefore, DO NOT call this method from within your callback function!

<span id="a78b3e267ff30c23cc3a3644f29724e9b" class="anchor"></span>
|                                                                         |     |                                                                                        |                          |
|-------------------------------------------------------------------------|-----|----------------------------------------------------------------------------------------|--------------------------|
| void unity::scopes::OnlineAccountClient::register\_account\_login\_item | (   | <a href="../unity.scopes.Result/index.html" class="el">Result</a> &                    | *result*,                |
|                                                                         |     | <a href="../unity.scopes.CannedQuery/index.html" class="el">CannedQuery</a> const &    | *query*,                 |
|                                                                         |     | <a href="index.html#a4505ad39c78dcc9fbb78a594c33b9a22" class="el">PostLoginAction</a>  | *login\_passed\_action*, |
|                                                                         |     | <a href="index.html#a4505ad39c78dcc9fbb78a594c33b9a22" class="el">PostLoginAction</a>  | *login\_failed\_action*  |
|                                                                         | )   |                                                                                        |                          |

Register a result item that requires the user to be logged in.

Parameters  
|                       |                                             |
|-----------------------|---------------------------------------------|
| result                | The result item that needs account access.  |
| query                 | The scope's current query.                  |
| login\_passed\_action | The action to take upon successful login.   |
| login\_failed\_action | The action to take upon unsuccessful login. |

<span id="a2fcd08f9c9b4fb625ba733e895e60f6c" class="anchor"></span>
|                                                                         |     |                                                                                        |                          |
|-------------------------------------------------------------------------|-----|----------------------------------------------------------------------------------------|--------------------------|
| void unity::scopes::OnlineAccountClient::register\_account\_login\_item | (   | <a href="../unity.scopes.PreviewWidget/index.html" class="el">PreviewWidget</a> &      | *widget*,                |
|                                                                         |     | <a href="index.html#a4505ad39c78dcc9fbb78a594c33b9a22" class="el">PostLoginAction</a>  | *login\_passed\_action*, |
|                                                                         |     | <a href="index.html#a4505ad39c78dcc9fbb78a594c33b9a22" class="el">PostLoginAction</a>  | *login\_failed\_action*  |
|                                                                         | )   |                                                                                        |                          |

Register a widget item that requires the user to be logged in.

Parameters  
|                       |                                             |
|-----------------------|---------------------------------------------|
| widget                | The widget item that needs account access.  |
| login\_passed\_action | The action to take upon successful login.   |
| login\_failed\_action | The action to take upon unsuccessful login. |

<span id="a9ca9980de9adedb524a3143936400be0" class="anchor"></span>
|                                                                         |     |                                                                                              |            |     |     |
|-------------------------------------------------------------------------|-----|----------------------------------------------------------------------------------------------|------------|-----|-----|
| void unity::scopes::OnlineAccountClient::set\_service\_update\_callback | (   | <a href="index.html#a0c327d92e4684b5849928fa18ebfc204" class="el">ServiceUpdateCallback</a>  | *callback* | )   |     |

Set the callback function to be invoked when a service status changes.

Parameters  
|          |                                 |
|----------|---------------------------------|
| callback | The external callback function. |

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
