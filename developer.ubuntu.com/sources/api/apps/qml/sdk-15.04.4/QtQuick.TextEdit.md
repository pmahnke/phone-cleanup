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
-   [SDK 15.04.4](../index.html) ›
-   [QtQuick](../QtQuick/index.html) ›

<!-- -->

-   TextEdit

TextEdit
========

<span class="subtitle"></span>
Displays multiple lines of editable formatted text More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import QtQuick 2.4</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="../QtQuick.Item/index.html">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[activeFocusOnPress](index.html#activeFocusOnPress-prop)**** : bool
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
-   ****[effectiveHorizontalAlignment](index.html#effectiveHorizontalAlignment-prop)**** : enumeration
-   ****[font.bold](index.html#font.bold-prop)**** : bool
-   ****[font.capitalization](index.html#font.capitalization-prop)**** : enumeration
-   ****[font.family](index.html#font.family-prop)**** : string
-   ****[font.italic](index.html#font.italic-prop)**** : bool
-   ****[font.letterSpacing](index.html#font.letterSpacing-prop)**** : real
-   ****[font.pixelSize](index.html#font.pixelSize-prop)**** : int
-   ****[font.pointSize](index.html#font.pointSize-prop)**** : real
-   ****[font.strikeout](index.html#font.strikeout-prop)**** : bool
-   ****[font.underline](index.html#font.underline-prop)**** : bool
-   ****[font.weight](index.html#font.weight-prop)**** : enumeration
-   ****[font.wordSpacing](index.html#font.wordSpacing-prop)**** : real
-   ****[horizontalAlignment](index.html#horizontalAlignment-prop)**** : enumeration
-   ****[hoveredLink](index.html#hoveredLink-prop)**** : string
-   ****[inputMethodComposing](index.html#inputMethodComposing-prop)**** : bool
-   ****[inputMethodHints](index.html#inputMethodHints-prop)**** : enumeration
-   ****[length](index.html#length-prop)**** : int
-   ****[lineCount](index.html#lineCount-prop)**** : int
-   ****[mouseSelectionMode](index.html#mouseSelectionMode-prop)**** : enumeration
-   ****[persistentSelection](index.html#persistentSelection-prop)**** : bool
-   ****[readOnly](index.html#readOnly-prop)**** : bool
-   ****[renderType](index.html#renderType-prop)**** : enumeration
-   ****[selectByKeyboard](index.html#selectByKeyboard-prop)**** : bool
-   ****[selectByMouse](index.html#selectByMouse-prop)**** : bool
-   ****[selectedText](index.html#selectedText-prop)**** : string
-   ****[selectedTextColor](index.html#selectedTextColor-prop)**** : color
-   ****[selectionColor](index.html#selectionColor-prop)**** : color
-   ****[selectionEnd](index.html#selectionEnd-prop)**** : int
-   ****[selectionStart](index.html#selectionStart-prop)**** : int
-   ****[text](index.html#text-prop)**** : string
-   ****[textDocument](index.html#textDocument-prop)**** : TextDocument
-   ****[textFormat](index.html#textFormat-prop)**** : enumeration
-   ****[textMargin](index.html#textMargin-prop)**** : real
-   ****[verticalAlignment](index.html#verticalAlignment-prop)**** : enumeration
-   ****[wrapMode](index.html#wrapMode-prop)**** : enumeration

<span id="signals"></span>
Signals
-------

-   ****[linkActivated](index.html#linkActivated-signal)****(string *link*)
-   ****[linkHovered](index.html#linkHovered-signal)****(string *link*)

<span id="methods"></span>
Methods
-------

-   void ****[append](index.html#append-method)****(string *text*)
-   ****[copy](index.html#copy-method)****()
-   ****[cut](index.html#cut-method)****()
-   ****[deselect](index.html#deselect-method)****()
-   string ****[getFormattedText](index.html#getFormattedText-method)****(int *start*, int *end*)
-   string ****[getText](index.html#getText-method)****(int *start*, int *end*)
-   ****[insert](index.html#insert-method)****(int *position*, string *text*)
-   ****[isRightToLeft](index.html#isRightToLeft-method)****(int *start*, int *end*)
-   ****[linkAt](index.html#linkAt-method)****(real *x*, real *y*)
-   ****[moveCursorSelection](index.html#moveCursorSelection-method)****(int *position*, SelectionMode *mode*)
-   ****[paste](index.html#paste-method)****()
-   int ****[positionAt](index.html#positionAt-method)****(int *x*, int *y*)
-   rectangle ****[positionToRectangle](index.html#positionToRectangle-method)****(position)
-   ****[redo](index.html#redo-method)****()
-   string ****[remove](index.html#remove-method)****(int *start*, int *end*)
-   ****[select](index.html#select-method)****(int *start*, int *end*)
-   ****[selectAll](index.html#selectAll-method)****()
-   ****[selectWord](index.html#selectWord-method)****()
-   ****[undo](index.html#undo-method)****()

<span id="details"></span>
Detailed Description
--------------------

The [TextEdit](index.html) item displays a block of editable, formatted text.

It can display both plain and rich text. For example:

``` qml
TextEdit {
    width: 240
    text: "<b>Hello</b> <i>World!</i>"
    font.family: "Helvetica"
    font.pointSize: 20
    color: "blue"
    focus: true
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/ac194cfd-ec5f-4816-980b-23674703a3e4-api/apps/qml/sdk-15.04.4/QtQuick.TextEdit/images/declarative-textedit.gif)

Setting [focus](../QtQuick.Item/index.html#focus-prop) to `true` enables the [TextEdit](index.html) item to receive keyboard focus.

Note that the [TextEdit](index.html) does not implement scrolling, following the cursor, or other behaviors specific to a look-and-feel. For example, to add flickable scrolling that follows the cursor:

``` qml
Flickable {
     id: flick
     width: 300; height: 200;
     contentWidth: edit.paintedWidth
     contentHeight: edit.paintedHeight
     clip: true
     function ensureVisible(r)
     {
         if (contentX >= r.x)
             contentX = r.x;
         else if (contentX+width <= r.x+r.width)
             contentX = r.x+r.width-width;
         if (contentY >= r.y)
             contentY = r.y;
         else if (contentY+height <= r.y+r.height)
             contentY = r.y+r.height-height;
     }
     TextEdit {
         id: edit
         width: flick.width
         height: flick.height
         focus: true
         wrapMode: TextEdit.Wrap
         onCursorRectangleChanged: flick.ensureVisible(cursorRectangle)
     }
 }
```

A particular look-and-feel might use smooth scrolling (eg. using [SmoothedAnimation](../QtQuick.SmoothedAnimation/index.html)), might have a visible scrollbar, or a scrollbar that fades in to show location, etc.

Clipboard support is provided by the [cut()](index.html#cut-method), [copy()](index.html#copy-method), and [paste()](index.html#paste-method) functions, and the selection can be handled in a traditional "mouse" mechanism by setting [selectByMouse](index.html#selectByMouse-prop), or handled completely from QML by manipulating [selectionStart](index.html#selectionStart-prop) and [selectionEnd](index.html#selectionEnd-prop), or using [selectAll()](index.html#selectAll-method) or [selectWord()](index.html#selectWord-method).

You can translate between cursor positions (characters from the start of the document) and pixel points using [positionAt()](index.html#positionAt-method) and [positionToRectangle()](index.html#positionToRectangle-method).

**See also** [Text](../QtQuick.qtquick-releasenotes/index.html#text) and [TextInput](../QtQuick.TextInput/index.html).

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

Whether the [TextEdit](index.html) should gain active focus on a mouse press. By default this is set to true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="baseUrl-prop"></span><span class="name">baseUrl</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

This property specifies a base URL which is used to resolve relative URLs within the text.

The default value is the url of the QML file instantiating the [TextEdit](index.html) item.

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

Returns true if the [TextEdit](index.html) is writable and the content of the clipboard is suitable for pasting into the [TextEdit](index.html).

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

Returns true if the [TextEdit](index.html) is writable and there are [undone](index.html#undo-method) operations that can be redone.

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

Returns true if the [TextEdit](index.html) is writable and there are previous operations that can be undone.

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

``` qml
// green text using hexadecimal notation
TextEdit { color: "#00FF00" }
```

``` qml
// steelblue text using SVG color name
TextEdit { color: "steelblue" }
```

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

Returns the width of the text, including the width past the width which is covered due to insufficient wrapping if [wrapMode](index.html#wrapMode-prop) is set.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cursorDelegate-prop"></span><span class="name">cursorDelegate</span> : <span class="type">Component</span></p></td>
</tr>
</tbody>
</table>

The delegate for the cursor in the [TextEdit](index.html).

If you set a cursorDelegate for a [TextEdit](index.html), this delegate will be used for drawing the cursor instead of the standard cursor. An instance of the delegate will be created and managed by the text edit when a cursor is needed, and the x and y properties of delegate instance will be set so as to be one pixel before the top left of the current character.

Note that the root item of the delegate component must be a QQuickItem or QQuickItem derived item.

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

The position of the cursor in the [TextEdit](index.html).

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
<td><p><span id="effectiveHorizontalAlignment-prop"></span><span class="name">effectiveHorizontalAlignment</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Sets the horizontal and vertical alignment of the text within the [TextEdit](index.html) item's width and height. By default, the text alignment follows the natural alignment of the text, for example text that is read from left to right will be aligned to the left.

Valid values for `horizontalAlignment` are:

-   [TextEdit](index.html).AlignLeft (default)
-   [TextEdit](index.html).AlignRight
-   [TextEdit](index.html).AlignHCenter
-   [TextEdit](index.html).AlignJustify

Valid values for `verticalAlignment` are:

-   [TextEdit](index.html).AlignTop (default)
-   [TextEdit](index.html).AlignBottom
-   [TextEdit](index.html).AlignVCenter

When using the attached property [LayoutMirroring::enabled](../QtQuick.LayoutMirroring/index.html#enabled-prop) to mirror application layouts, the horizontal alignment of text will also be mirrored. However, the property `horizontalAlignment` will remain unchanged. To query the effective horizontal alignment of [TextEdit](index.html), use the read-only property `effectiveHorizontalAlignment`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="font.bold-prop"></span><span class="name">font.bold</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Sets whether the font weight is bold.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="font.capitalization-prop"></span><span class="name">font.capitalization</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Sets the capitalization for the text.

-   Font.MixedCase - This is the normal text rendering option where no capitalization change is applied.
-   Font.AllUppercase - This alters the text to be rendered in all uppercase type.
-   Font.AllLowercase - This alters the text to be rendered in all lowercase type.
-   Font.SmallCaps - This alters the text to be rendered in small-caps type.
-   Font.Capitalize - This alters the text to be rendered with the first character of each word as an uppercase character.

``` qml
TextEdit { text: "Hello"; font.capitalization: Font.AllLowercase }
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="font.family-prop"></span><span class="name">font.family</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Sets the family name of the font.

The family name is case insensitive and may optionally include a foundry name, e.g. "Helvetica \[Cronyx\]". If the family is available from more than one foundry and the foundry isn't specified, an arbitrary foundry is chosen. If the family isn't available a family will be set using the font matching algorithm.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="font.italic-prop"></span><span class="name">font.italic</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Sets whether the font has an italic style.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="font.letterSpacing-prop"></span><span class="name">font.letterSpacing</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Sets the letter spacing for the font.

Letter spacing changes the default spacing between individual letters in the font. A positive value increases the letter spacing by the corresponding pixels; a negative value decreases the spacing.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="font.pixelSize-prop"></span><span class="name">font.pixelSize</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Sets the font size in pixels.

Using this function makes the font device dependent. Use [TextEdit::font.pointSize](index.html#font.pointSize-prop) to set the size of the font in a device independent manner.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="font.pointSize-prop"></span><span class="name">font.pointSize</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Sets the font size in points. The point size must be greater than zero.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="font.strikeout-prop"></span><span class="name">font.strikeout</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Sets whether the font has a strikeout style.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="font.underline-prop"></span><span class="name">font.underline</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Sets whether the text is underlined.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="font.weight-prop"></span><span class="name">font.weight</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Sets the font's weight.

The weight can be one of:

-   Font.Light
-   Font.Normal - the default
-   Font.DemiBold
-   Font.Bold
-   Font.Black

``` qml
TextEdit { text: "Hello"; font.weight: Font.DemiBold }
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="font.wordSpacing-prop"></span><span class="name">font.wordSpacing</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Sets the word spacing for the font.

Word spacing changes the default spacing between individual words. A positive value increases the word spacing by a corresponding amount of pixels, while a negative value decreases the inter-word spacing accordingly.

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

Sets the horizontal and vertical alignment of the text within the [TextEdit](index.html) item's width and height. By default, the text alignment follows the natural alignment of the text, for example text that is read from left to right will be aligned to the left.

Valid values for `horizontalAlignment` are:

-   [TextEdit](index.html).AlignLeft (default)
-   [TextEdit](index.html).AlignRight
-   [TextEdit](index.html).AlignHCenter
-   [TextEdit](index.html).AlignJustify

Valid values for `verticalAlignment` are:

-   [TextEdit](index.html).AlignTop (default)
-   [TextEdit](index.html).AlignBottom
-   [TextEdit](index.html).AlignVCenter

When using the attached property [LayoutMirroring::enabled](../QtQuick.LayoutMirroring/index.html#enabled-prop) to mirror application layouts, the horizontal alignment of text will also be mirrored. However, the property `horizontalAlignment` will remain unchanged. To query the effective horizontal alignment of [TextEdit](index.html), use the read-only property `effectiveHorizontalAlignment`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hoveredLink-prop"></span><span class="name">hoveredLink</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property contains the link string when the user hovers a link embedded in the text. The link must be in rich text or HTML format and the link string provides access to the particular link.

This QML property was introduced in Qt 5.2.

**See also** [linkHovered](index.html#linkHovered-signal) and [linkAt()](index.html#linkAt-method).

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

This property holds whether the [TextEdit](index.html) has partial text input from an input method.

While it is composing an input method may rely on mouse or key events from the [TextEdit](index.html) to edit or commit the partial text. This property can be used to determine when to disable events handlers that may interfere with the correct operation of an input method.

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

Returns the total number of plain text characters in the [TextEdit](index.html) item.

As this number doesn't include any formatting markup it may not be the same as the length of the string returned by the [text](../QtQuick.qtquick-releasenotes/index.html#text) property.

This property can be faster than querying the length the [text](../QtQuick.qtquick-releasenotes/index.html#text) property as it doesn't require any copying or conversion of the [TextEdit](index.html)'s internal string data.

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

Returns the total number of lines in the textEdit item.

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

-   [TextEdit](index.html).SelectCharacters - The selection is updated with individual characters. (Default)
-   [TextEdit](index.html).SelectWords - The selection is updated with whole words.

This property only applies when [selectByMouse](index.html#selectByMouse-prop) is true.

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

Whether the [TextEdit](index.html) should keep the selection visible when it loses active focus to another item in the scene. By default this is set to false.

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

Whether the user can interact with the [TextEdit](index.html) item. If this property is set to true the text cannot be edited by user interaction.

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
<td><p><span id="selectByKeyboard-prop"></span><span class="name">selectByKeyboard</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Defaults to true when the editor is editable, and false when read-only.

If true, the user can use the keyboard to select text even if the editor is read-only. If false, the user cannot use the keyboard to select text even if the editor is editable.

This QML property was introduced in Qt 5.1.

**See also** [readOnly](index.html#readOnly-prop).

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

Defaults to false.

If true, the user can use the mouse to select text in some platform-specific way. Note that for some platforms this may not be an appropriate interaction (eg. may conflict with how the text needs to behave inside a Flickable.

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

It is equivalent to the following snippet, but is faster and easier to use.

``` cpp
//myTextEdit is the id of the TextEdit
myTextEdit.text.toString().substring(myTextEdit.selectionStart,
        myTextEdit.selectionEnd);
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

This property is read-only. To change the selection, use select(start,end), [selectAll()](index.html#selectAll-method), or [selectWord()](index.html#selectWord-method).

**See also** [selectionStart](index.html#selectionStart-prop), [cursorPosition](index.html#cursorPosition-prop), and [selectedText](index.html#selectedText-prop).

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

**See also** [selectionEnd](index.html#selectionEnd-prop), [cursorPosition](index.html#cursorPosition-prop), and [selectedText](index.html#selectedText-prop).

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

The text-property is mostly suitable for setting the initial content and handling modifications to relatively small text content. The [append()](index.html#append-method), [insert()](index.html#insert-method) and [remove()](index.html#remove-method) methods provide more fine-grained control and remarkably better performance for modifying especially large rich text content.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="textDocument-prop"></span><span class="name">textDocument</span> : <span class="type">TextDocument</span></p></td>
</tr>
</tbody>
</table>

Returns the QQuickTextDocument of this TextEdit. It can be used to implement syntax highlighting using QSyntaxHighlighter.

This QML property was introduced in Qt 5.1.

**See also** QQuickTextDocument.

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

-   [TextEdit](index.html).AutoText
-   [TextEdit](index.html).PlainText
-   [TextEdit](index.html).RichText

The default is [TextEdit](index.html).PlainText. If the text format is [TextEdit](index.html).AutoText the text edit will automatically determine whether the text should be treated as rich text. This determination is made using Qt::mightBeRichText().

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><pre class="qml"><code>Column {
    TextEdit {
        font.pointSize: 24
        text: &quot;&lt;b&gt;Hello&lt;/b&gt; &lt;i&gt;World!&lt;/i&gt;&quot;
    }
    TextEdit {
        font.pointSize: 24
        textFormat: TextEdit.RichText
        text: &quot;&lt;b&gt;Hello&lt;/b&gt; &lt;i&gt;World!&lt;/i&gt;&quot;
    }
    TextEdit {
        font.pointSize: 24
        textFormat: TextEdit.PlainText
        text: &quot;&lt;b&gt;Hello&lt;/b&gt; &lt;i&gt;World!&lt;/i&gt;&quot;
    }
}</code></pre></td>
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/4fa73957-73dc-4794-b7ff-a5d6152834d0-api/apps/qml/sdk-15.04.4/QtQuick.TextEdit/images/declarative-textformat.png" /></p></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="textMargin-prop"></span><span class="name">textMargin</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The margin, in pixels, around the text in the [TextEdit](index.html).

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

Sets the horizontal and vertical alignment of the text within the [TextEdit](index.html) item's width and height. By default, the text alignment follows the natural alignment of the text, for example text that is read from left to right will be aligned to the left.

Valid values for `horizontalAlignment` are:

-   [TextEdit](index.html).AlignLeft (default)
-   [TextEdit](index.html).AlignRight
-   [TextEdit](index.html).AlignHCenter
-   [TextEdit](index.html).AlignJustify

Valid values for `verticalAlignment` are:

-   [TextEdit](index.html).AlignTop (default)
-   [TextEdit](index.html).AlignBottom
-   [TextEdit](index.html).AlignVCenter

When using the attached property [LayoutMirroring::enabled](../QtQuick.LayoutMirroring/index.html#enabled-prop) to mirror application layouts, the horizontal alignment of text will also be mirrored. However, the property `horizontalAlignment` will remain unchanged. To query the effective horizontal alignment of [TextEdit](index.html), use the read-only property `effectiveHorizontalAlignment`.

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

Set this property to wrap the text to the [TextEdit](index.html) item's width. The text will only wrap if an explicit width has been set.

-   [TextEdit](index.html).NoWrap - no wrapping will be performed. If the text contains insufficient newlines, then implicitWidth will exceed a set width.
-   [TextEdit](index.html).WordWrap - wrapping is done on word boundaries only. If a word is too long, implicitWidth will exceed a set width.
-   [TextEdit](index.html).WrapAnywhere - wrapping is done at any point on a line, even if it occurs in the middle of a word.
-   [TextEdit](index.html).Wrap - if possible, wrapping occurs at a word boundary; otherwise it will occur at the appropriate point on the line, even in the middle of a word.

The default is [TextEdit](index.html).NoWrap. If you set a width, consider using [TextEdit](index.html).Wrap.

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

This signal is emitted when the user clicks on a link embedded in the text. The link must be in rich text or HTML format and the *link* string provides access to the particular link.

The corresponding handler is `onLinkActivated`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="linkHovered-signal"></span><span class="name">linkHovered</span>(<span class="type">string</span> <em>link</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the user hovers a link embedded in the text. The link must be in rich text or HTML format and the *link* string provides access to the particular link.

The corresponding handler is `onLinkHovered`.

This QML signal was introduced in Qt 5.2.

**See also** [hoveredLink](index.html#hoveredLink-prop) and [linkAt()](index.html#linkAt-method).

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="append-method"></span><span class="type">void</span> <span class="name">append</span>(<span class="type">string</span> <em>text</em>)</p></td>
</tr>
</tbody>
</table>

Appends a new paragraph with *text* to the end of the [TextEdit](index.html).

In order to append without inserting a new paragraph, call `myTextEdit.insert(myTextEdit.length, text)` instead.

This QML method was introduced in Qt 5.2.

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
<td><p><span id="getFormattedText-method"></span><span class="type">string</span> <span class="name">getFormattedText</span>(<span class="type">int</span> <em>start</em>, <span class="type">int</span> <em>end</em>)</p></td>
</tr>
</tbody>
</table>

Returns the section of text that is between the *start* and *end* positions.

The returned text will be formatted according the [textFormat](index.html#textFormat-prop) property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="getText-method"></span><span class="type">string</span> <span class="name">getText</span>(<span class="type">int</span> <em>start</em>, <span class="type">int</span> <em>end</em>)</p></td>
</tr>
</tbody>
</table>

Returns the section of text that is between the *start* and *end* positions.

The returned text does not include any rich text formatting.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="insert-method"></span><span class="name">insert</span>(<span class="type">int</span> <em>position</em>, <span class="type">string</span> <em>text</em>)</p></td>
</tr>
</tbody>
</table>

Inserts *text* into the [TextEdit](index.html) at position.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isRightToLeft-method"></span><span class="name">isRightToLeft</span>(<span class="type">int</span> <em>start</em>, <span class="type">int</span> <em>end</em>)</p></td>
</tr>
</tbody>
</table>

Returns true if the natural reading direction of the editor text found between positions *start* and *end* is right to left.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="linkAt-method"></span><span class="name">linkAt</span>(<span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>)</p></td>
</tr>
</tbody>
</table>

Returns the link string at point *x*, *y* in content coordinates, or an empty string if no link exists at that point.

This QML method was introduced in Qt 5.3.

**See also** [hoveredLink](index.html#hoveredLink-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="moveCursorSelection-method"></span><span class="name">moveCursorSelection</span>(<span class="type">int</span> <em>position</em>, <span class="type">SelectionMode</span> <em>mode</em> = TextEdit.SelectCharacters)</p></td>
</tr>
</tbody>
</table>

Moves the cursor to *position* and updates the selection according to the optional *mode* parameter. (To only move the cursor, set the [cursorPosition](index.html#cursorPosition-prop) property.)

When this method is called it additionally sets either the [selectionStart](index.html#selectionStart-prop) or the [selectionEnd](index.html#selectionEnd-prop) (whichever was at the previous cursor position) to the specified position. This allows you to easily extend and contract the selected text range.

The selection mode specifies whether the selection is updated on a per character or a per word basis. If not specified the selection mode will default to [TextEdit](index.html).SelectCharacters.

-   [TextEdit](index.html).SelectCharacters - Sets either the [selectionStart](index.html#selectionStart-prop) or [selectionEnd](index.html#selectionEnd-prop) (whichever was at the previous cursor position) to the specified position.
-   [TextEdit](index.html).SelectWords - Sets the [selectionStart](index.html#selectionStart-prop) and [selectionEnd](index.html#selectionEnd-prop) to include all words between the specified position and the previous cursor position. Words partially in the range are included.

For example, take this sequence of calls:

``` cpp
cursorPosition = 5
moveCursorSelection(9, TextEdit.SelectCharacters)
moveCursorSelection(7, TextEdit.SelectCharacters)
```

This moves the cursor to position 5, extend the selection end from 5 to 9 and then retract the selection end from 9 to 7, leaving the text from position 5 to 7 selected (the 6th and 7th characters).

The same sequence with [TextEdit](index.html).SelectWords will extend the selection start to a word boundary before or on position 5 and extend the selection end to a word boundary on or past position 9.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="paste-method"></span><span class="name">paste</span>()</p></td>
</tr>
</tbody>
</table>

Replaces the currently selected text by the contents of the system clipboard.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="positionAt-method"></span><span class="type">int</span> <span class="name">positionAt</span>(<span class="type">int</span> <em>x</em>, <span class="type">int</span> <em>y</em>)</p></td>
</tr>
</tbody>
</table>

Returns the text position closest to pixel position (*x*, *y*).

Position 0 is before the first character, position 1 is after the first character but before the second, and so on until position [text](../QtQuick.qtquick-releasenotes/index.html#text).length, which is after all characters.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="positionToRectangle-method"></span><span class="type">rectangle</span> <span class="name">positionToRectangle</span>(<span class="type">position</span>)</p></td>
</tr>
</tbody>
</table>

Returns the rectangle at the given *position* in the text. The x, y, and height properties correspond to the cursor that would describe that position.

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
<td><p><span id="remove-method"></span><span class="type">string</span> <span class="name">remove</span>(<span class="type">int</span> <em>start</em>, <span class="type">int</span> <em>end</em>)</p></td>
</tr>
</tbody>
</table>

Removes the section of text that is between the *start* and *end* positions from the [TextEdit](index.html).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="select-method"></span><span class="name">select</span>(<span class="type">int</span> <em>start</em>, <span class="type">int</span> <em>end</em>)</p></td>
</tr>
</tbody>
</table>

Causes the text from *start* to *end* to be selected.

If either start or end is out of range, the selection is not changed.

After calling this, [selectionStart](index.html#selectionStart-prop) will become the lesser and [selectionEnd](index.html#selectionEnd-prop) will become the greater (regardless of the order passed to this method).

**See also** [selectionStart](index.html#selectionStart-prop) and [selectionEnd](index.html#selectionEnd-prop).

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
