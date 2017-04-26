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
-   <a href="../index.html" class="sub-nav-item">1.6.0</a> ›
-   ubuntuuitoolkit

<!-- -->

ubuntuuitoolkit
---------------

Ubuntu UI Toolkit Autopilot tests and helpers.

 *class* `ubuntuuitoolkit.``AppHeader`(*\*args*)<a href="index.html#ubuntuuitoolkit.AppHeader" class="headerlink" title="Permalink to this definition">¶</a>  
Bases: `ubuntuuitoolkit._custom_proxy_objects._common.UbuntuUIToolkitCustomProxyObjectBase`

AppHeader Autopilot custom proxy object.

 `click_action_button`(*action\_object\_name*)<a href="index.html#ubuntuuitoolkit.AppHeader.click_action_button" class="headerlink" title="Permalink to this definition">¶</a>  
Click an action button of the header.

Parameters:

**object\_name** – The QML objectName property of the action

Raises ToolkitException:

 

If there is no action button with that object name.

 `click_back_button`()<a href="index.html#ubuntuuitoolkit.AppHeader.click_back_button" class="headerlink" title="Permalink to this definition">¶</a>  

 `click_custom_back_button`()<a href="index.html#ubuntuuitoolkit.AppHeader.click_custom_back_button" class="headerlink" title="Permalink to this definition">¶</a>  

 `ensure_visible`()<a href="index.html#ubuntuuitoolkit.AppHeader.ensure_visible" class="headerlink" title="Permalink to this definition">¶</a>  

 `get_selected_section_index`()<a href="index.html#ubuntuuitoolkit.AppHeader.get_selected_section_index" class="headerlink" title="Permalink to this definition">¶</a>  

 `switch_to_next_tab`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.AppHeader.switch_to_next_tab" class="headerlink" title="Permalink to this definition">¶</a>  
Open the next tab.

Raises ToolkitException:

 

If the main view has no tabs.

 `switch_to_section_by_index`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.AppHeader.switch_to_section_by_index" class="headerlink" title="Permalink to this definition">¶</a>  
Select a section in the header divider

Parameters:

**index** – The index of the section to select

Raises ToolkitEmulatorException:

 

If the selection index is out of range or useDeprecatedToolbar is set.

 `switch_to_tab_by_index`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.AppHeader.switch_to_tab_by_index" class="headerlink" title="Permalink to this definition">¶</a>  
Open a tab. This only supports the new tabs in the header

Parameters:

**index** – The index of the tab to open.

Raises ToolkitException:

 

If the tab index is out of range or useDeprecatedToolbar is set.

 `wait_for_animation`()<a href="index.html#ubuntuuitoolkit.AppHeader.wait_for_animation" class="headerlink" title="Permalink to this definition">¶</a>  

<!-- -->

 `ubuntuuitoolkit.``check_autopilot_version`()<a href="index.html#ubuntuuitoolkit.check_autopilot_version" class="headerlink" title="Permalink to this definition">¶</a>  
Check that the Autopilot installed version matches the one required.

Raises ToolkitException:

 

If the installed Autopilot version does’t match the required by the custom proxy objects.

<!-- -->

 *class* `ubuntuuitoolkit.``CheckBox`(*\*args*)<a href="index.html#ubuntuuitoolkit.CheckBox" class="headerlink" title="Permalink to this definition">¶</a>  
Bases: `ubuntuuitoolkit._custom_proxy_objects._common.UbuntuUIToolkitCustomProxyObjectBase`

CheckBox Autopilot custom proxy object.

 `change_state`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.CheckBox.change_state" class="headerlink" title="Permalink to this definition">¶</a>  
Change the state of a CheckBox.

If it is checked, it will be unchecked. If it is unchecked, it will be checked.

|             |                                                                                            |
|-------------|--------------------------------------------------------------------------------------------|
| Parameters: | **time\_out** – number of seconds to wait for the CheckBox state to change. Default is 10. |

 `check`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.CheckBox.check" class="headerlink" title="Permalink to this definition">¶</a>  
Check a CheckBox, if its not already checked.

|             |                                                                                        |
|-------------|----------------------------------------------------------------------------------------|
| Parameters: | **timeout** – number of seconds to wait for the CheckBox to be checked. Default is 10. |

 `uncheck`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.CheckBox.uncheck" class="headerlink" title="Permalink to this definition">¶</a>  
Uncheck a CheckBox, if its not already unchecked.

|             |                                                                                          |
|-------------|------------------------------------------------------------------------------------------|
| Parameters: | **timeout** – number of seconds to wait for the CheckBox to be unchecked. Default is 10. |

<!-- -->

 `ubuntuuitoolkit.``get_keyboard`()<a href="index.html#ubuntuuitoolkit.get_keyboard" class="headerlink" title="Permalink to this definition">¶</a>  
Return the keyboard device.

<!-- -->

 `ubuntuuitoolkit.``get_pointing_device`()<a href="index.html#ubuntuuitoolkit.get_pointing_device" class="headerlink" title="Permalink to this definition">¶</a>  
Return the pointing device depending on the platform.

If the platform is Desktop, the pointing device will be a Mouse. If not, the pointing device will be Touch.

<!-- -->

 *class* `ubuntuuitoolkit.``Header`(*\*args*)<a href="index.html#ubuntuuitoolkit.Header" class="headerlink" title="Permalink to this definition">¶</a>  
Bases: `ubuntuuitoolkit._custom_proxy_objects._header.AppHeader`

Autopilot helper for the deprecated Header.

<!-- -->

 *class* `ubuntuuitoolkit.``Dialog`(*\*args*)<a href="index.html#ubuntuuitoolkit.Dialog" class="headerlink" title="Permalink to this definition">¶</a>  
Bases: `ubuntuuitoolkit._custom_proxy_objects._common.UbuntuUIToolkitCustomProxyObjectBase`

Autopilot helper for the Dialog component.

<!-- -->

 *class* `ubuntuuitoolkit.``UCListItem`(*\*args*)<a href="index.html#ubuntuuitoolkit.UCListItem" class="headerlink" title="Permalink to this definition">¶</a>  
Bases: `ubuntuuitoolkit._custom_proxy_objects._common.UbuntuUIToolkitCustomProxyObjectBase`

Base class to emulate swipe for leading and trailing actions.

 `toggle_selected`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.UCListItem.toggle_selected" class="headerlink" title="Permalink to this definition">¶</a>  
Toggles selected state of the ListItem.

 `trigger_leading_action`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.UCListItem.trigger_leading_action" class="headerlink" title="Permalink to this definition">¶</a>  
Swipe the item in from left to right to open leading actions and click on the button representing the requested action.

parameters: action\_objectName - object name of the action to be  
triggered. wait\_function - a custom wait function to wait till the action is triggered

 `trigger_trailing_action`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.UCListItem.trigger_trailing_action" class="headerlink" title="Permalink to this definition">¶</a>  
Swipe the item in from right to left to open trailing actions and click on the button representing the requested action.

parameters: action\_objectName - object name of the action to be  
triggered. wait\_function - a custom wait function to wait till the action is triggered

<!-- -->

 *class* `ubuntuuitoolkit.``MainView`(*\*args*)<a href="index.html#ubuntuuitoolkit.MainView" class="headerlink" title="Permalink to this definition">¶</a>  
Bases: `ubuntuuitoolkit._custom_proxy_objects._common.UbuntuUIToolkitCustomProxyObjectBase`

MainView Autopilot custom proxy object.

 `click_action_button`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.MainView.click_action_button" class="headerlink" title="Permalink to this definition">¶</a>  
Click the specified button.

Parameters:

**action\_object\_name** – the objectName of the action to trigger.

Raises ToolkitException:

 

The requested button is not available.

 `close_toolbar`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.MainView.close_toolbar" class="headerlink" title="Permalink to this definition">¶</a>  
Close the toolbar if it is opened.

Raises ToolkitException:

 

If the main view has no toolbar.

 `get_action_selection_popover`(*object\_name*)<a href="index.html#ubuntuuitoolkit.MainView.get_action_selection_popover" class="headerlink" title="Permalink to this definition">¶</a>  
Return an ActionSelectionPopover custom proxy object.

|             |                                                                |
|-------------|----------------------------------------------------------------|
| Parameters: | **object\_name** – The QML objectName property of the popover. |

 `get_header`()<a href="index.html#ubuntuuitoolkit.MainView.get_header" class="headerlink" title="Permalink to this definition">¶</a>  
Return the AppHeader custom proxy object of the MainView.

 `get_tabs`()<a href="index.html#ubuntuuitoolkit.MainView.get_tabs" class="headerlink" title="Permalink to this definition">¶</a>  
Return the Tabs custom proxy object of the MainView.

Raises ToolkitException:

 

If the main view has no tabs.

 `get_text_input_context_menu`(*object\_name*)<a href="index.html#ubuntuuitoolkit.MainView.get_text_input_context_menu" class="headerlink" title="Permalink to this definition">¶</a>  
Return a TextInputContextMenu emulator.

|             |                                                                |
|-------------|----------------------------------------------------------------|
| Parameters: | **object\_name** – The QML objectName property of the popover. |

 `get_toolbar`()<a href="index.html#ubuntuuitoolkit.MainView.get_toolbar" class="headerlink" title="Permalink to this definition">¶</a>  
Return the Toolbar custom proxy object of the MainView.

Raises ToolkitException:

 

If the main view has no toolbar.

 `go_back`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.MainView.go_back" class="headerlink" title="Permalink to this definition">¶</a>  
Go to the previous page.

 `open_toolbar`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.MainView.open_toolbar" class="headerlink" title="Permalink to this definition">¶</a>  
Open the toolbar if it is not already opened.

Returns:

The toolbar.

Raises ToolkitException:

 

If the main view has no toolbar.

 `switch_to_next_tab`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.MainView.switch_to_next_tab" class="headerlink" title="Permalink to this definition">¶</a>  
Open the next tab.

|          |                       |
|----------|-----------------------|
| Returns: | The newly opened tab. |

 `switch_to_previous_tab`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.MainView.switch_to_previous_tab" class="headerlink" title="Permalink to this definition">¶</a>  
Open the previous tab.

|          |                       |
|----------|-----------------------|
| Returns: | The newly opened tab. |

 `switch_to_tab`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.MainView.switch_to_tab" class="headerlink" title="Permalink to this definition">¶</a>  
Open a tab.

Parameters:

**object\_name** – The QML objectName property of the tab.

Returns:

The newly opened tab.

Raises ToolkitException:

 

If there is no tab with that object name.

 `switch_to_tab_by_index`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.MainView.switch_to_tab_by_index" class="headerlink" title="Permalink to this definition">¶</a>  
Open a tab.

Parameters:

**index** – The index of the tab to open.

Returns:

The newly opened tab.

Raises ToolkitException:

 

If the tab index is out of range.

 *classmethod* `validate_dbus_object`(*path*, *state*)<a href="index.html#ubuntuuitoolkit.MainView.validate_dbus_object" class="headerlink" title="Permalink to this definition">¶</a>  

<!-- -->

 *class* `ubuntuuitoolkit.``OptionSelector`(*\*args*)<a href="index.html#ubuntuuitoolkit.OptionSelector" class="headerlink" title="Permalink to this definition">¶</a>  
Bases: `ubuntuuitoolkit._custom_proxy_objects._common.UbuntuUIToolkitCustomProxyObjectBase`

OptionSelector Autopilot custom proxy object

 `get_current_label`()<a href="index.html#ubuntuuitoolkit.OptionSelector.get_current_label" class="headerlink" title="Permalink to this definition">¶</a>  
gets the text of the currently selected item

 `get_option_count`()<a href="index.html#ubuntuuitoolkit.OptionSelector.get_option_count" class="headerlink" title="Permalink to this definition">¶</a>  
Gets the number of items in the option selector

 `get_selected_index`()<a href="index.html#ubuntuuitoolkit.OptionSelector.get_selected_index" class="headerlink" title="Permalink to this definition">¶</a>  
Gets the current selected index of the QQuickListView

 `get_selected_text`()<a href="index.html#ubuntuuitoolkit.OptionSelector.get_selected_text" class="headerlink" title="Permalink to this definition">¶</a>  
gets the text of the currently selected item

 `select_option`(*\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.OptionSelector.select_option" class="headerlink" title="Permalink to this definition">¶</a>  
Select delegate in option selector

Example usage::  
select\_option(objectName=”myOptionSelectorDelegate”) select\_option(‘Label’, text=”some\_text\_here”)

|             |                                                                               |
|-------------|-------------------------------------------------------------------------------|
| Parameters: | **kwargs** – keywords used to find property(s) of delegate in option selector |

<!-- -->

 *class* `ubuntuuitoolkit.``QQuickFlickable`(*\*args*)<a href="index.html#ubuntuuitoolkit.QQuickFlickable" class="headerlink" title="Permalink to this definition">¶</a>  
Bases: `ubuntuuitoolkit._custom_proxy_objects._flickable.Scrollable`

 `pull_to_refresh`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.QQuickFlickable.pull_to_refresh" class="headerlink" title="Permalink to this definition">¶</a>  
Pulls the flickable down and triggers a refresh on it.

Raises <a href="index.html#ubuntuuitoolkit.ToolkitException" class="reference internal" title="ubuntuuitoolkit.ToolkitException">ubuntuuitoolkit.ToolkitException</a>:

 

If the flickable has no pull to release functionality.

 `swipe_child_into_view`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.QQuickFlickable.swipe_child_into_view" class="headerlink" title="Permalink to this definition">¶</a>  
Make the child visible.

Currently it works only when the object needs to be swiped vertically. TODO implement horizontal swiping. –elopio - 2014-03-21

 `swipe_to_bottom`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.QQuickFlickable.swipe_to_bottom" class="headerlink" title="Permalink to this definition">¶</a>  

 `swipe_to_show_more_above`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.QQuickFlickable.swipe_to_show_more_above" class="headerlink" title="Permalink to this definition">¶</a>  

 `swipe_to_show_more_below`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.QQuickFlickable.swipe_to_show_more_below" class="headerlink" title="Permalink to this definition">¶</a>  

 `swipe_to_top`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.QQuickFlickable.swipe_to_top" class="headerlink" title="Permalink to this definition">¶</a>  

<!-- -->

 *class* `ubuntuuitoolkit.``QQuickGridView`(*\*args*)<a href="index.html#ubuntuuitoolkit.QQuickGridView" class="headerlink" title="Permalink to this definition">¶</a>  
Bases: `ubuntuuitoolkit._custom_proxy_objects._flickable.QQuickFlickable`

Autopilot helper for the QQuickGridView component.

<!-- -->

 *class* `ubuntuuitoolkit.``QQuickListView`(*\*args*)<a href="index.html#ubuntuuitoolkit.QQuickListView" class="headerlink" title="Permalink to this definition">¶</a>  
Bases: `ubuntuuitoolkit._custom_proxy_objects._flickable.QQuickFlickable`

 `click_element`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.QQuickListView.click_element" class="headerlink" title="Permalink to this definition">¶</a>  
Click an element from the list.

It swipes the element into view if it’s center is not visible.

|             |                                                                                                                                                                                                             |
|-------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Parameters: | -   **objectName** – The objectName property of the element to click.                                                                                                                                       
  -   **direction** – The direction where the element is, it can be either ‘above’ or ‘below’. Default value is None, which means we don’t know where the object is and we will need to search the full list.  |

 `drag_item`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.QQuickListView.drag_item" class="headerlink" title="Permalink to this definition">¶</a>  

 `enable_select_mode`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.QQuickListView.enable_select_mode" class="headerlink" title="Permalink to this definition">¶</a>  
Default implementation to enable select mode. Performs a long tap over the first list item in the ListView. The delegates must be the new ListItem components.

<!-- -->

 *class* `ubuntuuitoolkit.``TabBar`(*\*args*)<a href="index.html#ubuntuuitoolkit.TabBar" class="headerlink" title="Permalink to this definition">¶</a>  
Bases: `ubuntuuitoolkit._custom_proxy_objects._common.UbuntuUIToolkitCustomProxyObjectBase`

TabBar Autopilot custom proxy object.

 `switch_to_next_tab`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.TabBar.switch_to_next_tab" class="headerlink" title="Permalink to this definition">¶</a>  
Open the next tab.

<!-- -->

 *class* `ubuntuuitoolkit.``Tabs`(*\*args*)<a href="index.html#ubuntuuitoolkit.Tabs" class="headerlink" title="Permalink to this definition">¶</a>  
Bases: `ubuntuuitoolkit._custom_proxy_objects._common.UbuntuUIToolkitCustomProxyObjectBase`

Tabs Autopilot custom proxy object.

 `get_current_tab`()<a href="index.html#ubuntuuitoolkit.Tabs.get_current_tab" class="headerlink" title="Permalink to this definition">¶</a>  
Return the currently selected tab.

 `get_number_of_tabs`()<a href="index.html#ubuntuuitoolkit.Tabs.get_number_of_tabs" class="headerlink" title="Permalink to this definition">¶</a>  
Return the number of tabs.

<!-- -->

 *class* `ubuntuuitoolkit.``TextArea`(*\*args*)<a href="index.html#ubuntuuitoolkit.TextArea" class="headerlink" title="Permalink to this definition">¶</a>  
Bases: `ubuntuuitoolkit._custom_proxy_objects._textfield.TextField`

TextArea autopilot emulator.

 `clear`()<a href="index.html#ubuntuuitoolkit.TextArea.clear" class="headerlink" title="Permalink to this definition">¶</a>  
Clear the text area.

<!-- -->

 *class* `ubuntuuitoolkit.``TextField`(*\*args*)<a href="index.html#ubuntuuitoolkit.TextField" class="headerlink" title="Permalink to this definition">¶</a>  
Bases: `ubuntuuitoolkit._custom_proxy_objects._common.UbuntuUIToolkitCustomProxyObjectBase`

TextField Autopilot custom proxy object.

 `clear`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.TextField.clear" class="headerlink" title="Permalink to this definition">¶</a>  
Clear the text field.

 `is_empty`()<a href="index.html#ubuntuuitoolkit.TextField.is_empty" class="headerlink" title="Permalink to this definition">¶</a>  
Return True if the text field is empty. False otherwise.

 `write`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.TextField.write" class="headerlink" title="Permalink to this definition">¶</a>  
Write into the text field.

|             |                                                                                                                                                                     |
|-------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Parameters: | -   **text** – The text to write.                                                                                                                                   
  -   **clear** – If True, the text field will be cleared before writing the text. If False, the text will be appended at the end of the text field. Default is True.  |

<!-- -->

 *class* `ubuntuuitoolkit.``Toolbar`(*\*args*)<a href="index.html#ubuntuuitoolkit.Toolbar" class="headerlink" title="Permalink to this definition">¶</a>  
Bases: `ubuntuuitoolkit._custom_proxy_objects._common.UbuntuUIToolkitCustomProxyObjectBase`

Toolbar Autopilot custom proxy object.

 `click_back_button`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.Toolbar.click_back_button" class="headerlink" title="Permalink to this definition">¶</a>  
Click the back button of the toolbar.

 `click_button`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.Toolbar.click_button" class="headerlink" title="Permalink to this definition">¶</a>  
Click a button of the toolbar.

The toolbar should be opened before clicking the button, or an exception will be raised. If the toolbar is closed for some reason (e.g., timer finishes) after moving the mouse cursor and before clicking the button, it is re-opened automatically by this function.

Parameters:

**object\_name** – The QML objectName property of the button.

Raises ToolkitException:

 

If there is no button with that object name.

 `close`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.Toolbar.close" class="headerlink" title="Permalink to this definition">¶</a>  
Close the toolbar if it’s opened.

 `open`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.Toolbar.open" class="headerlink" title="Permalink to this definition">¶</a>  
Open the toolbar if it’s not already opened.

|          |              |
|----------|--------------|
| Returns: | The toolbar. |

<!-- -->

 *exception* `ubuntuuitoolkit.``ToolkitException`<a href="index.html#ubuntuuitoolkit.ToolkitException" class="headerlink" title="Permalink to this definition">¶</a>  
Bases: `exceptions.Exception`

Exception raised when there is an error with the custom proxy object.

<!-- -->

 *class* `ubuntuuitoolkit.``UbuntuListView11`(*\*args*)<a href="index.html#ubuntuuitoolkit.UbuntuListView11" class="headerlink" title="Permalink to this definition">¶</a>  
Bases: `ubuntuuitoolkit._custom_proxy_objects._qquicklistview.QQuickListView`

Autopilot helper for the UbuntuListView 1.1.

 `manual_refresh_nowait`()<a href="index.html#ubuntuuitoolkit.UbuntuListView11.manual_refresh_nowait" class="headerlink" title="Permalink to this definition">¶</a>  

 `manual_refresh_wait`()<a href="index.html#ubuntuuitoolkit.UbuntuListView11.manual_refresh_wait" class="headerlink" title="Permalink to this definition">¶</a>  

 `pull_to_refresh_enabled`()<a href="index.html#ubuntuuitoolkit.UbuntuListView11.pull_to_refresh_enabled" class="headerlink" title="Permalink to this definition">¶</a>  

 `wait_refresh_completed`()<a href="index.html#ubuntuuitoolkit.UbuntuListView11.wait_refresh_completed" class="headerlink" title="Permalink to this definition">¶</a>  

<!-- -->

 *class* `ubuntuuitoolkit.``UbuntuUIToolkitCustomProxyObjectBase`(*\*args*)<a href="index.html#ubuntuuitoolkit.UbuntuUIToolkitCustomProxyObjectBase" class="headerlink" title="Permalink to this definition">¶</a>  
Bases: `autopilot.introspection.dbus.CustomEmulatorBase`

A base class for all the Ubuntu UI Toolkit custom proxy objects.

 `is_flickable`()<a href="index.html#ubuntuuitoolkit.UbuntuUIToolkitCustomProxyObjectBase.is_flickable" class="headerlink" title="Permalink to this definition">¶</a>  
Check if the object is flickable.

If the object has a flicking attribute, we consider it as a flickable.

|          |                                                   |
|----------|---------------------------------------------------|
| Returns: | True if the object is flickable. False otherwise. |

 `swipe_into_view`(*instance*, *\*args*, *\*\*kwargs*)<a href="index.html#ubuntuuitoolkit.UbuntuUIToolkitCustomProxyObjectBase.swipe_into_view" class="headerlink" title="Permalink to this definition">¶</a>  
Make the object visible.

Currently it works only when the object needs to be swiped vertically. TODO implement horizontal swiping. –elopio - 2014-03-21

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
