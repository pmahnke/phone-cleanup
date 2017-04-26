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
-   <a href="../UbuntuUserInterfaceToolkit/index.html" class="sub-nav-item">UbuntuUserInterfaceToolkit</a> ›

<!-- -->

-   Ubuntu User Interface Toolkit

Ubuntu User Interface Toolkit
=============================

<span class="subtitle"></span>
<span id="details"></span> <span id="general-topics"></span> General Topics
-   [Layouts](../UbuntuUserInterfaceToolkit.ubuntu-layouts/index.html) describes a flexible layouting engine to ease the development of responsive user interfaces.
-   [Resolution Independence](../UbuntuUserInterfaceToolkit.resolution-independence/index.html) describes the facilities that should be used when setting the size of UI elements (widgets, fonts, etc.) in order for them to behave well on a variety of devices.
-   [Automatic State Saving](../UbuntuUserInterfaceToolkit.statesaving/index.html) provides automatic property saving for components.

<span id="basic-qml-types"></span> Basic QML Types
Available through:

``` cpp
import Ubuntu.Components 1.1
```

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
<td><p><a href="../Ubuntu.Components.CrossFadeImage/index.html">CrossFadeImage</a></p></td>
<td><p>An Image like component which smoothly fades when its source is updated.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Icon/index.html">Icon</a></p></td>
<td><p>The Icon component displays an icon from the icon theme.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Label/index.html">Label</a></p></td>
<td><p>Text with Ubuntu styling.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.MainView/index.html">MainView</a></p></td>
<td><p>MainView is the root Item that should be used for all applications. It automatically adds a header and toolbar for its contents and can rotate its content based on the device orientation.</p></td>
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
<td><p><a href="../Ubuntu.Components.ProgressBar10/index.html">ProgressBar10</a></p></td>
<td><p>The ProgressBar component visually indicates the progress of a process of determinate or indeterminate duration.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.PullToRefresh/index.html">PullToRefresh</a></p></td>
<td><p>Pull-to-refresh component for Flickables to reload a model upon pull.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Scrollbar/index.html">Scrollbar</a></p></td>
<td><p>The ScrollBar component provides scrolling functionality for scrollable views (i.e. Flickable, ListView).</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Slider/index.html">Slider</a></p></td>
<td><p>Slider is a component to select a value from a continuous range of values.</p></td>
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
<td><p><a href="../Ubuntu.Components.UbuntuApplication/index.html">UbuntuApplication</a></p></td>
<td><p>UbuntuApplication is a QML binding for a subset of QCoreApplication.</p></td>
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
<td><p><a href="../Ubuntu.Components.UbuntuAnimation/index.html">UbuntuAnimation</a></p></td>
<td><p>Singleton defining standard Ubuntu durations and easing for animations that should be used to ensure that Ubuntu applications are consistent in their animations.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.UriHandler/index.html">UriHandler</a></p></td>
<td><p>Singleton signalling for opened URIs.</p></td>
</tr>
</tbody>
</table>

<span id="list-items"></span> List Items
Available through:

``` cpp
import Ubuntu.Components.ListItems 1.0
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.ListItems.Base/index.html">Base</a></p></td>
<td><p>Parent class of various list item classes that can have an icon and a progression symbol.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ListItems.Caption/index.html">Caption</a></p></td>
<td><p>List item that shows a piece of text.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.ListItems.Divider/index.html">Divider</a></p></td>
<td><p>Divider to break up list items into groups.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ListItems.Empty/index.html">Empty</a></p></td>
<td><p>A list item with no contents. The Empty class can be used for generic list items containing other components such as buttons. It is selectable and can take mouse clicks. It will attempt to detect if a thin dividing line at the bottom of the item is suitable, but this behaviour can be overridden (using showDivider). For specific types of list items, see its subclasses.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.ListItems.Expandable/index.html">Expandable</a></p></td>
<td><p>An expandable list item with no contents. The Expandable class can be used for generic list items containing other components such as buttons. It subclasses Empty and thus brings all that functionality, but additionally provides means to expand and collapse the item.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ListItems.ExpandablesColumn/index.html">ExpandablesColumn</a></p></td>
<td><p>A column to be used together with the Expandable item. This lays out its content just like a regular Column inside a Flickable but when used together with items of type Expandable it provides additional features like automatically positioning the expanding item when it expands and collapsing it again when the user taps outside of it.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.ListItems.Header/index.html">Header</a></p></td>
<td><p>Header for grouping list items together</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ListItems.ItemSelector/index.html">ItemSelector</a></p></td>
<td><p>ListItem displaying either a single selected value or expanded multiple choice with an optional image and subtext when not expanded, when expanding it opens a listing of all the possible values for selection with an additional option of always being expanded. If multiple choice is selected the list is expanded automatically.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.ListItems.MultiValue/index.html">MultiValue</a></p></td>
<td><p>List item displaying multiple values. This component is under heavy development.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ListItems.SingleControl/index.html">SingleControl</a></p></td>
<td><p>A list item containing a single control</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.ListItems.SingleValue/index.html">SingleValue</a></p></td>
<td><p>A list item displaying a single value</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ListItems.Standard/index.html">Standard</a></p></td>
<td><p>The standard list item class. It shows a basic list item with a label (text), and optionally an icon, a progression arrow, and it can have an embedded Item (control) that can be used for including Buttons, Switches etc. inside the list item.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.ListItems.Subtitled/index.html">Subtitled</a></p></td>
<td><p>List item displaying a second string under the main label. This component is under heavy development.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ListItems.ThinDivider/index.html">ThinDivider</a></p></td>
<td><p>Narrow line used as a divider between ListItems.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.ListItems.ValueSelector/index.html">ValueSelector</a></p></td>
<td><p>List item displaying single selected value when not expanded, where expanding it opens a listing of all the possible values for selection.</p></td>
</tr>
</tbody>
</table>

<span id="pickers"></span> Pickers
Available through:

``` cpp
import Ubuntu.Components.Pickers 1.0
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Pickers.DatePicker/index.html">DatePicker</a></p></td>
<td><p>DatePicker component provides date and time value picking functionality.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Pickers.Dialer/index.html">Dialer</a></p></td>
<td><p>Dialer is a phone dialer style picker component.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Pickers.DialerHand/index.html">DialerHand</a></p></td>
<td><p>DialerHand represents a value selector on a Dialer.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Pickers.Picker/index.html">Picker</a></p></td>
<td><p>Picker is a slot-machine style value selection component.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Pickers.PickerDelegate/index.html">PickerDelegate</a></p></td>
<td><p>PickerDelegate component serves as base for Picker delegates.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.PickerPanel/index.html">PickerPanel</a></p></td>
<td><p>Provides a panel for opening a DatePicker in place of the input panel or as Popover, depending on the form factor.</p></td>
</tr>
</tbody>
</table>

<span id="popovers-sheets-and-dialogs"></span> Popovers, Sheets and Dialogs
Available through:

``` cpp
import Ubuntu.Components.Popups 1.0
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Popups.ActionSelectionPopover/index.html">ActionSelectionPopover</a></p></td>
<td><p>A special popover presenting actions to the user. The popover is closed automatically when the action is chosen.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Popups.Dialog/index.html">Dialog</a></p></td>
<td><p>The Dialog caters for cases in which the application requires the user to determine between optional actions. The Dialog will interrupt the user flow and lock the view for further interaction before the user has selected a desired action. It can only be closed by selecting an optional action confirming or cancelling the operation.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Popups.Popover/index.html">Popover</a></p></td>
<td><p>A popover allows an application to present additional content without changing the view. A popover has a fixed width and automatic height, depending on is contents. It can be closed by clicking anywhere outside of the popover area.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Popups.PopupBase/index.html">PopupBase</a></p></td>
<td><p>The base class for all dialogs, sheets and popovers. Do not use directly.</p></td>
</tr>
</tbody>
</table>

<span id="layouting"></span> Layouting
Available through:

``` cpp
import Ubuntu.Layouts 1.0
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../Ubuntu.Layouts.ConditionalLayout/index.html">ConditionalLayout</a></p></td>
<td><p>ConditionalLayout defines the layout of a given form factor.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Layouts.ItemLayout/index.html">ItemLayout</a></p></td>
<td><p>ItemLayout defines a new size &amp; position of a single Item, for the purposes of specifying layouts. This is to be used within a ConditionalLayout definition.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Layouts.Layouts/index.html">Layouts</a></p></td>
<td><p>The Layouts component allows one to specify multiple different layouts for a fixed set of Items, and applies the desired layout to those Items.</p></td>
</tr>
</tbody>
</table>

<span id="theming-elements"></span> Theming Elements
Available through:

``` cpp
import Ubuntu.Components 1.1
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.StyledItem/index.html">StyledItem</a></p></td>
<td><p>The StyledItem class allows items to be styled by the theme.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Theme/index.html">Theme</a></p></td>
<td><p>The Theme class provides facilities to interact with the current theme.</p></td>
</tr>
</tbody>
</table>

<span id="style-api"></span> Style API
The Style API defines the interface components use to style the visuals. Themes must make sure that these interfaces are all implemented. Available through:

``` cpp
import Ubuntu.Components.Styles 1.1
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Styles.ComboButtonStyle/index.html">ComboButtonStyle</a></p></td>
<td><p>Style API for ComboButton component.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Styles.PageHeadStyle/index.html">PageHeadStyle</a></p></td>
<td><p>Style API for page header.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Styles.PullToRefreshStyle/index.html">PullToRefreshStyle</a></p></td>
<td><p>Style API for PullToRefresh component.</p></td>
</tr>
</tbody>
</table>

<span id="resolution-independence-items"></span> Resolution Independence Items
Available through:

``` cpp
import Ubuntu.Components 1.1
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Units/index.html">Units</a></p></td>
<td><p>Units of measurement for sizes, spacing, margin, etc.</p></td>
</tr>
</tbody>
</table>

<span id="parsing-command-line-arguments"></span> Parsing Command-Line Arguments
Available through:

``` cpp
import Ubuntu.Components 1.1
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Argument/index.html">Argument</a></p></td>
<td><p>The Argument class specifies what type a given command line parameter should be.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Arguments/index.html">Arguments</a></p></td>
<td><p>The Arguments class provides a way to declare what command line parameters are expected by the application.</p></td>
</tr>
</tbody>
</table>

<span id="services"></span> Services
Available through:

``` cpp
import Ubuntu.Components 1.1
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Alarm/index.html">Alarm</a></p></td>
<td><p>Alarm component is a representation of an alarm event.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.AlarmModel/index.html">AlarmModel</a></p></td>
<td><p>AlarmModel holds the list of alarms defined.</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.StateSaver/index.html">StateSaver</a></p></td>
<td><p>Attached propertyes to save component property states.</p></td>
</tr>
</tbody>
</table>

<span id="performance-metrics"></span> Performance Metrics
Available through:

``` cpp
import Ubuntu.PerformanceMetrics 1.0
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../Ubuntu.PerformanceMetrics.PerformanceOverlay/index.html">PerformanceOverlay</a></p></td>
<td><p>Overlay displaying performance related metrics (rendering time, CPU usage, etc.)</p></td>
</tr>
</tbody>
</table>

<span id="test-extensions"></span> Test extensions
Available through:

``` cpp
import Ubuntu Test 1.0
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../Ubuntu.Test.UbuntuTestCase/index.html">UbuntuTestCase</a></p></td>
<td><p>The UbuntuTestCase class expands the default TestCase class.</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Test.TestExtras/index.html">TestExtras</a></p></td>
<td><p>Singleton type providing additional test functions.</p></td>
</tr>
</tbody>
</table>

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
