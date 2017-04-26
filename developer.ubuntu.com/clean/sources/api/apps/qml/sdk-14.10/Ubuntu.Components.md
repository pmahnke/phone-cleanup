---
Title: Ubuntu.Components
---
        [AbstractButton](../Ubuntu.Components.AbstractButton.md)  
The AbstractButton class defines the behavior of the button.

[Action](../Ubuntu.Components.Action.md)  
Describe an action that can be re-used and shared between different components.

[ActionContext](../Ubuntu.Components.ActionContext.md)  
ActionContext groups actions together and by providing multiple contexts the developer is able to control the visibility of the actions. The [ActionManager](../Ubuntu.Components.ActionManager.md) then exposes the actions f...

[ActionItem](../Ubuntu.Components.ActionItem.md)  
A visual representation of an Action. The API of ActionItem is a copy of the API of [Action](../Ubuntu.Components.Action.md), with additional properties to define visual aspects of the ActionItem.

[ActionList](../Ubuntu.Components.ActionList.md)  
List of [Action](../Ubuntu.Components.Action.md) items

[ActionManager](../Ubuntu.Components.ActionManager.md)  
ActionManager manages actions and action contexts withion an application.

[ActivityIndicator](../Ubuntu.Components.ActivityIndicator.md)  
The ActivityIndicator component visually indicates that a task of unknown duration is in progress, e.g. busy indication, connection in progress indication, etc.

[Alarm](../Ubuntu.Components.Alarm.md)  
Alarm component is a representation of an alarm event.

[AlarmModel](../Ubuntu.Components.AlarmModel.md)  
AlarmModel holds the list of alarms defined.

[Argument](../Ubuntu.Components.Argument.md)  
The Argument class specifies what type a given command line parameter should be.

[Arguments](../Ubuntu.Components.Arguments.md)  
The Arguments class provides a way to declare what command line parameters are expected by the application.

[Button](../Ubuntu.Components.Button.md)  
Standard Ubuntu button.

[CheckBox](../Ubuntu.Components.CheckBox.md)  
CheckBox is a component with two states, checked or unchecked. It can be used to set boolean options. The behavior is the same as [Switch](../Ubuntu.Components.Switch.md), the only difference is the graphical style.

[Clipboard](../Ubuntu.Components.Clipboard.md)  
This is a singleton type providing access to the system clipboard.

[ComboButton](../Ubuntu.Components.ComboButton.md)  
Ubuntu button providing a drop-down panel visualizing custom options.

[CrossFadeImage](../Ubuntu.Components.CrossFadeImage.md)  
An Image like component which smoothly fades when its source is updated.

[FontUtils](../Ubuntu.Components.FontUtils.md)  
FontUtils is a [context property](http://qt-project.org/doc/qt-5.0/qtqml/qqmlcontext.html#details), which provides utility functions for font manipulations.

[Icon](../Ubuntu.Components.Icon.md)  
The Icon component displays an icon from the icon theme.

[InverseMouse](../Ubuntu.Components.InverseMouse.md)  
Attached object filtering mouse events occured outside the owner.

[InverseMouseArea](../Ubuntu.Components.InverseMouseArea.md)  
The InverseMouseArea captures mouse events happening outside of a given area.

[Label](../Ubuntu.Components.Label.md)  
Text with Ubuntu styling.

[MainView](../Ubuntu.Components.MainView.md)  
MainView is the root Item that should be used for all applications. It automatically adds a header and toolbar for its contents and can rotate its content based on the device orientation.

[MimeData](../Ubuntu.Components.MimeData.md)  
MimeData type provides interface to access and store data to the Clipboard.

[Mouse](../Ubuntu.Components.Mouse.md)  
Attached property filtering mouse events occured inside the owner.

[OptionSelector](../Ubuntu.Components.OptionSelector.md)  
Component displaying either a single selected value or expanded multiple choice with an optional image and subtext when not expanded, when expanding it opens a listing of all the possible values for selection with an additional option of always being e...

[OrientationHelper](../Ubuntu.Components.OrientationHelper.md)  
The OrientationHelper automatically rotates its children following the orientation of the device.

[Page](../Ubuntu.Components.Page.md)  
A page is the basic Item that must be used inside the [MainView](../Ubuntu.Components.MainView.md), [PageStack](../Ubuntu.Components.PageStack.md) and [PageHeadConfiguration](apps/qml/sdk-14.10/Ubuntu.C...%3C/dd%3E%0A%20%20%20%20%0A%20%20%20%20%20%20%20%20%3Cdt%3E%3Ca%20href=)

Page.head is used to configure the header for a [Page](../Ubuntu.Components.Page.md).

[PageHeadSections](../Ubuntu.Components.PageHeadSections.md)  
PageHeadSections is used to configure the sections for a [Page](../Ubuntu.Components.Page.md).

[PageHeadState](../Ubuntu.Components.PageHeadState.md)  
PageHeadState is a helper component to make it easier to configure the page header when changing states.

[PageStack](../Ubuntu.Components.PageStack.md)  
A stack of [Page](../Ubuntu.Components.Page.md) items that is used for inter-Page navigation. Pages on the stack can be popped, and new Pages can be pushed. The page on top of the stack is the visible one.

[Panel](../Ubuntu.Components.Panel.md)  
A panel that can be swiped in and out from an edge of the window by the user. For most applications, it is highly recommended to use the [MainView](../Ubuntu.Components.MainView.md) instead which includes a toolbar at its ...

[PickerPanel](../Ubuntu.Components.PickerPanel.md)  
Provides a panel for opening a [DatePicker](../Ubuntu.Components.Pickers.DatePicker.md) in place of the input panel or as Popover, depending on the form factor.

[ProgressBar10](../Ubuntu.Components.ProgressBar10.md)  
The ProgressBar component visually indicates the progress of a process of determinate or indeterminate duration.

[PullToRefresh](../Ubuntu.Components.PullToRefresh.md)  
Pull-to-refresh component for Flickables to reload a model upon pull.

[Scrollbar](../Ubuntu.Components.Scrollbar.md)  
The ScrollBar component provides scrolling functionality for scrollable views (i.e. Flickable, [ListView](../QtQuick.ListView.md)).

[Slider](../Ubuntu.Components.Slider.md)  
Slider is a component to select a value from a continuous range of values.

[SortFilterModel](../Ubuntu.Components.SortFilterModel.md)  
SortFilterModel sorts and filters rows from an existing model.

[StateSaver](../Ubuntu.Components.StateSaver.md)  
Attached propertyes to save component property states.

[StyledItem](../Ubuntu.Components.StyledItem.md)  
The StyledItem class allows items to be styled by the theme.

[Switch](../Ubuntu.Components.Switch.md)  
Switch is a component with two states, checked or unchecked. It can be used to set boolean options. The behavior is the same as [CheckBox](../Ubuntu.Components.CheckBox.md), the only difference is the graphical style.

[Tab](../Ubuntu.Components.Tab.md)  
Component to represent a single tab in a [Tabs](../Ubuntu.Components.Tabs.md) environment.

[TabBar](../Ubuntu.Components.TabBar.md)  
Tab bar that will be shown in the header when [Tabs](../Ubuntu.Components.Tabs.md) is active. This component does not need to be instantiated by the developer, it is automatically created by the [Tabs](apps/qml/sdk-...%3C/dd%3E%0A%20%20%20%20%0A%20%20%20%20%20%20%20%20%3Cdt%3E%3Ca%20href=)

The Tabs class provides an environment where multible [Tab](../Ubuntu.Components.Tab.md) children can be added, and the user is presented with a tab bar with tab buttons to select different tab pages.

[TextArea](../Ubuntu.Components.TextArea.md)  
The TextArea item displays a block of editable, scrollable, formatted text.

[TextField](../Ubuntu.Components.TextField.md)  
The TextField element displays a single line of editable plain text. Input constraints can be set through validator or [inputMask](../Ubuntu.Components.TextField.md#inputMask-prop). Setting [Theme](apps/qml/sdk-14.10...%3C/dd%3E%0A%20%20%20%20%0A%20%20%20%20%20%20%20%20%3Cdt%3E%3Ca%20href=)

The Theme class provides facilities to interact with the current theme.

[ToolbarButton](../Ubuntu.Components.ToolbarButton.md)  
An [ActionItem](../Ubuntu.Components.ActionItem.md) that represents a button in the toolbar. ToolbarButtons should be included in [ToolbarItems](../Ubuntu.Components.ToolbarItems.md) to define...

[ToolbarItems](../Ubuntu.Components.ToolbarItems.md)  
Row of Items to be placed in a toolbar.

[UbuntuAnimation](../Ubuntu.Components.UbuntuAnimation.md)  
Singleton defining standard Ubuntu durations and easing for animations that should be used to ensure that Ubuntu applications are consistent in their animations.

[UbuntuApplication](../Ubuntu.Components.UbuntuApplication.md)  
UbuntuApplication is a QML binding for a subset of QCoreApplication.

[UbuntuColors](../Ubuntu.Components.UbuntuColors.md)  
Singleton defining the Ubuntu color palette.

[UbuntuListView](../Ubuntu.Components.UbuntuListView.md)  
A [ListView](../QtQuick.ListView.md) with special features tailored for a look and feel fitting the Ubuntu Touch platform. The UbuntuListView works just like a regular Li...

[UbuntuNumberAnimation](../Ubuntu.Components.UbuntuNumberAnimation.md)  
UbuntuNumberAnimation is a [NumberAnimation](../QtQuick.NumberAnimation.md) that has predefined settings to ensure that Ubuntu applications are consistent in their animations.

[UbuntuShape](../Ubuntu.Components.UbuntuShape.md)  
The UbuntuShape item provides a standard Ubuntu shaped rounded rectangle.

[Units](../Ubuntu.Components.Units.md)  
Units of measurement for sizes, spacing, margin, etc.

[UriHandler](../Ubuntu.Components.UriHandler.md)  
Singleton signalling for opened URIs.

[i18n](../Ubuntu.Components.i18n.md)  
i18n is a context property that provides internationalization support.

### Pages

-   [List Items](../Ubuntu.Components.ubuntu-components-listitems-qmlmodule.md)
-   [Pickers](../Ubuntu.Components.ubuntu-components-pickers-qmlmodule.md)
-   [Popovers, Sheets and Dialogs](../Ubuntu.Components.ubuntu-components-popups-qmlmodule.md)
-   [Basic QML Types](../Ubuntu.Components.ubuntu-components-qmlmodule.md)
-   [Layouts](../Ubuntu.Components.ubuntu-layouts-qmlmodule.md)

