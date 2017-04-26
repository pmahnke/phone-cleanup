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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.1</a> ›
-   <a href="../UbuntuUserInterfaceToolkit/index.html" class="sub-nav-item">UbuntuUserInterfaceToolkit</a> ›

<!-- -->

-   Ubuntu User Interface Toolkit

Ubuntu User Interface Toolkit
=============================

<span class="subtitle"></span>
<span id="details"></span> <span id="general-topics"></span> General Topics
-   [What's new in version 1.2?](../UbuntuUserInterfaceToolkit.ubuntu-whatsnew/index.html)
-   [Styling](../UbuntuUserInterfaceToolkit.ubuntu-theming/index.html) components
-   [Layouts](../UbuntuUserInterfaceToolkit.ubuntu-layouts/index.html) describes a flexible layouting engine to ease the development of responsive user interfaces.
-   [Resolution Independence](../UbuntuUserInterfaceToolkit.resolution-independence/index.html) describes the facilities that should be used when setting the size of UI elements (widgets, fonts, etc.) in order for them to behave well on a variety of devices.
-   [Automatic State Saving](../UbuntuUserInterfaceToolkit.statesaving/index.html) provides automatic property saving for components.

<span id="basic-qml-types"></span> Basic QML Types
Available through:

``` cpp
import Ubuntu.Components 1.2
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.AbstractButton/index.html">AbstractButton</a></p></td>
<td><p>Defines the behavior of the button</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Action/index.html">Action</a></p></td>
<td><p>Describe an action that can be re-used and shared between different components</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.ActionBar/index.html">ActionBar</a></p></td>
<td><p>Show a row of buttons that trigger actions. When the number of visible actions specified is larger than numberOfSlots, an overflow button will be shown which triggers an overflow panel that shows the remaining actions</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ActionContext/index.html">ActionContext</a></p></td>
<td><p>Groups actions together and by providing multiple contexts the developer is able to control the visibility of the actions. The ActionManager then exposes the actions from these different contexts</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.ActionItem/index.html">ActionItem</a></p></td>
<td><p>A visual representation of an Action. The API of ActionItem is a copy of the API of Action, with additional properties to define visual aspects of the ActionItem</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ActionList/index.html">ActionList</a></p></td>
<td><p>List of Action items</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.ActionManager/index.html">ActionManager</a></p></td>
<td><p>Manages actions and action contexts withion an application</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ActivityIndicator/index.html">ActivityIndicator</a></p></td>
<td><p>Component visually indicates that a task of unknown duration is in progress, e.g. busy indication, connection in progress indication, etc</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.AdaptivePageLayout/index.html">AdaptivePageLayout</a></p></td>
<td><p>View with multiple columns of Pages</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.BottomEdge/index.html">BottomEdge</a></p></td>
<td><p>A component to handle bottom edge gesture and content</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.BottomEdgeHint/index.html">BottomEdgeHint</a></p></td>
<td><p>Shows the availability of extra features available from the bottom edge of the application</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.BottomEdgeRegion/index.html">BottomEdgeRegion</a></p></td>
<td><p>Defines an active region within the BottomEdge component</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Button/index.html">Button</a></p></td>
<td><p>Standard Ubuntu button</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.CheckBox/index.html">CheckBox</a></p></td>
<td><p>Component with two states, checked or unchecked. It can be used to set boolean options. The behavior is the same as Switch, the only difference is the graphical style</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Clipboard/index.html">Clipboard</a></p></td>
<td><p>This is a singleton type providing access to the system clipboard</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ComboButton/index.html">ComboButton</a></p></td>
<td><p>Ubuntu button providing a drop-down panel visualizing custom options</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.CrossFadeImage/index.html">CrossFadeImage</a></p></td>
<td><p>An Image like component which smoothly fades when its source is updated</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.FontUtils/index.html">FontUtils</a></p></td>
<td><p>Context property, which provides utility functions for font manipulations</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Header/index.html">Header</a></p></td>
<td><p>Bar that can contain the title and controls for the current view</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Icon/index.html">Icon</a></p></td>
<td><p>Component displays an icon from the icon theme</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.InverseMouse/index.html">InverseMouse</a></p></td>
<td><p>Attached object filtering mouse events occured outside the owner</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.InverseMouseArea/index.html">InverseMouseArea</a></p></td>
<td><p>Captures mouse events happening outside of a given area</p></td>
</tr>
<tr class="odd">
<td><p><a href="https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/Ubuntu.Components.LabelBase/">LabelBase</a></p></td>
<td><p>Extended Text item with Ubuntu styling</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ListItemLayout/index.html">ListItemLayout</a></p></td>
<td><p>Easy way to create list items which follow Ubuntu design standards, thus making them visually appealing and consistent with the rest of the platform without effort</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.LiveTimer/index.html">LiveTimer</a></p></td>
<td><p>A live timing source providing peridioc updates</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.MainView/index.html">MainView</a></p></td>
<td><p>The root Item that should be used for all applications</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.MimeData/index.html">MimeData</a></p></td>
<td><p>Type provides interface to access and store data to the Clipboard</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Mouse/index.html">Mouse</a></p></td>
<td><p>Attached property filtering mouse events occured inside the owner</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.OrientationHelper/index.html">OrientationHelper</a></p></td>
<td><p>Automatically rotates its children following the orientation of the device</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Page/index.html">Page</a></p></td>
<td><p>A page is the basic Item that represents a single view in an Ubuntu application. It is recommended to use the Page inside the MainView or AdaptivePageLayout</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.PageColumn/index.html">PageColumn</a></p></td>
<td><p>Component configuring the metrics of a column in AdaptivePageLayout</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.PageColumnsLayout/index.html">PageColumnsLayout</a></p></td>
<td><p>Component configuring a layout in an AdaptivePageLayout component</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.PageHeadConfiguration/index.html">PageHeadConfiguration</a></p></td>
<td><p>Page.head is used to configure the header for a Page</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.PageHeadSections/index.html">PageHeadSections</a></p></td>
<td><p>Used to configure the sections for a Page</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.PageHeadState/index.html">PageHeadState</a></p></td>
<td><p>Helper component to make it easier to configure the page header when changing states</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.PageHeader/index.html">PageHeader</a></p></td>
<td><p>Shows a title with a leading and a trailing ActionBar that add action buttons to the header</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.PageStack/index.html">PageStack</a></p></td>
<td><p>A stack of Page items that is used for inter-Page navigation. Pages on the stack can be popped, and new Pages can be pushed. The page on top of the stack is the visible one</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Panel/index.html">Panel</a></p></td>
<td><p>A panel that can be swiped in and out from an edge of the window by the user. For most applications, it is highly recommended to use the MainView instead which includes a toolbar at its bottom that can be swiped in or out</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.PopupContext/index.html">PopupContext</a></p></td>
<td><p>A special ActionContext used in Dialogs and Popups</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ProgressBar/index.html">ProgressBar</a></p></td>
<td><p>Component visually indicates the progress of a process of determinate or indeterminate duration</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.ProgressionSlot/index.html">ProgressionSlot</a></p></td>
<td><p>Holds an icon representing the progression symbol</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ProportionalShape/index.html">ProportionalShape</a></p></td>
<td><p>Extended UbuntuShape mostly used for icons and vignettes</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.PullToRefresh/index.html">PullToRefresh</a></p></td>
<td><p>Pull-to-refresh component for Flickables to reload a model upon pull</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ScrollView/index.html">ScrollView</a></p></td>
<td><p>Scrollable view that features scrollbars and scrolling via keyboard keys</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Scrollbar/index.html">Scrollbar</a></p></td>
<td><p>ScrollBar component provides scrolling functionality for scrollable views (i.e. Flickable, ListView)</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Sections/index.html">Sections</a></p></td>
<td><p>Display a list of sections that the user can select. By tapping on a section name the selectedIndex will be updated, and the associated Action is triggered</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Slider/index.html">Slider</a></p></td>
<td><p>Component to select a value from a continuous range of values</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.SortFilterModel/index.html">SortFilterModel</a></p></td>
<td><p>Sorts and filters rows from an existing model</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.StyleHints/index.html">StyleHints</a></p></td>
<td><p>Component holding style specific properties to configure a particular StyledItem's style runtime</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.StyledItem/index.html">StyledItem</a></p></td>
<td><p>Allows items to be styled by the theme</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Switch/index.html">Switch</a></p></td>
<td><p>Component with two states, checked or unchecked. It can be used to set boolean options. The behavior is the same as CheckBox, the only difference is the graphical style</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Tab/index.html">Tab</a></p></td>
<td><p>Component to represent a single tab in a Tabs environment</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.TabBar/index.html">TabBar</a></p></td>
<td><p>Tab bar that will be shown in the header when Tabs is active. This component does not need to be instantiated by the developer, it is automatically created by the Tabs</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Tabs/index.html">Tabs</a></p></td>
<td><p>Environment where multible Tab children can be added, and the user is presented with a tab bar with tab buttons to select different tab pages</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.TextArea/index.html">TextArea</a></p></td>
<td><p>Item displays a block of editable, scrollable, formatted text</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.TextField/index.html">TextField</a></p></td>
<td><p>Element displays a single line of editable plain text. Input constraints can be set through validator or inputMask. Setting echoMode to an appropriate value enables TextField to be used as password input field</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Toolbar/index.html">Toolbar</a></p></td>
<td><p>That can be used as an extension for the edit mode header. Example:</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ToolbarButton/index.html">ToolbarButton</a></p></td>
<td><p>An ActionItem that represents a button in the toolbar. ToolbarButtons should be included in ToolbarItems to define the tools of a Page. The behavior and look of the toolbar button can be specified by setting an Action for the button, or by setting the other properties inherited by the ActionItem</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Ubuntu/index.html">Ubuntu</a></p></td>
<td><p>Provides global object with different enums</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.UbuntuAnimation/index.html">UbuntuAnimation</a></p></td>
<td><p>Singleton defining standard Ubuntu durations and easing for animations that should be used to ensure that Ubuntu applications are consistent in their animations</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.UbuntuApplication/index.html">UbuntuApplication</a></p></td>
<td><p>QML binding for a subset of QCoreApplication</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.UbuntuColors/index.html">UbuntuColors</a></p></td>
<td><p>Singleton defining the Ubuntu color palette</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.UbuntuListView/index.html">UbuntuListView</a></p></td>
<td><p>A ListView with special features tailored for a look and feel fitting the Ubuntu Touch platform. The UbuntuListView works just like a regular ListView, but it adds special features such as expanding/collapsing items (when used together with the Expandable item). It provides features like automatically positioning the expanding item when it expands and collapsing it again when the user taps outside of it</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.UbuntuNumberAnimation/index.html">UbuntuNumberAnimation</a></p></td>
<td><p>NumberAnimation that has predefined settings to ensure that Ubuntu applications are consistent in their animations</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.UbuntuShape/index.html">UbuntuShape</a></p></td>
<td><p>Rounded rectangle containing a source image blended over a background color</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.UbuntuShapeOverlay/index.html">UbuntuShapeOverlay</a></p></td>
<td><p>Extended UbuntuShape adding a colored overlay layer</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.UriHandler/index.html">UriHandler</a></p></td>
<td><p>Singleton signalling for opened URIs</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.dateUtils/index.html">dateUtils</a></p></td>
<td><p>Various date utility functions</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.i18n/index.html">i18n</a></p></td>
<td><p>Context property that provides internationalization support</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.mathUtils/index.html">mathUtils</a></p></td>
<td><p>Various mathematical utility functions</p></td>
</tr>
</tbody>
</table>

<span id="gestures"></span> Gestures
Available through:

``` cpp
import Ubuntu.Components 1.3
```

<span id="list-views-list-items"></span> List views, list items
Components with standardized view items, with conditional actions, multiselect and reordering support on scrollable views. Replaces the Ubuntu.Components.ListItems module components.

Available through:

``` cpp
import Ubuntu.Components 1.2
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Captions/index.html">Captions</a></p></td>
<td><p>Container providing captionStyles for a twin-label column that can be used in RowLayout or GridLayout</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ListItem/index.html">ListItem</a></p></td>
<td><p>Element provides Ubuntu design standards for list or grid views. The ListItem component was designed to be used in a list view. It does not define any specific layout, but while its contents can be freely chosen by the developer, care must be taken to keep the contents light in order to ensure good performance when used in long list views</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.ListItemActions/index.html">ListItemActions</a></p></td>
<td><p>Provides configuration for actions to be added to a ListItem</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ListItemDrag/index.html">ListItemDrag</a></p></td>
<td><p>Provides information about a ListItem drag event</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.ViewItems/index.html">ViewItems</a></p></td>
<td><p>A set of properties attached to the ListItem's parent item or ListView</p></td>
</tr>
</tbody>
</table>

<span id="list-items-module-deprecated"></span> List Items module - deprecated
This module contains the old set of list items.

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
<td><p>Parent class of various list item classes that can have an icon and a progression symbol</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ListItems.Caption/index.html">Caption</a></p></td>
<td><p>List item that shows a piece of text</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.ListItems.Divider/index.html">Divider</a></p></td>
<td><p>To break up list items into groups</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ListItems.Empty/index.html">Empty</a></p></td>
<td><p>A list item with no contents</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.ListItems.Expandable/index.html">Expandable</a></p></td>
<td><p>An expandable list item with no contents. The Expandable class can be used for generic list items containing other components such as buttons. It subclasses Empty and thus brings all that functionality, but additionally provides means to expand and collapse the item</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ListItems.ExpandablesColumn/index.html">ExpandablesColumn</a></p></td>
<td><p>A column to be used together with the Expandable item. This lays out its content just like a regular Column inside a Flickable but when used together with items of type Expandable it provides additional features like automatically positioning the expanding item when it expands and collapsing it again when the user taps outside of it</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.ListItems.ItemSelector/index.html">ItemSelector</a></p></td>
<td><p>ListItem displaying either a single selected value or expanded multiple choice with an optional image and subtext when not expanded, when expanding it opens a listing of all the possible values for selection with an additional option of always being expanded. If multiple choice is selected the list is expanded automatically</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ListItems.MultiValue/index.html">MultiValue</a></p></td>
<td><p>List item displaying multiple values</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.ListItems.SingleControl/index.html">SingleControl</a></p></td>
<td><p>A list item containing a single control</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ListItems.SingleValue/index.html">SingleValue</a></p></td>
<td><p>A list item displaying a single value</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.ListItems.Standard/index.html">Standard</a></p></td>
<td><p>Standard list item class. It shows a basic list item with a label (text), and optionally an icon, a progression arrow, and it can have an embedded Item (control) that can be used for including Buttons, Switches etc. inside the list item</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ListItems.Subtitled/index.html">Subtitled</a></p></td>
<td><p>List item displaying a second string under the main label</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.ListItems.ThinDivider/index.html">ThinDivider</a></p></td>
<td><p>Narrow line used as a divider between ListItems</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ListItems.ValueSelector/index.html">ValueSelector</a></p></td>
<td><p>List item displaying single selected value when not expanded, where expanding it opens a listing of all the possible values for selection</p></td>
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
<td><p>Component provides date and time value picking functionality</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Pickers.Picker/index.html">Picker</a></p></td>
<td><p>Slot-machine style value selection component</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Pickers.PickerDelegate/index.html">PickerDelegate</a></p></td>
<td><p>Component serves as base for Picker delegates</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.PickerPanel/index.html">PickerPanel</a></p></td>
<td><p>Provides a panel for opening a DatePicker in place of the input panel or as Popover, depending on the form factor</p></td>
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
<td><p>A special popover presenting actions to the user. The popover is closed automatically when the action is chosen</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Popups.Dialog/index.html">Dialog</a></p></td>
<td><p>Caters for cases in which the application requires the user to determine between optional actions. The Dialog will interrupt the user flow and lock the view for further interaction before the user has selected a desired action. It can only be closed by selecting an optional action confirming or cancelling the operation</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Popups.Popover/index.html">Popover</a></p></td>
<td><p>A popover allows an application to present additional content without changing the view. A popover has a fixed width and automatic height, depending on is contents. It can be closed by clicking anywhere outside of the popover area</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Popups.PopupBase/index.html">PopupBase</a></p></td>
<td><p>Base class for all dialogs, sheets and popovers. Do not use directly</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Popups.popupUtils/index.html">popupUtils</a></p></td>
<td><p>Popover utility functions</p></td>
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
<td><p>Defines the layout of a given form factor</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Layouts.ItemLayout/index.html">ItemLayout</a></p></td>
<td><p>Defines a new size &amp; position of a single Item, for the purposes of specifying layouts. This is to be used within a ConditionalLayout definition</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Layouts.Layouts/index.html">Layouts</a></p></td>
<td><p>Component allows one to specify multiple different layouts for a fixed set of Items, and applies the desired layout to those Items</p></td>
</tr>
</tbody>
</table>

<span id="theming-elements"></span> Theming Elements
Available through:

``` cpp
import Ubuntu.Components 1.2
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Themes.Palette/index.html">Palette</a></p></td>
<td><p>Of colors from the theme that widgets use to draw themselves</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Themes.PaletteValues/index.html">PaletteValues</a></p></td>
<td><p>Color values used for a given widget state</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Theme/index.html">Theme</a></p></td>
<td><p>Facilities to interact with the current theme</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ThemeSettings/index.html">ThemeSettings</a></p></td>
<td><p>Facilities to define the theme of a StyledItem</p></td>
</tr>
</tbody>
</table>

<span id="theme-module"></span> Theme module
Available through:

``` cpp
import Ubuntu.Components.Themes 1.0
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Themes.Palette/index.html">Palette</a></p></td>
<td><p>Provides the palette of colors from the theme that widgets use to draw themselves</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Themes.PaletteValues/index.html">PaletteValues</a></p></td>
<td><p>Color values used for a given widget state</p></td>
</tr>
</tbody>
</table>

<span id="style-api"></span> Style API
The Style API defines the interface components use to style the visuals. Themes must make sure that these interfaces are all implemented. Available through:

``` cpp
import Ubuntu.Components.Styles 1.2
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Styles.ActionBarStyle/index.html">ActionBarStyle</a></p></td>
<td><p>Style API for action bar</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Styles.BottomEdgeStyle/index.html">BottomEdgeStyle</a></p></td>
<td><p>Style API for BottomEdge content holder panel</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Styles.ComboButtonStyle/index.html">ComboButtonStyle</a></p></td>
<td><p>Style API for ComboButton component</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Styles.ListItemStyle/index.html">ListItemStyle</a></p></td>
<td><p>Style API for ListItem component</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Styles.PageHeadStyle/index.html">PageHeadStyle</a></p></td>
<td><p>Style API for page header</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Styles.PageHeaderStyle/index.html">PageHeaderStyle</a></p></td>
<td><p>Style API for page header</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Styles.PullToRefreshStyle/index.html">PullToRefreshStyle</a></p></td>
<td><p>Style API for PullToRefresh component</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Styles.ToolbarStyle/index.html">ToolbarStyle</a></p></td>
<td><p>Style API for toolbar</p></td>
</tr>
</tbody>
</table>

<span id="resolution-independence-items"></span> Resolution Independence Items
Available through:

``` cpp
import Ubuntu.Components 1.2
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Units/index.html">Units</a></p></td>
<td><p>Of measurement for sizes, spacing, margin, etc</p></td>
</tr>
</tbody>
</table>

<span id="parsing-command-line-arguments"></span> Parsing Command-Line Arguments
Available through:

``` cpp
import Ubuntu.Components 1.2
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Argument/index.html">Argument</a></p></td>
<td><p>Specifies what type a given command line parameter should be</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.Arguments/index.html">Arguments</a></p></td>
<td><p>Way to declare what command line parameters are expected by the application</p></td>
</tr>
</tbody>
</table>

<span id="services"></span> Services
Available through:

``` cpp
import Ubuntu.Components 1.2
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Alarm/index.html">Alarm</a></p></td>
<td><p>Component is a representation of an alarm event</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.AlarmModel/index.html">AlarmModel</a></p></td>
<td><p>Holds the list of alarms defined</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.Haptics/index.html">Haptics</a></p></td>
<td><p>Singleton defining the haptics feedback used in components, where execution of the feedback is controlled by the system settings</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Components.ServiceProperties/index.html">ServiceProperties</a></p></td>
<td><p>Component enables accessing service properties from QML</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Components.StateSaver/index.html">StateSaver</a></p></td>
<td><p>Attached properties to save component property states</p></td>
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
<td><p><a href="../Ubuntu.Test.MouseTouchAdaptor/index.html">MouseTouchAdaptor</a></p></td>
<td><p>Singleton type turning mouse events into single finger touch events</p></td>
</tr>
<tr class="even">
<td><p><a href="../Ubuntu.Test.TestExtras/index.html">TestExtras</a></p></td>
<td><p>Singleton type providing additional test functions</p></td>
</tr>
<tr class="odd">
<td><p><a href="../Ubuntu.Test.UbuntuTestCase/index.html">UbuntuTestCase</a></p></td>
<td><p>Expands the default TestCase class</p></td>
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
