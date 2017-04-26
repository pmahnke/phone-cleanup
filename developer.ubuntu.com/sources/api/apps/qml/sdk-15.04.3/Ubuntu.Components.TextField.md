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
-   [SDK 15.04.3](../index.html) ›
-   [Ubuntu.Components](../Ubuntu.Components/index.html) ›

<!-- -->

-   TextField

TextField
=========

<span class="subtitle"></span>
The TextField element displays a single line of editable plain text. Input constraints can be set through validator or inputMask. Setting echoMode to an appropriate value enables TextField to be used as password input field. More...

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

-   ****[acceptableInput](index.html#acceptableInput-prop)**** : bool
-   ****[activeFocusOnPress](index.html#activeFocusOnPress-prop)**** : bool
-   ****[autoScroll](index.html#autoScroll-prop)**** : bool
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
-   ****[echoMode](index.html#echoMode-prop)**** : enumeration
-   ****[effectiveHorizontalAlignment](index.html#effectiveHorizontalAlignment-prop)**** : enumeration
-   ****[errorHighlight](index.html#errorHighlight-prop)**** : bool
-   ****[font](index.html#font-prop)**** : font
-   ****[hasClearButton](index.html#hasClearButton-prop)**** : bool
-   ****[highlighted](index.html#highlighted-prop)**** : bool
-   ****[horizontalAlignment](index.html#horizontalAlignment-prop)**** : enumeration
-   ****[inputMask](index.html#inputMask-prop)**** : string
-   ****[inputMethodComposing](index.html#inputMethodComposing-prop)**** : bool
-   ****[inputMethodHints](index.html#inputMethodHints-prop)**** : enumeration
-   ****[length](index.html#length-prop)**** : int
-   ****[maximumLength](index.html#maximumLength-prop)**** : int
-   ****[mouseSelectionMode](index.html#mouseSelectionMode-prop)**** : enumeration
-   ****[passwordCharacter](index.html#passwordCharacter-prop)**** : string
-   ****[persistentSelection](index.html#persistentSelection-prop)**** : bool
-   ****[placeholderText](index.html#placeholderText-prop)**** : string
-   ****[popover](index.html#popover-prop)**** : var
-   ****[primaryItem](index.html#primaryItem-prop)**** : list&lt;Object&gt;
-   ****[readOnly](index.html#readOnly-prop)**** : bool
-   ****[renderType](index.html#renderType-prop)**** : enumeration
-   ****[secondaryItem](index.html#secondaryItem-prop)**** : list&lt;Object&gt;
-   ****[selectByMouse](index.html#selectByMouse-prop)**** : bool
-   ****[selectedText](index.html#selectedText-prop)**** : string
-   ****[selectedTextColor](index.html#selectedTextColor-prop)**** : color
-   ****[selectionColor](index.html#selectionColor-prop)**** : color
-   ****[selectionEnd](index.html#selectionEnd-prop)**** : int
-   ****[selectionStart](index.html#selectionStart-prop)**** : int
-   ****[text](index.html#text-prop)**** : string
-   ****[validator](index.html#validator-prop)**** : Validator
-   ****[verticalAlignment](index.html#verticalAlignment-prop)**** : enumeration

<span id="signals"></span>
Signals
-------

-   ****[accepted](index.html#accepted-signal)****()

<span id="methods"></span>
Methods
-------

-   ****[copy](index.html#copy-method)****()
-   ****[cut](index.html#cut-method)****()
-   ****[deselect](index.html#deselect-method)****()
-   ****[getText](index.html#getText-method)****(*start*, *end*)
-   ****[insert](index.html#insert-method)****(*position*, *text*)
-   ****[isRightToLeft](index.html#isRightToLeft-method)****(*start*, *end*)
-   ****[moveCursorSelection](index.html#moveCursorSelection-method)****(*position*, *mode*)
-   ****[paste](index.html#paste-method)****(*data*)
-   ****[positionAt](index.html#positionAt-method)****(*x*, *position*)
-   ****[positionToRectangle](index.html#positionToRectangle-method)****(*pos*)
-   ****[redo](index.html#redo-method)****()
-   ****[remove](index.html#remove-method)****(*start*, *end*)
-   ****[select](index.html#select-method)****(*start*, *end*)
-   ****[selectAll](index.html#selectAll-method)****()
-   ****[selectWord](index.html#selectWord-method)****()
-   ****[undo](index.html#undo-method)****()

<span id="details"></span>
Detailed Description
--------------------

[See also the Design Guidelines on the Text Field](https://design.ubuntu.com/apps/building-blocks/text-input#text-field).

Example:

``` qml
Item {
    TextField {
        placeholderText: "hint text"
    }
    TextField {
        placeholderText: "without clear sign"
        hasClearButton: false
    }
    TextField {
        placeholderText: "password"
        echoMode: TextInput.Password
    }
    TextField {
        placeholderText: "overlaid in front"
        primaryItem: Image {
            height: parent.height
            width: height
            source: "magnifier.png"
        }
        secondaryItem: Row {
            Button {
                height: parent.height
                width: height
                iconName: "compose"
                onClicked: doSomething()
            }
            Button {
                height: parent.height
                width: height
                iconName: "undo"
                onClicked: doSomething()
            }
        }
    }
}
```

<span id="scrolling-and-text-selection"></span>
### Scrolling and text selection

The input is activated when the tap or mouse is released after being pressed over the component.

The text can be scrolled horizontally by swiping over the content both when the component is active or inactive.

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
<td><p><span id="acceptableInput-prop"></span><span class="name">acceptableInput</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property is always true unless a validator or input mask has been set. If a validator or input mask has been set, this property will only be true if the current text is acceptable to the validator or input mask as a final string (not as an intermediate string).

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

Whether the [TextField](index.html) should gain active focus on a mouse press. By default this is set to true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="autoScroll-prop"></span><span class="name">autoScroll</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the [TextField](index.html) should scroll when the text is longer than the width. By default this is set to true.

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

Returns true if the [TextField](index.html) is writable and the content of the clipboard is suitable for pasting into the [TextField](index.html).

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

Returns true if the [TextField](index.html) is writable and there are undone operations that can be redone.

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

Returns true if the [TextField](index.html) is writable and there are previous operations that can be undone.

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

Returns the height of the text, including the height past the height that is covered if the text does not fit within the set height.

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

Returns the width of the text, including the width past the width which is covered due to insufficient wrapping if wrapMode is set.

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

The delegate for the cursor in the [TextField](index.html).

If you set a cursorDelegate for a [TextField](index.html), this delegate will be used for drawing the cursor instead of the standard cursor. An instance of the delegate will be created and managed by the [TextField](index.html) when a cursor is needed, and the x property of delegate instance will be set so as to be one pixel before the top left of the current character.

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

The position of the cursor in the [TextField](index.html).

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

The rectangle where the standard text cursor is rendered within the text input. Read only.

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

Set to true when the [TextField](index.html) shows a cursor.

This property is set and unset when the [TextField](index.html) gets active focus, so that other properties can be bound to whether the cursor is currently showing. As it gets set and unset automatically, when you set the value yourself you must keep in mind that your value may be overwritten.

It can be set directly in script, for example if a KeyProxy might forward keys to it and you desire it to look active when this happens (but without actually giving it active focus).

It should not be set directly on the item, like in the below QML, as the specified value will be overridden an lost on focus changes.

``` qml
TextField {
    text: "Text"
    cursorVisible: false
}
```

In the above snippet the cursor will still become visible when the [TextField](index.html) gains active focus.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="displayText-prop"></span><span class="name">displayText</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This is the text displayed in the [TextField](index.html).

If [echoMode](index.html#echoMode-prop) is set to TextInput::Normal, this holds the same value as the [text](index.html#text-prop) property. Otherwise, this property holds the text visible to the user, while the text property holds the actual entered text.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="echoMode-prop"></span><span class="name">echoMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Specifies how the text should be displayed in the [TextField](index.html).

-   - [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html).Normal - Displays the text as it is. (Default)
-   - [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html).Password - Displays asterixes instead of characters.
-   - [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html).NoEcho - Displays nothing.
-   - [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html).PasswordEchoOnEdit - Displays characters as they are entered while editing, otherwise displays asterisks.

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

See [horizontalAlignment](index.html#horizontalAlignment-prop) for details.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="errorHighlight-prop"></span><span class="name">errorHighlight</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Allows highlighting errors in the [TextField](index.html).

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

Font used in the [TextField](index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hasClearButton-prop"></span><span class="name">hasClearButton</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Specifies whether the control has a clear button or not.

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

The property presents whether the [TextField](index.html) is highlighted or not. By default the [TextField](index.html) gets highlighted when gets the focus, so can accept text input. This property allows to control the highlight separately from the focused behavior.

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

Sets the horizontal alignment of the text within the item's width and height. By default, the text alignment follows the natural alignment of the text, for example text that is read from left to right will be aligned to the left.

[TextField](index.html) does not have vertical alignment, as the natural height is exactly the height of the single line of text. If you set the height manually to something larger, [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html) will always be top aligned vertically. You can use anchors to align it however you want within another item.

The valid values for horizontalAlignment are [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html).AlignLeft, [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html).AlignRight and [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html).AlignHCenter.

Valid values for [verticalAlignment](index.html#verticalAlignment-prop) are [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html).AlignTop (default), [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html).AlignBottom [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html).AlignVCenter.

When using the attached property [LayoutMirroring::enabled](../../sdk-14.10/QtQuick.LayoutMirroring/index.html#enabled-prop) to mirror application layouts, the horizontal alignment of text will also be mirrored. However, the property horizontalAlignment will remain unchanged. To query the effective horizontal alignment of [TextField](index.html), use the read-only property [effectiveHorizontalAlignment](index.html#effectiveHorizontalAlignment-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="inputMask-prop"></span><span class="name">inputMask</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Allows you to set an input mask on the [TextField](index.html), restricting the text inputs. See QLineEdit::inputMask for further details, as the exact same mask strings are used by [TextField](index.html).

Note that when using an inputMask together with [echoMode](index.html#echoMode-prop) to hide the input the empty [TextField](index.html) may still show masked characters - consider [validator](index.html#validator-prop) instead.

**See also** [acceptableInput](index.html#acceptableInput-prop) and [validator](index.html#validator-prop).

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

This property holds whether the [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html) has partial text input from an input method.

While it is composing an input method may rely on mouse or key events from the [TextField](index.html) to edit or commit the partial text. This property can be used to determine when to disable events handlers that may interfere with the correct operation of an input method.

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

Provides hints to the input method about the expected content of the text input and how it should operate.

The value is a bit-wise combination of flags, or Qt.ImhNone if no hints are set.

Flags that alter behaviour are:

-   - Qt.ImhHiddenText - Characters should be hidden, as is typically used when entering passwords. This is automatically set when setting [echoMode](index.html#echoMode-prop) to `TextInput.Password`.
-   - Qt.ImhSensitiveData - Typed text should not be stored by the active input method in any persistent storage like predictive user dictionary.
-   - Qt.ImhNoAutoUppercase - The input method should not try to automatically switch to upper case when a sentence ends.
-   - Qt.ImhPreferNumbers - Numbers are preferred (but not required).
-   - Qt.ImhPreferUppercase - Upper case letters are preferred (but not required).
-   - Qt.ImhPreferLowercase - Lower case letters are preferred (but not required).
-   - Qt.ImhNoPredictiveText - Do not use predictive text (i.e. dictionary lookup) while typing.
-   - Qt.ImhDate - The text editor functions as a date field.
-   - Qt.ImhTime - The text editor functions as a time field.

Flags that restrict input (exclusive flags) are:

-   - Qt.ImhDigitsOnly - Only digits are allowed.
-   - Qt.ImhFormattedNumbersOnly - Only number input is allowed. This includes decimal point and minus sign.
-   - Qt.ImhUppercaseOnly - Only upper case letter input is allowed.
-   - Qt.ImhLowercaseOnly - Only lower case letter input is allowed.
-   - Qt.ImhDialableCharactersOnly - Only characters suitable for phone dialing are allowed.
-   - Qt.ImhEmailCharactersOnly - Only characters suitable for email addresses are allowed.
-   - Qt.ImhUrlCharactersOnly - Only characters suitable for URLs are allowed.

Masks:

-   - Qt.ImhExclusiveInputMask - This mask yields nonzero if any of the exclusive flags are used.

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

Returns the total number of characters in the [TextField](index.html) item.

If the [TextField](index.html) has an [inputMask](index.html#inputMask-prop) the length will include mask characters and may differ from the length of the string returned by the text property.

This property can be faster than querying the length the text property as it doesn't require any copying or conversion of the [TextField](index.html)'s internal string data.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumLength-prop"></span><span class="name">maximumLength</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The maximum permitted length of the text in the [TextField](index.html).

If the text is too long, it is truncated at the limit.

By default, this property contains a value of 32767.

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

-   -[TextInput](../../sdk-14.10/QtQuick.TextInput/index.html).SelectCharacters - The selection is updated with individual characters. (Default)
-   -[TextInput](../../sdk-14.10/QtQuick.TextInput/index.html).SelectWords - The selection is updated with whole words.

This property only applies when [selectByMouse](index.html#selectByMouse-prop) is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="passwordCharacter-prop"></span><span class="name">passwordCharacter</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This is the character displayed when [echoMode](index.html#echoMode-prop) is set to Password or PasswordEchoOnEdit. By default it is the unicode character 2022.

If this property is set to a string with more than one character, the first character is used. If the string is empty, the value is ignored and the property is not set.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="persistentSelection-prop"></span><span class="name">persistentSelection</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the [TextField](index.html) should keep its selection when it loses active focus to another item in the scene. By default this is set to false.

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

Text that appears when there is no content in the component.

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

The property overrides the default popover of the [TextField](index.html). When set, the [TextField](index.html) will open the given popover instead of the default one defined. The popover can either be a component or a URL to be loaded.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="primaryItem-prop"></span><span class="name">primaryItem</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td>
</tr>
</tbody>
</table>

Overlaid component that can be set for the fore side of the [TextField](index.html), e.g.showing a magnifier to implement search functionality.

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

Sets whether user input can modify the contents of the [TextField](index.html).

If readOnly is set to true, then user input will not affect the text property. Any bindings or attempts to set the text property will still work.

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

-   - Text.QtRendering - (default)
-   - Text.NativeRendering

Select Text.NativeRendering if you prefer text to look native on the target platform and do not require advanced features such as transformation of the text. Using such features in combination with the NativeRendering render type will lend poor and sometimes pixelated results.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="secondaryItem-prop"></span><span class="name">secondaryItem</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td>
</tr>
</tbody>
</table>

Overlaid component that can be set for the rear side of the [TextField](index.html), e.g.showing a CAPS LOCK or NUM LOCK indication. The overlaid components will be placed right after the clear button.

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

Defaults to true.

If false, the user cannot use the mouse to select text, only can use it to focus the input.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="selectedText-prop"></span><span class="qmlreadonly">read-only</span><span class="name">selectedText</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This read-only property provides the text currently selected in the text input.

It is equivalent to the following snippet, but is faster and easier to use.

``` cpp
myTextInput.text.toString().substring(myTextInput.selectionStart,
          myTextInput.selectionEnd);
```

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

The highlighted text color, used in selections.

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

This property is read-only. To change the selection, use select(start,end), [selectAll()](index.html#selectAll-method), or [selectWord()](index.html#selectWord-method).

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

This property is read-only. To change the selection, use select(start,end), [selectAll()](index.html#selectAll-method), or [selectWord()](index.html#selectWord-method).

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

The text in the [TextField](index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="validator-prop"></span><span class="name">validator</span> : <span class="type">Validator</span></p></td>
</tr>
</tbody>
</table>

Allows you to set a validator on the [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html). When a validator is set the [TextField](index.html) will only accept input which leaves the text property in an acceptable or intermediate state. The accepted signal will only be sent if the text is in an acceptable state when enter is pressed.

Currently supported validators are [IntValidator](../../sdk-14.10/QtQuick.IntValidator/index.html), [DoubleValidator](../../sdk-14.10/QtQuick.DoubleValidator/index.html) and [RegExpValidator](../../sdk-14.10/QtQuick.RegExpValidator/index.html). An example of using validators is shown below, which allows input of integers between 11 and 31 into the text input:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
TextField{
    validator: IntValidator{bottom: 11; top: 31;}
    focus: true
}
```

The next example is for a use case of typing a PIN with masked characters.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
TextField {
    echoMode: TextInput.Password
    validator: RegExpValidator { regExp: /^\d{4}$/ }
    inputMethodHints: Qt.ImhDigitsOnly
}
```

**See also** [acceptableInput](index.html#acceptableInput-prop) and [inputMask](index.html#inputMask-prop).

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

See [horizontalAlignment](index.html#horizontalAlignment-prop) for details.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="accepted-signal"></span><span class="name">accepted</span>()</p></td>
</tr>
</tbody>
</table>

This handler is called when the Return or Enter key is pressed. Note that if there is a validator or [inputMask](index.html#inputMask-prop) set on the text input, the handler will only be emitted if the input is in an acceptable state.

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
<td><p><span id="getText-method"></span><span class="name">getText</span>( <em>start</em>, <em>end</em>)</p></td>
</tr>
</tbody>
</table>

Returns the section of text that is between the start and end positions.

If the [TextField](index.html) has an [inputMask](index.html#inputMask-prop) the length will include mask characters.

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

Inserts *text* into the [TextField](index.html) at *position*.

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

The selection mode specifies whether the selection is updated on a per character or a per word basis. If not specified the selection mode will default to [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html).SelectCharacters.

-   - [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html).SelectCharacters - Sets either the [selectionStart](index.html#selectionStart-prop) or [selectionEnd](index.html#selectionEnd-prop) (whichever was at the previous cursor position) to the specified position.
-   - [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html).SelectWords - Sets the [selectionStart](index.html#selectionStart-prop) and [selectionEnd](index.html#selectionEnd-prop) to include all words between the specified position and the previous cursor position. Words partially in the range are included.

For example, take this sequence of calls:

``` cpp
cursorPosition = 5
moveCursorSelection(9, TextInput.SelectCharacters)
moveCursorSelection(7, TextInput.SelectCharacters)
```

This moves the cursor to position 5, extend the selection end from 5 to 9 and then retract the selection end from 9 to 7, leaving the text from position 5 to 7 selected (the 6th and 7th characters).

The same sequence with [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html).SelectWords will extend the selection start to a word boundary before or on position 5 and extend the selection end to a word boundary on or past position 9.

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
<td><p><span id="positionAt-method"></span><span class="name">positionAt</span>( <em>x</em>, <em>position</em>)</p></td>
</tr>
</tbody>
</table>

This function returns the character position at x pixels from the left of the [TextField](index.html). Position 0 is before the first character, position 1 is after the first character but before the second, and so on until position text.length, which is after all characters.

This means that for all x values before the first character this function returns 0, and for all x values after the last character this function returns text.length.

The cursor position type specifies how the cursor position should be resolved.

-   - [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html).CursorBetweenCharacters - Returns the position between characters that is nearest x.
-   - [TextInput](../../sdk-14.10/QtQuick.TextInput/index.html).CursorOnCharacter - Returns the position before the character that is nearest x.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="positionToRectangle-method"></span><span class="name">positionToRectangle</span>( <em>pos</em>)</p></td>
</tr>
</tbody>
</table>

This function takes a character position and returns the rectangle that the cursor would occupy, if it was placed at that character position.

This is similar to setting the [cursorPosition](index.html#cursorPosition-prop), and then querying the cursor rectangle, but the [cursorPosition](index.html#cursorPosition-prop) is not changed.

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

Removes the section of text that is between the start and end positions from the [TextField](index.html).

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
