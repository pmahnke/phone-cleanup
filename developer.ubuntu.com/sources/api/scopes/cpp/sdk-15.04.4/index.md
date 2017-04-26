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

-   [APIs](../../../index.html) ›
-   [Scopes](../../index.html) ›
-   [C++](../index.html) ›
-   SDK 15.04.4

<!-- -->

C++ Scopes for SDK 15.04.4
--------------------------

### Searching

**Pages**
-   [Unity Scopes API](index/index.html)
-   [Release notes](md__r_e_l_e_a_s_e__n_o_t_e_s/index.html)
-   [Preview widget types](previewwidgets/index.html)
-   [unity](unity/index.html)
-   [unity.scopes](unity.scopes/index.html)

**Namespaces**
-   [qt](unity.scopes.qt/index.html)
-   [utility](unity.scopes.utility/index.html)

**Elements**
-   [ActivationListenerBase](unity.scopes.ActivationListenerBase/index.html) - Base class to receive a response to a result activation request.
-   [ActivationQueryBase](unity.scopes.ActivationQueryBase/index.html) - Base class for an activation request that is executed inside a scope.
-   [ActivationResponse](unity.scopes.ActivationResponse/index.html) - Response to a result activation.
-   [CannedQuery](unity.scopes.CannedQuery/index.html) - Parameters of a search query.
-   [CategorisedResult](unity.scopes.CategorisedResult/index.html) - A result, including the category it belongs to.
-   [ChildScope](unity.scopes.ChildScope/index.html) - A container for details about an aggregator's child scope.
-   [CompletionDetails](unity.scopes.CompletionDetails/index.html) - A container for details about the completion status of a query as well as any additional information regarding the operation of the request.
-   [FilterGroup](unity.scopes.FilterGroup/index.html) - Groups several filters into an expandable widget in the UI.
-   [ListenerBase](unity.scopes.ListenerBase/index.html) - Abstract base class to be notified of request completion (such as a query or activation request).
-   [Location](unity.scopes.Location/index.html) - Holds location attributes such as latitude, longitude, etc.
-   [Object](unity.scopes.Object/index.html) - The root base class for all proxies.
-   [OperationInfo](unity.scopes.OperationInfo/index.html) - A container for details about something of interest that occurs during the operation of a request.
-   [QueryBase](unity.scopes.QueryBase/index.html) - Abstract server-side base interface for a query that is executed inside a scope.
-   [QueryCtrl](unity.scopes.QueryCtrl/index.html) - QueryCtrl allows a query to be cancelled.
-   [QueryMetadata](unity.scopes.QueryMetadata/index.html) - Base class for extra metadata passed to scopes as a part of a request.
-   [RangeInputFilter](unity.scopes.RangeInputFilter/index.html) - A range filter allows a start and end value to be entered by the user.
-   [Registry](unity.scopes.Registry/index.html) - White pages service for available scopes.
-   [Reply](unity.scopes.Reply/index.html) - Allows query termination to be sent to the source of a query.
-   [Result](unity.scopes.Result/index.html) - The attributes of a result returned by a Scope.
-   [Runtime](unity.scopes.Runtime/index.html) - The main object for query originators to access the scopes runtime.
-   [Scope](unity.scopes.Scope/index.html) - Allows queries, preview requests, and activation requests to be sent to a scope.
-   [ScopeBase](unity.scopes.ScopeBase/index.html) - Base class for a scope implementation.
-   [ScopeMetadata](unity.scopes.ScopeMetadata/index.html) - Holds scope attributes such as name, description, icon etc.
-   [SearchListenerBase](unity.scopes.SearchListenerBase/index.html) - Abstract base interface for a client to receive the results of a query.
-   [SearchMetadata](unity.scopes.SearchMetadata/index.html) - Metadata passed with search requests.
-   [SearchQueryBase](unity.scopes.SearchQueryBase/index.html) - Abstract base class to represent a particular query.
-   [SearchReply](unity.scopes.SearchReply/index.html) - Allows the results of a search query to be sent to the query source.
-   [ValueSliderFilter](unity.scopes.ValueSliderFilter/index.html) - A value slider filter that allows for selecting a value within a given range.
-   [ValueSliderLabels](unity.scopes.ValueSliderLabels/index.html) - Labels used by a ValueSliderFilter.

### Filtering

-   [Category](unity.scopes.Category/index.html) - A set of related results returned by a scope and displayed within a single pane in the Unity dash.
-   [CategoryRenderer](unity.scopes.CategoryRenderer/index.html) - A category renderer template in JSON format.
-   [ColumnLayout](unity.scopes.ColumnLayout/index.html) - Defines a layout for preview widgets with given column setup.
-   [Department](unity.scopes.Department/index.html) - A department with optional sub-departments.
-   [FilterBase](unity.scopes.FilterBase/index.html) - Base class for all implementations of filters.
-   [FilterOption](unity.scopes.FilterOption/index.html) - Holds definition of filter option for OptionSelectorFilter.
-   [FilterState](unity.scopes.FilterState/index.html) - Stores the state of multiple filters.
-   [OptionSelectorFilter](unity.scopes.OptionSelectorFilter/index.html) - A selection filter that displays a list of choices and allows one or more of them to be selected.

### Exceptions

-   [ConfigException](unity.scopes.ConfigException/index.html) - Exception to indicate that something went wrong with the contents of configuration files.
-   [MiddlewareException](unity.scopes.MiddlewareException/index.html) - Exception to indicate that something went wrong with the middleware layer.
-   [NotFoundException](unity.scopes.NotFoundException/index.html) - Exception to indicate that an object wasn't found by a lookup function.
-   [ObjectNotExistException](unity.scopes.ObjectNotExistException/index.html) - Exception to indicate that a (twoway) request was sent to an object with an unknown identity.
-   [TimeoutException](unity.scopes.TimeoutException/index.html) - Exception to indicate that a twoway request timed out.

### Previews

-   [ActionMetadata](unity.scopes.ActionMetadata/index.html) - Metadata passed to scopes for preview and activation.
-   [PreviewListenerBase](unity.scopes.PreviewListenerBase/index.html) - Abstract base class for a scope to respond to preview requests.
-   [PreviewQueryBase](unity.scopes.PreviewQueryBase/index.html) - Abstract base class to represent a particular preview.
-   [PreviewReply](unity.scopes.PreviewReply/index.html) - Allows the results of a preview to be sent to the preview requester.
-   [PreviewWidget](unity.scopes.PreviewWidget/index.html) - A widget for a preview.

### Platform Services

**Namespaces**
-   [Accounts](Accounts/index.html)
-   [U1db](U1db/index.html)
-   [OnlineAccountClient](unity.scopes.OnlineAccountClient/index.html)

**Elements**
-   [OnlineAccountClient](unity.scopes.OnlineAccountClient/index.html) - A simple interface for integrating online accounts access and monitoring into scopes.

### Common

-   [Link](unity.scopes.Link/index.html) - A hyperlink (label and canned query).
-   [Variant](unity.scopes.Variant/index.html) - Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value.
-   [VariantBuilder](unity.scopes.VariantBuilder/index.html) - Helper class for creating and populating Variant containers.

### Testing

-   [testing](unity.scopes.testing/index.html)
-   [testing.Benchmark](unity.scopes.testing.Benchmark/index.html)

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
