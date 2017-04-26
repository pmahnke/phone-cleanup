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
-   [Apps](../../../index.html) ›
-   [QML](../../index.html) ›
-   <a href="../index.html" class="sub-nav-item">SDK 14.10</a> ›
-   <a href="../Ubuntu.Components/index.html" class="sub-nav-item">Ubuntu.Components</a> ›

<!-- -->

-   Basic QML Types

Basic QML Types
===============

<span class="subtitle"></span>
<span id="details"></span>

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Button/index.html">Button</a></p></td>
<td><p>Standard Ubuntu button.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.UbuntuColors/index.html">UbuntuColors</a></p></td>
<td><p>Singleton defining the Ubuntu color palette.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.AbstractButton/index.html">AbstractButton</a></p></td>
<td><p>The AbstractButton class defines the behavior of the button.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ActionItem/index.html">ActionItem</a></p></td>
<td><p>A visual representation of an Action. The API of ActionItem is a copy of the API of Action, with additional properties to define visual aspects of the ActionItem.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.ActionList/index.html">ActionList</a></p></td>
<td><p>List of Action items</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ActivityIndicator/index.html">ActivityIndicator</a></p></td>
<td><p>The ActivityIndicator component visually indicates that a task of unknown duration is in progress, e.g. busy indication, connection in progress indication, etc.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.CheckBox/index.html">CheckBox</a></p></td>
<td><p>CheckBox is a component with two states, checked or unchecked. It can be used to set boolean options. The behavior is the same as Switch, the only difference is the graphical style.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ComboButton/index.html">ComboButton</a></p></td>
<td><p>Ubuntu button providing a drop-down panel visualizing custom options.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Icon/index.html">Icon</a></p></td>
<td><p>The Icon component displays an icon from the icon theme.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Label/index.html">Label</a></p></td>
<td><p>Text with Ubuntu styling.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.MainView/index.html">MainView</a></p></td>
<td><p>MainView is the root Item that should be used for all applications. It automatically adds a header and toolbar for its contents and can rotate its content based on the device orientation.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.OptionSelector/index.html">OptionSelector</a></p></td>
<td><p>Component displaying either a single selected value or expanded multiple choice with an optional image and subtext when not expanded, when expanding it opens a listing of all the possible values for selection with an additional option of always being expanded. If multiple choice is selected the list is expanded automatically.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.OrientationHelper/index.html">OrientationHelper</a></p></td>
<td><p>The OrientationHelper automatically rotates its children following the orientation of the device.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Page/index.html">Page</a></p></td>
<td><p>A page is the basic Item that must be used inside the MainView, PageStack and Tabs. Anchors and height of a Page are automatically determined to align with the header of the MainView, but can be overridden.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.PageHeadConfiguration/index.html">PageHeadConfiguration</a></p></td>
<td><p>Page.head is used to configure the header for a Page.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.PageHeadSections/index.html">PageHeadSections</a></p></td>
<td><p>PageHeadSections is used to configure the sections for a Page.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.PageHeadState/index.html">PageHeadState</a></p></td>
<td><p>PageHeadState is a helper component to make it easier to configure the page header when changing states.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.PageStack/index.html">PageStack</a></p></td>
<td><p>A stack of Page items that is used for inter-Page navigation. Pages on the stack can be popped, and new Pages can be pushed. The page on top of the stack is the visible one.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Panel/index.html">Panel</a></p></td>
<td><p>A panel that can be swiped in and out from an edge of the window by the user. For most applications, it is highly recommended to use the MainView instead which includes a toolbar at its bottom that can be swiped in or out.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.PickerPanel/index.html">PickerPanel</a></p></td>
<td><p>Provides a panel for opening a DatePicker in place of the input panel or as Popover, depending on the form factor.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.ProgressBar10/index.html">ProgressBar10</a></p></td>
<td><p>The ProgressBar component visually indicates the progress of a process of determinate or indeterminate duration.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.PullToRefresh/index.html">PullToRefresh</a></p></td>
<td><p>Pull-to-refresh component for Flickables to reload a model upon pull.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Scrollbar/index.html">Scrollbar</a></p></td>
<td><p>The ScrollBar component provides scrolling functionality for scrollable views (i.e. Flickable, ListView).</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Slider/index.html">Slider</a></p></td>
<td><p>Slider is a component to select a value from a continuous range of values.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.StyledItem/index.html">StyledItem</a></p></td>
<td><p>The StyledItem class allows items to be styled by the theme.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Switch/index.html">Switch</a></p></td>
<td><p>Switch is a component with two states, checked or unchecked. It can be used to set boolean options. The behavior is the same as CheckBox, the only difference is the graphical style.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Tab/index.html">Tab</a></p></td>
<td><p>Component to represent a single tab in a Tabs environment.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.TabBar/index.html">TabBar</a></p></td>
<td><p>Tab bar that will be shown in the header when Tabs is active. This component does not need to be instantiated by the developer, it is automatically created by the Tabs.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Tabs/index.html">Tabs</a></p></td>
<td><p>The Tabs class provides an environment where multible Tab children can be added, and the user is presented with a tab bar with tab buttons to select different tab pages.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.TextArea/index.html">TextArea</a></p></td>
<td><p>The TextArea item displays a block of editable, scrollable, formatted text.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.TextField/index.html">TextField</a></p></td>
<td><p>The TextField element displays a single line of editable plain text. Input constraints can be set through validator or inputMask. Setting echoMode to an appropriate value enables TextField to be used as password input field.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ToolbarButton/index.html">ToolbarButton</a></p></td>
<td><p>An ActionItem that represents a button in the toolbar. ToolbarButtons should be included in ToolbarItems to define the tools of a Page. The behavior and look of the toolbar button can be specified by setting an Action for the button, or by setting the other properties inherited by the ActionItem.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.ToolbarItems/index.html">ToolbarItems</a></p></td>
<td><p>Row of Items to be placed in a toolbar.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.UbuntuListView/index.html">UbuntuListView</a></p></td>
<td><p>A ListView with special features tailored for a look and feel fitting the Ubuntu Touch platform. The UbuntuListView works just like a regular ListView, but it adds special features such as expanding/collapsing items (when used together with the Expandable item). It provides features like automatically positioning the expanding item when it expands and collapsing it again when the user taps outside of it.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.UbuntuNumberAnimation/index.html">UbuntuNumberAnimation</a></p></td>
<td><p>UbuntuNumberAnimation is a NumberAnimation that has predefined settings to ensure that Ubuntu applications are consistent in their animations.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.i18n/index.html">i18n</a></p></td>
<td><p>i18n is a context property that provides internationalization support.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.InverseMouseArea/index.html">InverseMouseArea</a></p></td>
<td><p>The InverseMouseArea captures mouse events happening outside of a given area.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Clipboard/index.html">Clipboard</a></p></td>
<td><p>This is a singleton type providing access to the system clipboard.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.MimeData/index.html">MimeData</a></p></td>
<td><p>MimeData type provides interface to access and store data to the Clipboard.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.UbuntuShape/index.html">UbuntuShape</a></p></td>
<td><p>The UbuntuShape item provides a standard Ubuntu shaped rounded rectangle.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.SortFilterModel/index.html">SortFilterModel</a></p></td>
<td><p>SortFilterModel sorts and filters rows from an existing model.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Action/index.html">Action</a></p></td>
<td><p>Describe an action that can be re-used and shared between different components.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.ActionContext/index.html">ActionContext</a></p></td>
<td><p>ActionContext groups actions together and by providing multiple contexts the developer is able to control the visibility of the actions. The ActionManager then exposes the actions from these different contexts.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ActionManager/index.html">ActionManager</a></p></td>
<td><p>ActionManager manages actions and action contexts withion an application.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Alarm/index.html">Alarm</a></p></td>
<td><p>Alarm component is a representation of an alarm event.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.AlarmModel/index.html">AlarmModel</a></p></td>
<td><p>AlarmModel holds the list of alarms defined.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.UbuntuApplication/index.html">UbuntuApplication</a></p></td>
<td><p>UbuntuApplication is a QML binding for a subset of QCoreApplication.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Argument/index.html">Argument</a></p></td>
<td><p>The Argument class specifies what type a given command line parameter should be.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Arguments/index.html">Arguments</a></p></td>
<td><p>The Arguments class provides a way to declare what command line parameters are expected by the application.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.FontUtils/index.html">FontUtils</a></p></td>
<td><p>FontUtils is a context property, which provides utility functions for font manipulations.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Mouse/index.html">Mouse</a></p></td>
<td><p>Attached property filtering mouse events occured inside the owner.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.InverseMouse/index.html">InverseMouse</a></p></td>
<td><p>Attached object filtering mouse events occured outside the owner.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.StateSaver/index.html">StateSaver</a></p></td>
<td><p>Attached propertyes to save component property states.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Theme/index.html">Theme</a></p></td>
<td><p>The Theme class provides facilities to interact with the current theme.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.UbuntuAnimation/index.html">UbuntuAnimation</a></p></td>
<td><p>Singleton defining standard Ubuntu durations and easing for animations that should be used to ensure that Ubuntu applications are consistent in their animations.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Units/index.html">Units</a></p></td>
<td><p>Units of measurement for sizes, spacing, margin, etc.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.UriHandler/index.html">UriHandler</a></p></td>
<td><p>Singleton signalling for opened URIs.</p></td>
</tr>
</tbody>
</table>

<a href="../UbuntuUserInterfaceToolkit.overview-ubuntu-sdk/index.html" class="nextPage">Ubuntu User Interface Toolkit</a>

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
