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
-   [SDK 15.04.1](../index.html) ›
-   [Ubuntu.Components](../Ubuntu.Components/index.html) ›

<!-- -->

-   TextArea

TextArea
========

<span class="subtitle"></span>
The TextArea item displays a block of editable, scrollable, formatted text. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components 1.3</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="../Ubuntu.Components.Ubuntu/index.html">Ubuntu</a></p></td>
</tr>
</tbody>
</table>

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[activeFocusOnPress](index.html#activeFocusOnPress-prop)**** : bool
-   ****[autoSize](index.html#autoSize-prop)**** : bool
-   ****[baseUrl](index.html#baseUrl-prop)**** : url
-   ****[canPaste](index.html#canPaste-prop)**** : bool
-   ****[canRedo](index.html#canRedo-prop)**** : bool
-   ****[canUndo](index.html#canUndo-prop)**** : bool
-   ****[color](index.html#color-prop)**** : color
-   ****[contentHeight](index.html#contentHeight-prop)**** : real
-   ****[contentWidth](index.html#contentWidth-prop)**** : real
-   ****[cursorDelegate](index.html#cursorDelegate-prop)**** : Component
-   ****[cursorPosition](index.html#cursorPosition-prop)**** : int
-   ****[cursorRectangle](index.html#cursorRectangle-prop)**** : rectangle
-   ****[cursorVisible](index.html#cursorVisible-prop)**** : bool
-   ****[displayText](index.html#displayText-prop)**** : string
-   ****[effectiveHorizontalAlignment](index.html#effectiveHorizontalAlignment-prop)**** : enumeration
-   ****[font](index.html#font-prop)**** : font
-   ****[highlighted](index.html#highlighted-prop)**** : bool
-   ****[horizontalAlignment](index.html#horizontalAlignment-prop)**** : enumeration
-   ****[inputMethodComposing](index.html#inputMethodComposing-prop)**** : bool
-   ****[inputMethodHints](index.html#inputMethodHints-prop)**** : enumeration
-   ****[length](index.html#length-prop)**** : int
-   ****[lineCount](index.html#lineCount-prop)**** : int
-   ****[maximumLineCount](index.html#maximumLineCount-prop)**** : int
-   ****[mouseSelectionMode](index.html#mouseSelectionMode-prop)**** : enumeration
-   ****[paintedHeight](index.html#paintedHeight-prop)**** : real
-   ****[paintedWidth](index.html#paintedWidth-prop)**** : real
-   ****[persistentSelection](index.html#persistentSelection-prop)**** : enumeration
-   ****[placeholderText](index.html#placeholderText-prop)**** : string
-   ****[popover](index.html#popover-prop)**** : var
-   ****[readOnly](index.html#readOnly-prop)**** : bool
-   ****[renderType](index.html#renderType-prop)**** : enumeration
-   ****[selectByMouse](index.html#selectByMouse-prop)**** : bool
-   ****[selectedText](index.html#selectedText-prop)**** : string
-   ****[selectedTextColor](index.html#selectedTextColor-prop)**** : color
-   ****[selectionColor](index.html#selectionColor-prop)**** : color
-   ****[selectionEnd](index.html#selectionEnd-prop)**** : int
-   ****[selectionStart](index.html#selectionStart-prop)**** : int
-   ****[text](index.html#text-prop)**** : string
-   ****[textDocument](index.html#textDocument-prop)**** : var
-   ****[textFormat](index.html#textFormat-prop)**** : enumeration
-   ****[verticalAlignment](index.html#verticalAlignment-prop)**** : enumeration
-   ****[wrapMode](index.html#wrapMode-prop)**** : enumeration

<span id="signals"></span>
Signals
-------

-   ****[linkActivated](index.html#linkActivated-signal)****(string *link*)

<span id="methods"></span>
Methods
-------

-   ****[copy](index.html#copy-method)****()
-   ****[cut](index.html#cut-method)****()
-   ****[deselect](index.html#deselect-method)****()
-   ****[getFormattedText](index.html#getFormattedText-method)****(*start*, *end*)
-   ****[getText](index.html#getText-method)****(*start*, *end*)
-   ****[insert](index.html#insert-method)****(*position*, *text*)
-   ****[isRightToLeft](index.html#isRightToLeft-method)****(*start*, *end*)
-   ****[moveCursorSelection](index.html#moveCursorSelection-method)****(*position*, *mode*)
-   ****[paste](index.html#paste-method)****(*data*)
-   ****[positionAt](index.html#positionAt-method)****(*x*, *y*)
-   ****[positionToRectangle](index.html#positionToRectangle-method)****(*position*)
-   ****[redo](index.html#redo-method)****()
-   ****[remove](index.html#remove-method)****(*start*, *end*)
-   ****[select](index.html#select-method)****(*start*, *end*)
-   ****[selectAll](index.html#selectAll-method)****()
-   ****[selectWord](index.html#selectWord-method)****()
-   ****[undo](index.html#undo-method)****()

<span id="details"></span>
Detailed Description
--------------------

The [TextArea](index.html) supports fix-size and auto-expanding modes. In fix-size mode the content is scrolled when exceeds the boundaries and can be scrolled both horizontally and vertically, depending on the [contentWidth](index.html#contentWidth-prop) and [contentHeight](index.html#contentHeight-prop) set. The following example will scroll the editing area both horizontally and vertically:

``` qml
TextArea {
    width: units.gu(20)
    height: units.gu(12)
    contentWidth: units.gu(30)
    contentHeight: units.gu(60)
}
```

The auto-expand mode is realized using two properties: [autoSize](index.html#autoSize-prop) and [maximumLineCount](index.html#maximumLineCount-prop). Setting [autoSize](index.html#autoSize-prop) will set implicitHeight to one line, and the height will follow the line count, meaning when lines are added the area will expand and when removed the area will shrink. The [maximumLineCount](index.html#maximumLineCount-prop) specifies how much the editor should be expanded. If this value is set to 0, the area will always expand vertically to fit the content. When [autoSize](index.html#autoSize-prop) is set, the [contentHeight](index.html#contentHeight-prop) property value is ignored, and the expansion only happens vertically.

``` qml
TextArea {
    width: units.gu(20)
    height: units.gu(12)
    contentWidth: units.gu(30)
    autoSize: true
    maximumLineCount: 0
}
```

[TextArea](index.html) comes with 30 grid-units implicit width and one line height on auto-sizing mode and 4 lines on fixed-mode. The line size is calculated from the font size and the ovarlay and frame spacing specified in the style.

<span id="scrolling-and-text-selection"></span>
### Scrolling and text selection

The input is activated when the tap or mouse is released after being pressed over the component.

Scrolling the editing area can happen when the size is fixed or in auto-sizing mode when the content size is bigger than the visible area. The scrolling is realized by swipe gestures, or by navigating the cursor.

The content can be selected in the following ways:

-   - double tapping/left mouse clicking over the content, when the word that had been tapped over will be selected
-   - by pressing and dragging the selection cursor over the text input. Note that there has to be a delay of approx. 200 ms between the press and drag gesture, time when the input switches from scroll mode to selection mode

The input is focused (activated) upon tap/left mouse button release. The cursor will be placed at the position the mouse/tap point at release time. If the click is happening on a selected area, the selection will be cleared. Long press above a selected area brings up the clipboard context menu. When the long press happens over a non-selected area, the cursor will be moved to the position and the component enters in selection mode. The selection mode can also be activated by tapping and keeping the tap/mouse over for approx 300 ms. If there is a move during this time, the component enters into scrolling mode. The mode is exited once the scrolling finishes. During the scrolling mode the selected text is preserved.

**Note:** During text selection all interactive parent Flickables are turned off.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="activeFocusOnPress-prop"></span><span class="name">activeFocusOnPress</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the [TextArea](index.html) should gain active focus on a mouse press. By default this is set to true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="autoSize-prop"></span><span class="name">autoSize</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property specifies whether the text area sizes following the line count or not. The default value is false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="baseUrl-prop"></span><span class="name">baseUrl</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-url.html">url</a></span></p></td>
</tr>
</tbody>
</table>

This property specifies a base URL which is used to resolve relative URLs within the text. The default value is the url of the QML file instantiating the [TextArea](index.html) item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="canPaste-prop"></span><span class="name">canPaste</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Returns true if the [TextArea](index.html) is writable and the content of the clipboard is suitable for pasting into the [TextArea](index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="canRedo-prop"></span><span class="name">canRedo</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Returns true if the [TextArea](index.html) is writable and there are undone operations that can be redone.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="canUndo-prop"></span><span class="name">canUndo</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Returns true if the [TextArea](index.html) is writable and there are previous operations that can be undone.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="color-prop"></span><span class="name">color</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The text color.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentHeight-prop"></span><span class="name">contentHeight</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The property folds the height of the text editing content. This can be equal or bigger than the frame height minus the spacing between the frame and the input area defined in the current theme. The default value is the same as the visible input area's height.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentWidth-prop"></span><span class="name">contentWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The property folds the width of the text editing content. This can be equal or bigger than the frame width minus the spacing between the frame and the input area defined in the current theme. The default value is the same as the visible input area's width.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cursorDelegate-prop"></span><span class="name">cursorDelegate</span> : <span class="type"><a href="../../sdk-14.10/QtQml.Component/index.html">Component</a></span></p></td>
</tr>
</tbody>
</table>

The delegate for the cursor in the [TextArea](index.html).

If you set a cursorDelegate for a [TextArea](index.html), this delegate will be used for drawing the cursor instead of the standard cursor. An instance of the delegate will be created and managed by the text edit when a cursor is needed, and the x and y properties of delegate instance will be set so as to be one pixel before the top left of the current character.

Note that the root item of the delegate component must be a [QQuickItem](http://doc.qt.io/qt-5/qquickitem.html) or [QQuickItem](http://doc.qt.io/qt-5/qquickitem.html) derived item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cursorPosition-prop"></span><span class="name">cursorPosition</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The position of the cursor in the [TextArea](index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cursorRectangle-prop"></span><span class="name">cursorRectangle</span> : <span class="type">rectangle</span></p></td>
</tr>
</tbody>
</table>

The rectangle where the standard text cursor is rendered within the text edit. Read-only.

The position and height of a custom [cursorDelegate](index.html#cursorDelegate-prop) are updated to follow the cursorRectangle automatically when it changes. The width of the delegate is unaffected by changes in the cursor rectangle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cursorVisible-prop"></span><span class="name">cursorVisible</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If true the text edit shows a cursor.

This property is set and unset when the text edit gets active focus, but it can also be set directly (useful, for example, if a KeyProxy might forward keys to it).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="displayText-prop"></span><span class="qmlreadonly">read-only</span><span class="name">displayText</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property contains the text that is displayed on the screen. May differ from the text property value when [TextEdit](../../sdk-14.10/QtQuick.TextEdit/index.html).RichText format is selected.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="effectiveHorizontalAlignment-prop"></span><span class="name">effectiveHorizontalAlignment</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Presents the effective horizontal alignment that can be different from the one specified at [horizontalAlignment](index.html#horizontalAlignment-prop) due to layout mirroring.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="font-prop"></span><span class="name">font</span> : <span class="type"><a href="index.html#font-prop">font</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the font used by the editing.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="highlighted-prop"></span><span class="name">highlighted</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property presents whether the [TextArea](index.html) is highlighted or not. By default the [TextArea](index.html) gets highlighted when gets the focus, so can accept text input. This property allows to control the highlight separately from the focused behavior.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="horizontalAlignment-prop"></span><span class="name">horizontalAlignment</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Sets the horizontal alignment of the text within the TextAre item's width and height. By default, the text alignment follows the natural alignment of the text, for example text that is read from left to right will be aligned to the left.

Valid values for [effectiveHorizontalAlignment](index.html#effectiveHorizontalAlignment-prop) are:

-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit/index.html).AlignLeft (default)
-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit/index.html).AlignRight
-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit/index.html).AlignHCenter
-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit/index.html).AlignJustify

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="inputMethodComposing-prop"></span><span class="name">inputMethodComposing</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the [TextArea](index.html) has partial text input from an input method.

While it is composing an input method may rely on mouse or key events from the [TextArea](index.html) to edit or commit the partial text. This property can be used to determine when to disable events handlers that may interfere with the correct operation of an input method.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="inputMethodHints-prop"></span><span class="name">inputMethodHints</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Provides hints to the input method about the expected content of the text edit and how it should operate.

The value is a bit-wise combination of flags or Qt.ImhNone if no hints are set.

Flags that alter behaviour are:

-   Qt.ImhHiddenText - Characters should be hidden, as is typically used when entering passwords.
-   Qt.ImhSensitiveData - Typed text should not be stored by the active input method in any persistent storage like predictive user dictionary.
-   Qt.ImhNoAutoUppercase - The input method should not try to automatically switch to upper case when a sentence ends.
-   Qt.ImhPreferNumbers - Numbers are preferred (but not required).
-   Qt.ImhPreferUppercase - Upper case letters are preferred (but not required).
-   Qt.ImhPreferLowercase - Lower case letters are preferred (but not required).
-   Qt.ImhNoPredictiveText - Do not use predictive text (i.e. dictionary lookup) while typing.
-   Qt.ImhDate - The text editor functions as a date field.
-   Qt.ImhTime - The text editor functions as a time field.

Flags that restrict input (exclusive flags) are:

-   Qt.ImhDigitsOnly - Only digits are allowed.
-   Qt.ImhFormattedNumbersOnly - Only number input is allowed. This includes decimal point and minus sign.
-   Qt.ImhUppercaseOnly - Only upper case letter input is allowed.
-   Qt.ImhLowercaseOnly - Only lower case letter input is allowed.
-   Qt.ImhDialableCharactersOnly - Only characters suitable for phone dialing are allowed.
-   Qt.ImhEmailCharactersOnly - Only characters suitable for email addresses are allowed.
-   Qt.ImhUrlCharactersOnly - Only characters suitable for URLs are allowed.

Masks:

-   Qt.ImhExclusiveInputMask - This mask yields nonzero if any of the exclusive flags are used.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="length-prop"></span><span class="name">length</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Returns the total number of plain text characters in the [TextArea](index.html) item.

As this number doesn't include any formatting markup it may not be the same as the length of the string returned by the text property.

This property can be faster than querying the length the text property as it doesn't require any copying or conversion of the [TextArea](index.html)'s internal string data.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lineCount-prop"></span><span class="name">lineCount</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Returns the total number of lines in the [TextArea](index.html) item.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumLineCount-prop"></span><span class="name">maximumLineCount</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The property holds the maximum amount of lines to expand when [autoSize](index.html#autoSize-prop) is enabled. The value of 0 does not put any upper limit and the control will expand forever.

The default value is 5 lines.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mouseSelectionMode-prop"></span><span class="name">mouseSelectionMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Specifies how text should be selected using a mouse.

-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit/index.html).SelectCharacters - The selection is updated with individual characters. (Default)
-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit/index.html).SelectWords - The selection is updated with whole words.

This property only applies when [selectByMouse](index.html#selectByMouse-prop) is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="paintedHeight-prop"></span><span class="qmlreadonly">read-only</span><span class="name">paintedHeight</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Exposes the paintedHeight of the underlying text component. It's required if the application uses its own Flickable for scrolling.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="paintedWidth-prop"></span><span class="qmlreadonly">read-only</span><span class="name">paintedWidth</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Exposes the paintedWidth of the underlying text component. It's required if the application uses its own Flickable for scrolling.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="persistentSelection-prop"></span><span class="name">persistentSelection</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Whether the [TextArea](index.html) should keep the selection visible when it loses active focus to another item in the scene. By default this is set to true;

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="placeholderText-prop"></span><span class="name">placeholderText</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Text that appears when there is no focus and no content in the component (hint text).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="popover-prop"></span><span class="name">popover</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span></p></td>
</tr>
</tbody>
</table>

The property overrides the default popover of the [TextArea](index.html). When set, the [TextArea](index.html) will open the given popover instead of the default one defined. The popover can either be a component or a URL to be loaded.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="readOnly-prop"></span><span class="name">readOnly</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the user can interact with the [TextArea](index.html) item. If this property is set to true the text cannot be edited by user interaction.

By default this property is false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="renderType-prop"></span><span class="name">renderType</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Override the default rendering type for this component.

Supported render types are:

-   Text.QtRendering - the default
-   Text.NativeRendering

Select Text.NativeRendering if you prefer text to look native on the target platform and do not require advanced features such as transformation of the text. Using such features in combination with the NativeRendering render type will lend poor and sometimes pixelated results.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectByMouse-prop"></span><span class="name">selectByMouse</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property drives whether text selection should happen with the mouse or not. The default value is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectedText-prop"></span><span class="name">selectedText</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This read-only property provides the text currently selected in the text edit.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectedTextColor-prop"></span><span class="name">selectedTextColor</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The selected text color, used in selections.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectionColor-prop"></span><span class="name">selectionColor</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The text highlight color, used behind selections.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectionEnd-prop"></span><span class="name">selectionEnd</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The cursor position after the last character in the current selection.

This property is read-only. To change the selection, use select(start, end), [selectAll()](index.html#selectAll-method), or [selectWord()](index.html#selectWord-method).

See also [selectionStart](index.html#selectionStart-prop), [cursorPosition](index.html#cursorPosition-prop), and [selectedText](index.html#selectedText-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectionStart-prop"></span><span class="name">selectionStart</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The cursor position before the first character in the current selection.

This property is read-only. To change the selection, use select(start, end), [selectAll()](index.html#selectAll-method), or [selectWord()](index.html#selectWord-method).

See also [selectionEnd](index.html#selectionEnd-prop), [cursorPosition](index.html#cursorPosition-prop), and [selectedText](index.html#selectedText-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="text-prop"></span><span class="name">text</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The text to display. If the text format is AutoText the text edit will automatically determine whether the text should be treated as rich text. This determination is made using Qt::mightBeRichText().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="textDocument-prop"></span><span class="name">textDocument</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span></p></td>
</tr>
</tbody>
</table>

Exposes the [QQuickTextDocument](http://doc.qt.io/qt-5/qquicktextdocument.html) which can be used to implement advanced formatting and syntax highlighting (QSyntaxHighlighter) with C++.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="textFormat-prop"></span><span class="name">textFormat</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

The way the text property should be displayed.

-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit/index.html).AutoText
-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit/index.html).PlainText
-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit/index.html).RichText

The default is [TextEdit](../../sdk-14.10/QtQuick.TextEdit/index.html).PlainText. If the text format is [TextEdit](../../sdk-14.10/QtQuick.TextEdit/index.html).AutoText the text edit will automatically determine whether the text should be treated as rich text. This determination is made using Qt::mightBeRichText().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="verticalAlignment-prop"></span><span class="name">verticalAlignment</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Sets the vertical alignment of the text within the TextAres item's width and height. By default, the text alignment follows the natural alignment of the text.

Valid values for verticalAlignment are:

-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit/index.html).AlignTop (default)
-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit/index.html).AlignBottom
-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit/index.html).AlignVCenter

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="wrapMode-prop"></span><span class="name">wrapMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Set this property to wrap the text to the [TextEdit](../../sdk-14.10/QtQuick.TextEdit/index.html) item's width. The text will only wrap if an explicit width has been set.

-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit/index.html).NoWrap - no wrapping will be performed. If the text contains insufficient newlines, then implicitWidth will exceed a set width.
-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit/index.html).WordWrap - wrapping is done on word boundaries only. If a word is too long, implicitWidth will exceed a set width.
-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit/index.html).WrapAnywhere - wrapping is done at any point on a line, even if it occurs in the middle of a word.
-   [TextEdit](../../sdk-14.10/QtQuick.TextEdit/index.html).Wrap - if possible, wrapping occurs at a word boundary; otherwise it will occur at the appropriate point on the line, even in the middle of a word.

The default is [TextEdit](../../sdk-14.10/QtQuick.TextEdit/index.html).Wrap

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="linkActivated-signal"></span><span class="name">linkActivated</span>(<span class="type">string</span> <em>link</em>)</p></td>
</tr>
</tbody>
</table>

This handler is called when the user clicks on a link embedded in the text. The link must be in rich text or HTML format and the link string provides access to the particular link.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="copy-method"></span><span class="name">copy</span>()</p></td>
</tr>
</tbody>
</table>

Copies the currently selected text to the system clipboard.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cut-method"></span><span class="name">cut</span>()</p></td>
</tr>
</tbody>
</table>

Moves the currently selected text to the system clipboard.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="deselect-method"></span><span class="name">deselect</span>()</p></td>
</tr>
</tbody>
</table>

Removes active text selection.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="getFormattedText-method"></span><span class="name">getFormattedText</span>( <em>start</em>, <em>end</em>)</p></td>
</tr>
</tbody>
</table>

Returns the section of text that is between the start and end positions.

The returned text will be formatted according the [textFormat](index.html#textFormat-prop) property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="getText-method"></span><span class="name">getText</span>( <em>start</em>, <em>end</em>)</p></td>
</tr>
</tbody>
</table>

Returns the section of text that is between the start and end positions.

The returned text does not include any rich text formatting. A getText(0, length) will result in the same value as [displayText](index.html#displayText-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="insert-method"></span><span class="name">insert</span>( <em>position</em>, <em>text</em>)</p></td>
</tr>
</tbody>
</table>

Inserts text into the [TextArea](index.html) at position.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isRightToLeft-method"></span><span class="name">isRightToLeft</span>( <em>start</em>, <em>end</em>)</p></td>
</tr>
</tbody>
</table>

Returns true if the natural reading direction of the editor text found between positions start and end is right to left.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="moveCursorSelection-method"></span><span class="name">moveCursorSelection</span>( <em>position</em>, <em>mode</em>)</p></td>
</tr>
</tbody>
</table>

Moves the cursor to position and updates the selection according to the optional mode parameter. (To only move the cursor, set the [cursorPosition](index.html#cursorPosition-prop) property.)

When this method is called it additionally sets either the [selectionStart](index.html#selectionStart-prop) or the [selectionEnd](index.html#selectionEnd-prop) (whichever was at the previous cursor position) to the specified position. This allows you to easily extend and contract the selected text range.

The selection mode specifies whether the selection is updated on a per character or a per word basis. If not specified the selection mode will default to whatever is given in the [mouseSelectionMode](index.html#mouseSelectionMode-prop) property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="paste-method"></span><span class="name">paste</span>( <em>data</em>)</p></td>
</tr>
</tbody>
</table>

Places the clipboard or the data given as parameter into the text input. The selected text will be replaces with the data.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="positionAt-method"></span><span class="name">positionAt</span>( <em>x</em>, <em>y</em>)</p></td>
</tr>
</tbody>
</table>

Returns the text position closest to pixel position (x, y).

Position 0 is before the first character, position 1 is after the first character but before the second, and so on until position text.length, which is after all characters.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="positionToRectangle-method"></span><span class="name">positionToRectangle</span>( <em>position</em>)</p></td>
</tr>
</tbody>
</table>

Returns the rectangle at the given position in the text. The x, y, and height properties correspond to the cursor that would describe that position.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="redo-method"></span><span class="name">redo</span>()</p></td>
</tr>
</tbody>
</table>

Redoes the last operation if redo is [available](index.html#canRedo-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="remove-method"></span><span class="name">remove</span>( <em>start</em>, <em>end</em>)</p></td>
</tr>
</tbody>
</table>

Removes the section of text that is between the start and end positions from the [TextArea](index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="select-method"></span><span class="name">select</span>( <em>start</em>, <em>end</em>)</p></td>
</tr>
</tbody>
</table>

Causes the text from start to end to be selected.

If either start or end is out of range, the selection is not changed.

After calling this, [selectionStart](index.html#selectionStart-prop) will become the lesser and [selectionEnd](index.html#selectionEnd-prop) will become the greater (regardless of the order passed to this method).

See also [selectionStart](index.html#selectionStart-prop) and [selectionEnd](index.html#selectionEnd-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectAll-method"></span><span class="name">selectAll</span>()</p></td>
</tr>
</tbody>
</table>

Causes all text to be selected.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectWord-method"></span><span class="name">selectWord</span>()</p></td>
</tr>
</tbody>
</table>

Causes the word closest to the current cursor position to be selected.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="undo-method"></span><span class="name">undo</span>()</p></td>
</tr>
</tbody>
</table>

Undoes the last operation if undo is [available](index.html#canUndo-prop). Deselects any current selection, and updates the selection start to the current cursor position.

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
