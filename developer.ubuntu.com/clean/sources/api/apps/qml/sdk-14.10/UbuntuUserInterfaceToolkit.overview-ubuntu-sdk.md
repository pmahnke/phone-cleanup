---
Title: UbuntuUserInterfaceToolkit.overview-ubuntu-sdk
---
        
Ubuntu User Interface Toolkit
=============================

<span class="subtitle"></span>
details
-   [Layouts](../UbuntuUserInterfaceToolkit.ubuntu-layouts.md) describes a flexible layouting engine to ease the development of responsive user interfaces.
-   [Resolution Independence](../UbuntuUserInterfaceToolkit.resolution-independence.md) describes the facilities that should be used when setting the size of UI elements (widgets, fonts, etc.) in order for them to behave well on a variety of devices.
-   [Automatic State Saving](../UbuntuUserInterfaceToolkit.statesaving.md) provides automatic property saving for components.

basic-qml-types
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
<td><p><a href="Ubuntu.Components.Button.md">Button</a></p></td>
<td><p>Standard Ubuntu button.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.UbuntuColors.md">UbuntuColors</a></p></td>
<td><p>Singleton defining the Ubuntu color palette.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.AbstractButton.md">AbstractButton</a></p></td>
<td><p>The AbstractButton class defines the behavior of the button.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ActionItem.md">ActionItem</a></p></td>
<td><p>A visual representation of an Action. The API of ActionItem is a copy of the API of Action, with additional properties to define visual aspects of the ActionItem.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.ActionList.md">ActionList</a></p></td>
<td><p>List of Action items</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ActivityIndicator.md">ActivityIndicator</a></p></td>
<td><p>The ActivityIndicator component visually indicates that a task of unknown duration is in progress, e.g. busy indication, connection in progress indication, etc.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.CheckBox.md">CheckBox</a></p></td>
<td><p>CheckBox is a component with two states, checked or unchecked. It can be used to set boolean options. The behavior is the same as Switch, the only difference is the graphical style.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ComboButton.md">ComboButton</a></p></td>
<td><p>Ubuntu button providing a drop-down panel visualizing custom options.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.CrossFadeImage.md">CrossFadeImage</a></p></td>
<td><p>An Image like component which smoothly fades when its source is updated.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Icon.md">Icon</a></p></td>
<td><p>The Icon component displays an icon from the icon theme.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Label.md">Label</a></p></td>
<td><p>Text with Ubuntu styling.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.MainView.md">MainView</a></p></td>
<td><p>MainView is the root Item that should be used for all applications. It automatically adds a header and toolbar for its contents and can rotate its content based on the device orientation.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.OrientationHelper.md">OrientationHelper</a></p></td>
<td><p>The OrientationHelper automatically rotates its children following the orientation of the device.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Page.md">Page</a></p></td>
<td><p>A page is the basic Item that must be used inside the MainView, PageStack and Tabs. Anchors and height of a Page are automatically determined to align with the header of the MainView, but can be overridden.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.PageHeadConfiguration.md">PageHeadConfiguration</a></p></td>
<td><p>Page.head is used to configure the header for a Page.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.PageHeadSections.md">PageHeadSections</a></p></td>
<td><p>PageHeadSections is used to configure the sections for a Page.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.PageHeadState.md">PageHeadState</a></p></td>
<td><p>PageHeadState is a helper component to make it easier to configure the page header when changing states.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.PageStack.md">PageStack</a></p></td>
<td><p>A stack of Page items that is used for inter-Page navigation. Pages on the stack can be popped, and new Pages can be pushed. The page on top of the stack is the visible one.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Panel.md">Panel</a></p></td>
<td><p>A panel that can be swiped in and out from an edge of the window by the user. For most applications, it is highly recommended to use the MainView instead which includes a toolbar at its bottom that can be swiped in or out.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ProgressBar10.md">ProgressBar10</a></p></td>
<td><p>The ProgressBar component visually indicates the progress of a process of determinate or indeterminate duration.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.PullToRefresh.md">PullToRefresh</a></p></td>
<td><p>Pull-to-refresh component for Flickables to reload a model upon pull.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Scrollbar.md">Scrollbar</a></p></td>
<td><p>The ScrollBar component provides scrolling functionality for scrollable views (i.e. Flickable, ListView).</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Slider.md">Slider</a></p></td>
<td><p>Slider is a component to select a value from a continuous range of values.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Switch.md">Switch</a></p></td>
<td><p>Switch is a component with two states, checked or unchecked. It can be used to set boolean options. The behavior is the same as CheckBox, the only difference is the graphical style.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Tab.md">Tab</a></p></td>
<td><p>Component to represent a single tab in a Tabs environment.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.TabBar.md">TabBar</a></p></td>
<td><p>Tab bar that will be shown in the header when Tabs is active. This component does not need to be instantiated by the developer, it is automatically created by the Tabs.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Tabs.md">Tabs</a></p></td>
<td><p>The Tabs class provides an environment where multible Tab children can be added, and the user is presented with a tab bar with tab buttons to select different tab pages.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.TextArea.md">TextArea</a></p></td>
<td><p>The TextArea item displays a block of editable, scrollable, formatted text.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.TextField.md">TextField</a></p></td>
<td><p>The TextField element displays a single line of editable plain text. Input constraints can be set through validator or inputMask. Setting echoMode to an appropriate value enables TextField to be used as password input field.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ToolbarButton.md">ToolbarButton</a></p></td>
<td><p>An ActionItem that represents a button in the toolbar. ToolbarButtons should be included in ToolbarItems to define the tools of a Page. The behavior and look of the toolbar button can be specified by setting an Action for the button, or by setting the other properties inherited by the ActionItem.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.ToolbarItems.md">ToolbarItems</a></p></td>
<td><p>Row of Items to be placed in a toolbar.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.UbuntuListView.md">UbuntuListView</a></p></td>
<td><p>A ListView with special features tailored for a look and feel fitting the Ubuntu Touch platform. The UbuntuListView works just like a regular ListView, but it adds special features such as expanding/collapsing items (when used together with the Expandable item). It provides features like automatically positioning the expanding item when it expands and collapsing it again when the user taps outside of it.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.UbuntuNumberAnimation.md">UbuntuNumberAnimation</a></p></td>
<td><p>UbuntuNumberAnimation is a NumberAnimation that has predefined settings to ensure that Ubuntu applications are consistent in their animations.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.i18n.md">i18n</a></p></td>
<td><p>i18n is a context property that provides internationalization support.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.InverseMouseArea.md">InverseMouseArea</a></p></td>
<td><p>The InverseMouseArea captures mouse events happening outside of a given area.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Clipboard.md">Clipboard</a></p></td>
<td><p>This is a singleton type providing access to the system clipboard.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.MimeData.md">MimeData</a></p></td>
<td><p>MimeData type provides interface to access and store data to the Clipboard.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.UbuntuShape.md">UbuntuShape</a></p></td>
<td><p>The UbuntuShape item provides a standard Ubuntu shaped rounded rectangle.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.SortFilterModel.md">SortFilterModel</a></p></td>
<td><p>SortFilterModel sorts and filters rows from an existing model.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Action.md">Action</a></p></td>
<td><p>Describe an action that can be re-used and shared between different components.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.ActionContext.md">ActionContext</a></p></td>
<td><p>ActionContext groups actions together and by providing multiple contexts the developer is able to control the visibility of the actions. The ActionManager then exposes the actions from these different contexts.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ActionManager.md">ActionManager</a></p></td>
<td><p>ActionManager manages actions and action contexts withion an application.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.UbuntuApplication.md">UbuntuApplication</a></p></td>
<td><p>UbuntuApplication is a QML binding for a subset of QCoreApplication.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.FontUtils.md">FontUtils</a></p></td>
<td><p>FontUtils is a context property, which provides utility functions for font manipulations.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Mouse.md">Mouse</a></p></td>
<td><p>Attached property filtering mouse events occured inside the owner.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.InverseMouse.md">InverseMouse</a></p></td>
<td><p>Attached object filtering mouse events occured outside the owner.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.UbuntuAnimation.md">UbuntuAnimation</a></p></td>
<td><p>Singleton defining standard Ubuntu durations and easing for animations that should be used to ensure that Ubuntu applications are consistent in their animations.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.UriHandler.md">UriHandler</a></p></td>
<td><p>Singleton signalling for opened URIs.</p></td>
</tr>
</tbody>
</table>

list-items
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
<td><p><a href="Ubuntu.Components.ListItems.Base.md">Base</a></p></td>
<td><p>Parent class of various list item classes that can have an icon and a progression symbol.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ListItems.Caption.md">Caption</a></p></td>
<td><p>List item that shows a piece of text.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.ListItems.Divider.md">Divider</a></p></td>
<td><p>Divider to break up list items into groups.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ListItems.Empty.md">Empty</a></p></td>
<td><p>A list item with no contents. The Empty class can be used for generic list items containing other components such as buttons. It is selectable and can take mouse clicks. It will attempt to detect if a thin dividing line at the bottom of the item is suitable, but this behaviour can be overridden (using showDivider). For specific types of list items, see its subclasses.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.ListItems.Expandable.md">Expandable</a></p></td>
<td><p>An expandable list item with no contents. The Expandable class can be used for generic list items containing other components such as buttons. It subclasses Empty and thus brings all that functionality, but additionally provides means to expand and collapse the item.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ListItems.ExpandablesColumn.md">ExpandablesColumn</a></p></td>
<td><p>A column to be used together with the Expandable item. This lays out its content just like a regular Column inside a Flickable but when used together with items of type Expandable it provides additional features like automatically positioning the expanding item when it expands and collapsing it again when the user taps outside of it.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.ListItems.Header.md">Header</a></p></td>
<td><p>Header for grouping list items together</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ListItems.ItemSelector.md">ItemSelector</a></p></td>
<td><p>ListItem displaying either a single selected value or expanded multiple choice with an optional image and subtext when not expanded, when expanding it opens a listing of all the possible values for selection with an additional option of always being expanded. If multiple choice is selected the list is expanded automatically.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.ListItems.MultiValue.md">MultiValue</a></p></td>
<td><p>List item displaying multiple values. This component is under heavy development.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ListItems.SingleControl.md">SingleControl</a></p></td>
<td><p>A list item containing a single control</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.ListItems.SingleValue.md">SingleValue</a></p></td>
<td><p>A list item displaying a single value</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ListItems.Standard.md">Standard</a></p></td>
<td><p>The standard list item class. It shows a basic list item with a label (text), and optionally an icon, a progression arrow, and it can have an embedded Item (control) that can be used for including Buttons, Switches etc. inside the list item.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.ListItems.Subtitled.md">Subtitled</a></p></td>
<td><p>List item displaying a second string under the main label. This component is under heavy development.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ListItems.ThinDivider.md">ThinDivider</a></p></td>
<td><p>Narrow line used as a divider between ListItems.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.ListItems.ValueSelector.md">ValueSelector</a></p></td>
<td><p>List item displaying single selected value when not expanded, where expanding it opens a listing of all the possible values for selection.</p></td>
</tr>
</tbody>
</table>

pickers
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
<td><p><a href="Ubuntu.Components.Pickers.DatePicker.md">DatePicker</a></p></td>
<td><p>DatePicker component provides date and time value picking functionality.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Pickers.Dialer.md">Dialer</a></p></td>
<td><p>Dialer is a phone dialer style picker component.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Pickers.DialerHand.md">DialerHand</a></p></td>
<td><p>DialerHand represents a value selector on a Dialer.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Pickers.Picker.md">Picker</a></p></td>
<td><p>Picker is a slot-machine style value selection component.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Pickers.PickerDelegate.md">PickerDelegate</a></p></td>
<td><p>PickerDelegate component serves as base for Picker delegates.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.PickerPanel.md">PickerPanel</a></p></td>
<td><p>Provides a panel for opening a DatePicker in place of the input panel or as Popover, depending on the form factor.</p></td>
</tr>
</tbody>
</table>

popovers-sheets-and-dialogs
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
<td><p><a href="Ubuntu.Components.Popups.ActionSelectionPopover.md">ActionSelectionPopover</a></p></td>
<td><p>A special popover presenting actions to the user. The popover is closed automatically when the action is chosen.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Popups.Dialog.md">Dialog</a></p></td>
<td><p>The Dialog caters for cases in which the application requires the user to determine between optional actions. The Dialog will interrupt the user flow and lock the view for further interaction before the user has selected a desired action. It can only be closed by selecting an optional action confirming or cancelling the operation.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Popups.Popover.md">Popover</a></p></td>
<td><p>A popover allows an application to present additional content without changing the view. A popover has a fixed width and automatic height, depending on is contents. It can be closed by clicking anywhere outside of the popover area.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Popups.PopupBase.md">PopupBase</a></p></td>
<td><p>The base class for all dialogs, sheets and popovers. Do not use directly.</p></td>
</tr>
</tbody>
</table>

layouting
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
<td><p><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></p></td>
<td><p>ConditionalLayout defines the layout of a given form factor.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></p></td>
<td><p>ItemLayout defines a new size &amp; position of a single Item, for the purposes of specifying layouts. This is to be used within a ConditionalLayout definition.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Layouts.Layouts.md">Layouts</a></p></td>
<td><p>The Layouts component allows one to specify multiple different layouts for a fixed set of Items, and applies the desired layout to those Items.</p></td>
</tr>
</tbody>
</table>

theming-elements
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
<td><p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p></td>
<td><p>The StyledItem class allows items to be styled by the theme.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Theme.md">Theme</a></p></td>
<td><p>The Theme class provides facilities to interact with the current theme.</p></td>
</tr>
</tbody>
</table>

style-api
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
<td><p><a href="Ubuntu.Components.Styles.ComboButtonStyle.md">ComboButtonStyle</a></p></td>
<td><p>Style API for ComboButton component.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Styles.PageHeadStyle.md">PageHeadStyle</a></p></td>
<td><p>Style API for page header.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Styles.PullToRefreshStyle.md">PullToRefreshStyle</a></p></td>
<td><p>Style API for PullToRefresh component.</p></td>
</tr>
</tbody>
</table>

resolution-independence-items
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
<td><p><a href="Ubuntu.Components.Units.md">Units</a></p></td>
<td><p>Units of measurement for sizes, spacing, margin, etc.</p></td>
</tr>
</tbody>
</table>

parsing-command-line-arguments
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
<td><p><a href="Ubuntu.Components.Argument.md">Argument</a></p></td>
<td><p>The Argument class specifies what type a given command line parameter should be.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Arguments.md">Arguments</a></p></td>
<td><p>The Arguments class provides a way to declare what command line parameters are expected by the application.</p></td>
</tr>
</tbody>
</table>

services
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
<td><p><a href="Ubuntu.Components.Alarm.md">Alarm</a></p></td>
<td><p>Alarm component is a representation of an alarm event.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.AlarmModel.md">AlarmModel</a></p></td>
<td><p>AlarmModel holds the list of alarms defined.</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.StateSaver.md">StateSaver</a></p></td>
<td><p>Attached propertyes to save component property states.</p></td>
</tr>
</tbody>
</table>

performance-metrics
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
<td><p><a href="Ubuntu.PerformanceMetrics.PerformanceOverlay.md">PerformanceOverlay</a></p></td>
<td><p>Overlay displaying performance related metrics (rendering time, CPU usage, etc.)</p></td>
</tr>
</tbody>
</table>

test-extensions
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
<td><p><a href="Ubuntu.Test.UbuntuTestCase.md">UbuntuTestCase</a></p></td>
<td><p>The UbuntuTestCase class expands the default TestCase class.</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Test.TestExtras.md">TestExtras</a></p></td>
<td><p>Singleton type providing additional test functions.</p></td>
</tr>
</tbody>
</table>

