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
-   [Autopilot](../../../index.html) ›
-   [Python](../../index.html) ›
-   <a href="../index.html" class="sub-nav-item">1.5.0</a> ›
-   scope\_harness

<!-- -->

scope\_harness
--------------

API<a href="index.html#api" class="headerlink" title="Permalink to this headline"></a>
======================================================================================

Main classes<a href="index.html#main-classes" class="headerlink" title="Permalink to this headline"></a>
--------------------------------------------------------------------------------------------------------

### Elements

[Category](../scope_harness.Category/index.html)  
Represents a read-only view of a category returned by scope

[CategoryListMatcher](../scope_harness.CategoryListMatcher/index.html)  
Matcher object that holds constraints for matching search categories.

[CategoryListMatcherMode](../scope_harness.CategoryListMatcherMode/index.html)  
Match mode for category list

[CategoryMatcher](../scope_harness.CategoryMatcher/index.html)  
Matcher object that holds constraints for matching search category.

[CategoryMatcherMode](../scope_harness.CategoryMatcherMode/index.html)  
Match mode for category results

[ChildDepartment](../scope_harness.ChildDepartment/index.html)  
Represents a read-only view of a child department.

[ChildDepartmentMatcher](../scope_harness.ChildDepartmentMatcher/index.html)  
Matcher object that holds constraints for matching child departments of a department.

[CustomRegistry](../scope_harness.CustomRegistry/index.html)  

[Department](../scope_harness.Department/index.html)  
Represents a read-only view of a department returned by a scope. Use id, label, all\_label properties to inspect it, and children property or child method to inspect child departments (instances of ChildDepartment). This class supports \_\_getitem\_\_ call...

[DepartmentMatcher](../scope_harness.DepartmentMatcher/index.html)  
Matcher object that holds constraints for matching departments.

[DepartmentMatcherMode](../scope_harness.DepartmentMatcherMode/index.html)  
Match mode for departments

[MatchResult](../scope_harness.MatchResult/index.html)  
Represents the result of matching and is the final object you want to check in your tests. An instance of MatchResult can be obtained by calling one of the match() methods of ResultMatcher, CategoryMatcher, CategoryListMatcher, DepartmentMatcher and Ch...

[Parameters](../scope_harness.Parameters/index.html)  
Parameters for instantiating a CustomRegistry instace

[PreviewColumnMatcher](../scope_harness.PreviewColumnMatcher/index.html)  
match( (PreviewColumnMatcher)arg1, (MatchResult)arg2, (object)arg3) -&gt; None

[PreviewMatcher](../scope_harness.PreviewMatcher/index.html)  
match( (PreviewMatcher)arg1, (MatchResult)arg2, (PreviewWidgetList)arg3) -&gt; None

[PreviewView](../scope_harness.PreviewView/index.html)  
This is a view on a preview returned by activation of search Result. Set column\_count property to the desired number of columns, then inspect widgets in every column using widgets\_in\_column(index) method.

[PreviewWidget](../scope_harness.PreviewWidget/index.html)  
This class represents a single widget of a preview, such as an image or header. The ‘data’ property is a regular python dictionary that corresponds to Scopes API VariantMap and contains actual key-values that constitute the widget. See the ...

[PreviewWidgetList](../scope_harness.PreviewWidgetList/index.html)  
A simple container for preview widgets returned by a scope. The number of widgets can be determined with python’s len() function and individual widgets can be accessed using \[\] operator. The \[\] indexing operator supports numeric index values as w...

[PreviewWidgetMatcher](../scope_harness.PreviewWidgetMatcher/index.html)  
Matcher object that holds constraints for matching a preview widget.

[Result](../scope_harness.Result/index.html)  
Represents a read-only view on a result returned by a scope

[ResultMatcher](../scope_harness.ResultMatcher/index.html)  
Matcher object that holds constraints for matching search result.

[ResultsView](../scope_harness.ResultsView/index.html)  
This is the main class for driving search and inspecting search results. Set search\_query property to invoke search, then inspect categories property to access returned categories and their results. Use browse\_department method to change active departm...

[ScopeHarness](../scope_harness.ScopeHarness/index.html)  
This is the main class for scope harness testing. An instance of it needs to be created using one of the static class methods (new\_from\_\*) before any tests can be perfor

[ScopeUri](../scope_harness.ScopeUri/index.html)  
Helper class for creating scope:// uris

[SearchStatus](../scope_harness.SearchStatus/index.html)  

[SettingsMatcher](../scope_harness.SettingsMatcher/index.html)  
Matcher object that holds constraints for matchins settings (SettingsView) object.

[SettingsMatcherMode](../scope_harness.SettingsMatcherMode/index.html)  
Match mode for settings

[SettingsOption](../scope_harness.SettingsOption/index.html)  
This is a class holding properies of an option

[SettingsOptionMatcher](../scope_harness.SettingsOptionMatcher/index.html)  
Matcher object that holds constraints for matching a settings option.

[SettingsOptionType](../scope_harness.SettingsOptionType/index.html)  

[SettingsView](../scope_harness.SettingsView/index.html)  
This is a view on a scope settings returned by settings() method of ResultsView.

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
