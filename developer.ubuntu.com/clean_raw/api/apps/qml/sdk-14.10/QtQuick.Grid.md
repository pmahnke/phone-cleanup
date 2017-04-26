---
Title: QtQuick.Grid
---

# QtQuick.Grid

<span class="subtitle"></span>
<!-- $$$Grid-brief -->
<p>Positions its children in grid formation More...</p>
<!-- @@@Grid -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> </b><tt>import QtQuick 2.2</tt></td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2>Properties</h2>
<ul>
<li class="fn"><b><b><a href="#add-prop">add</a></b></b> : Transition</li>
<li class="fn"><b><b><a href="#columnSpacing-prop">columnSpacing</a></b></b> : qreal</li>
<li class="fn"><b><b><a href="#columns-prop">columns</a></b></b> : int</li>
<li class="fn"><b><b><a href="#effectiveHorizontalItemAlignment-prop">effectiveHorizontalItemAlignment</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#effectiveLayoutDirection-prop">effectiveLayoutDirection</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#flow-prop">flow</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#horizontalItemAlignment-prop">horizontalItemAlignment</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#layoutDirection-prop">layoutDirection</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#move-prop">move</a></b></b> : Transition</li>
<li class="fn"><b><b><a href="#populate-prop">populate</a></b></b> : Transition</li>
<li class="fn"><b><b><a href="#rowSpacing-prop">rowSpacing</a></b></b> : qreal</li>
<li class="fn"><b><b><a href="#rows-prop">rows</a></b></b> : int</li>
<li class="fn"><b><b><a href="#spacing-prop">spacing</a></b></b> : qreal</li>
<li class="fn"><b><b><a href="#verticalItemAlignment-prop">verticalItemAlignment</a></b></b> : enumeration</li>
</ul>
<!-- $$$Grid-description -->
<h2>Detailed Description</h2>
<p>Grid is a type that positions its child items in grid formation.</p>
<p>A Grid creates a grid of cells that is large enough to hold all of its child items, and places these items in the cells from left to right and top to bottom. Each item is positioned at the top-left corner of its cell with position (0, 0).</p>
<p>A Grid defaults to four columns, and creates as many rows as are necessary to fit all of its child items. The number of rows and columns can be constrained by setting the <a href="#rows-prop">rows</a> and <a href="#columns-prop">columns</a> properties.</p>
<p>For example, below is a Grid that contains five rectangles of various sizes:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Grid</span> {
<span class="name">columns</span>: <span class="number">3</span>
<span class="name">spacing</span>: <span class="number">2</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;red&quot;</span>; <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span> }
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;green&quot;</span>; <span class="name">width</span>: <span class="number">20</span>; <span class="name">height</span>: <span class="number">50</span> }
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>; <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">20</span> }
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;cyan&quot;</span>; <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span> }
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;magenta&quot;</span>; <span class="name">width</span>: <span class="number">10</span>; <span class="name">height</span>: <span class="number">10</span> }
}</pre>
<p>The Grid automatically positions the child items in a grid formation:</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/777ec774-3d9f-4e18-9c98-b73fdd87cf25-../QtQuick.Grid/images/gridLayout_example.png" alt="" /></p><p>If an item within a Column is not <a href="QtQuick.Item.md#visible-prop">visible</a>, or if it has a width or height of 0, the item will not be laid out and it will not be visible within the column. Also, since a Grid automatically positions its children, a child item within a Grid should not set its <a href="QtQuick.Item.md#x-prop">x</a> or <a href="QtQuick.Item.md#y-prop">y</a> positions or anchor itself with any of the anchor properties.</p>
<p>For more information on using Grid and other related positioner-types, see <a href="QtQuick.qtquick-positioning-layouts.md">Item Positioners</a>.</p>
<p><b>See also </b><a href="QtQuick.Flow.md">Flow</a>, <a href="QtQuick.Row.md">Row</a>, <a href="QtQuick.Column.md">Column</a>, <a href="QtQuick.Positioner.md">Positioner</a>, GridLayout, and <a href="https://developer.ubuntu.comapps/qml/sdk-14.10/QtQuick.positioners/">Qt Quick Examples - Positioners</a>.</p>
<!-- @@@Grid -->
<h2>Property Documentation</h2>
<!-- $$$add -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">add</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td></tr></table><p>This property holds the transition to be run for items that are added to this positioner. For a positioner, this applies to:</p>
<ul>
<li>Items that are created or reparented as a child of the positioner after the positioner has been created</li>
<li>Child items that change their <a href="QtQuick.Item.md#visible-prop">Item::visible</a> property from false to true, and thus are now visible</li>
</ul>
<p>The transition can use the <a href="QtQuick.ViewTransition.md">ViewTransition</a> property to access more details about the item that is being added. See the <a href="QtQuick.ViewTransition.md">ViewTransition</a> documentation for more details and examples on using these transitions.</p>
<p><b>Note: </b>This transition is not applied to the items that already part of the positioner at the time of its creation. In this case, the <a href="#populate-prop">populate</a> transition is applied instead.</p><p><b>See also </b><a href="#populate-prop">populate</a>, <a href="QtQuick.ViewTransition.md">ViewTransition</a>, and <a href="https://developer.ubuntu.comapps/qml/sdk-14.10/QtQuick.positioners/">Qt Quick Examples - Positioners</a>.</p>
<!-- @@@add -->
<br/>
<!-- $$$columnSpacing -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">columnSpacing</span> : <span class="type">qreal</span></p></td></tr></table><p>This property holds the spacing in pixels between columns.</p>
<p>If this property is not set, then spacing is used for the column spacing.</p>
<p>By default this property is not set.</p>
<p>This QML property was introduced in  Qt 5.0.</p>
<p><b>See also </b><a href="#rowSpacing-prop">rowSpacing</a>.</p>
<!-- @@@columnSpacing -->
<br/>
<!-- $$$columns -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">columns</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the number of columns in the grid. The default number of columns is 4.</p>
<p>If the grid does not have enough items to fill the specified number of columns, some columns will be of zero width.</p>
<!-- @@@columns -->
<br/>
<!-- $$$effectiveHorizontalItemAlignment -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">effectiveHorizontalItemAlignment</span> : <span class="type">enumeration</span></p></td></tr></table><p>Sets the horizontal and vertical alignment of items in the Grid. By default, the items are vertically aligned to the top. Horizontal alignment follows the <a href="#layoutDirection-prop">layoutDirection</a> of the Grid, for example when having a <a href="#layoutDirection-prop">layoutDirection</a> from LeftToRight, the items will be aligned on the left.</p>
<p>The valid values for <tt>horizontalItemAlignment</tt> are, <tt>Grid.AlignLeft</tt>, <tt>Grid.AlignRight</tt> and <tt>Grid.AlignHCenter</tt>.</p>
<p>The valid values for <tt>verticalItemAlignment</tt> are <tt>Grid.AlignTop</tt>, <tt>Grid.AlignBottom</tt> and <tt>Grid.AlignVCenter</tt>.</p>
<p>The below images show three examples of how to align items.</p>
<table class="generic">
<tr valign="top"><td ></td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/9451a106-22b5-4c05-8abe-197368fafee0-../QtQuick.Grid/images/gridLayout_aligntopleft.png" alt="" /></td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/77c27320-927c-430f-9b5f-4133066f47b7-../QtQuick.Grid/images/gridLayout_aligntop.png" alt="" /></td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/ef62e702-4262-4527-9965-4c977c50356b-../QtQuick.Grid/images/gridLayout_aligncenter.png" alt="" /></td></tr>
<tr valign="top"><td >Horizontal alignment</td><td >AlignLeft</td><td >AlignHCenter</td><td >AlignHCenter</td></tr>
<tr valign="top"><td >Vertical alignment</td><td >AlignTop</td><td >AlignTop</td><td >AlignVCenter</td></tr>
</table>
<p>When mirroring the layout using either the attached property <a href="QtQuick.LayoutMirroring.md#enabled-prop">LayoutMirroring::enabled</a> or by setting the <a href="#layoutDirection-prop">layoutDirection</a>, the horizontal alignment of items will be mirrored as well. However, the property <tt>horizontalItemAlignment</tt> will remain unchanged. To query the effective horizontal alignment of items, use the read-only property <tt>effectiveHorizontalItemAlignment</tt>.</p>
<p><b>See also </b><a href="#layoutDirection-prop">Grid::layoutDirection</a> and <a href="QtQuick.LayoutMirroring.md">LayoutMirroring</a>.</p>
<!-- @@@effectiveHorizontalItemAlignment -->
<br/>
<!-- $$$effectiveLayoutDirection -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">effectiveLayoutDirection</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the effective layout direction of the grid.</p>
<p>When using the attached property <a href="QtQuick.LayoutMirroring.md#enabled-prop">LayoutMirroring::enabled</a> for locale layouts, the visual layout direction of the grid positioner will be mirrored. However, the property <a href="#layoutDirection-prop">layoutDirection</a> will remain unchanged.</p>
<p><b>See also </b><a href="#layoutDirection-prop">Grid::layoutDirection</a> and <a href="QtQuick.LayoutMirroring.md">LayoutMirroring</a>.</p>
<!-- @@@effectiveLayoutDirection -->
<br/>
<!-- $$$flow -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">flow</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the flow of the layout.</p>
<p>Possible values are:</p>
<ul>
<li>Grid.LeftToRight (default) - Items are positioned next to each other in the <a href="#layoutDirection-prop">layoutDirection</a>, then wrapped to the next line.</li>
<li>Grid.TopToBottom - Items are positioned next to each other from top to bottom, then wrapped to the next column.</li>
</ul>
<!-- @@@flow -->
<br/>
<!-- $$$horizontalItemAlignment -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">horizontalItemAlignment</span> : <span class="type">enumeration</span></p></td></tr></table><p>Sets the horizontal and vertical alignment of items in the Grid. By default, the items are vertically aligned to the top. Horizontal alignment follows the <a href="#layoutDirection-prop">layoutDirection</a> of the Grid, for example when having a <a href="#layoutDirection-prop">layoutDirection</a> from LeftToRight, the items will be aligned on the left.</p>
<p>The valid values for <tt>horizontalItemAlignment</tt> are, <tt>Grid.AlignLeft</tt>, <tt>Grid.AlignRight</tt> and <tt>Grid.AlignHCenter</tt>.</p>
<p>The valid values for <tt>verticalItemAlignment</tt> are <tt>Grid.AlignTop</tt>, <tt>Grid.AlignBottom</tt> and <tt>Grid.AlignVCenter</tt>.</p>
<p>The below images show three examples of how to align items.</p>
<table class="generic">
<tr valign="top"><td ></td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/650ec16d-d1e6-4d87-93cb-168026a1e82d-../QtQuick.Grid/images/gridLayout_aligntopleft.png" alt="" /></td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/cf6399f1-e202-48eb-99e2-3d2ea0b85884-../QtQuick.Grid/images/gridLayout_aligntop.png" alt="" /></td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/a131e207-e0fc-46a8-be19-975b796e547d-../QtQuick.Grid/images/gridLayout_aligncenter.png" alt="" /></td></tr>
<tr valign="top"><td >Horizontal alignment</td><td >AlignLeft</td><td >AlignHCenter</td><td >AlignHCenter</td></tr>
<tr valign="top"><td >Vertical alignment</td><td >AlignTop</td><td >AlignTop</td><td >AlignVCenter</td></tr>
</table>
<p>When mirroring the layout using either the attached property <a href="QtQuick.LayoutMirroring.md#enabled-prop">LayoutMirroring::enabled</a> or by setting the <a href="#layoutDirection-prop">layoutDirection</a>, the horizontal alignment of items will be mirrored as well. However, the property <tt>horizontalItemAlignment</tt> will remain unchanged. To query the effective horizontal alignment of items, use the read-only property <tt>effectiveHorizontalItemAlignment</tt>.</p>
<p><b>See also </b><a href="#layoutDirection-prop">Grid::layoutDirection</a> and <a href="QtQuick.LayoutMirroring.md">LayoutMirroring</a>.</p>
<!-- @@@horizontalItemAlignment -->
<br/>
<!-- $$$layoutDirection -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">layoutDirection</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the layout direction of the layout.</p>
<p>Possible values are:</p>
<ul>
<li>Qt.LeftToRight (default) - Items are positioned from the top to bottom, and left to right. The flow direction is dependent on the <a href="#flow-prop">Grid::flow</a> property.</li>
<li>Qt.RightToLeft - Items are positioned from the top to bottom, and right to left. The flow direction is dependent on the <a href="#flow-prop">Grid::flow</a> property.</li>
</ul>
<p><b>See also </b><a href="QtQuick.Flow.md#layoutDirection-prop">Flow::layoutDirection</a>, <a href="QtQuick.Row.md#layoutDirection-prop">Row::layoutDirection</a>, and <a href="https://developer.ubuntu.comapps/qml/sdk-14.10/QtQuick.righttoleft/">Qt Quick Examples - Right to Left</a>.</p>
<!-- @@@layoutDirection -->
<br/>
<!-- $$$move -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">move</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td></tr></table><p>This property holds the transition to run for items that have moved within the positioner. For a positioner, this applies to:</p>
<ul>
<li>Child items that move when they are displaced due to the addition, removal or rearrangement of other items in the positioner</li>
<li>Child items that are repositioned due to the resizing of other items in the positioner</li>
</ul>
<p>The transition can use the <a href="QtQuick.ViewTransition.md">ViewTransition</a> property to access more details about the item that is being moved. Note, however, that for this move transition, the <a href="QtQuick.ViewTransition.md">ViewTransition</a>.targetIndexes and <a href="QtQuick.ViewTransition.md">ViewTransition</a>.targetItems lists are only set when this transition is triggered by the addition of other items in the positioner; in other cases, these lists will be empty. See the <a href="QtQuick.ViewTransition.md">ViewTransition</a> documentation for more details and examples on using these transitions.</p>
<p><b>Note: </b>In Qt Quick 1, this transition was applied to all items that were part of the positioner at the time of its creation. From <a href="QtQuick.qtquick-index.md">QtQuick 2</a> onwards, positioners apply the <a href="#populate-prop">populate</a> transition to these items instead.</p><p><b>See also </b><a href="#add-prop">add</a>, <a href="QtQuick.ViewTransition.md">ViewTransition</a>, and <a href="https://developer.ubuntu.comapps/qml/sdk-14.10/QtQuick.positioners/">Qt Quick Examples - Positioners</a>.</p>
<!-- @@@move -->
<br/>
<!-- $$$populate -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">populate</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td></tr></table><p>This property holds the transition to be run for items that are part of this positioner at the time of its creation. The transition is run when the positioner is first created.</p>
<p>The transition can use the <a href="QtQuick.ViewTransition.md">ViewTransition</a> property to access more details about the item that is being added. See the <a href="QtQuick.ViewTransition.md">ViewTransition</a> documentation for more details and examples on using these transitions.</p>
<p><b>See also </b><a href="#add-prop">add</a>, <a href="QtQuick.ViewTransition.md">ViewTransition</a>, and <a href="https://developer.ubuntu.comapps/qml/sdk-14.10/QtQuick.positioners/">Qt Quick Examples - Positioners</a>.</p>
<!-- @@@populate -->
<br/>
<!-- $$$rowSpacing -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">rowSpacing</span> : <span class="type">qreal</span></p></td></tr></table><p>This property holds the spacing in pixels between rows.</p>
<p>If this property is not set, then spacing is used for the row spacing.</p>
<p>By default this property is not set.</p>
<p>This QML property was introduced in  Qt 5.0.</p>
<p><b>See also </b><a href="#columnSpacing-prop">columnSpacing</a>.</p>
<!-- @@@rowSpacing -->
<br/>
<!-- $$$rows -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">rows</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the number of rows in the grid.</p>
<p>If the grid does not have enough items to fill the specified number of rows, some rows will be of zero width.</p>
<!-- @@@rows -->
<br/>
<!-- $$$spacing -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">spacing</span> : <span class="type">qreal</span></p></td></tr></table><p>The spacing is the amount in pixels left empty between adjacent items. The amount of spacing applied will be the same in the horizontal and vertical directions. The default spacing is 0.</p>
<p>The below example places a Grid containing a red, a blue and a green rectangle on a gray background. The area the grid positioner occupies is colored white. The positioner on the left has the no spacing (the default), and the positioner on the right has a spacing of 6.</p>
<p><img src="https://developer.ubuntu.com/static/devportal_uploaded/3bbce412-9af7-459f-960e-fde04bcd655d-../QtQuick.Grid/images/qml-grid-no-spacing.png" alt="" /> <img src="https://developer.ubuntu.com/static/devportal_uploaded/560f05ca-c715-4225-8574-c398a9641090-../QtQuick.Grid/images/qml-grid-spacing.png" alt="" /></p>
<p><b>See also </b><a href="#rows-prop">rows</a> and <a href="#columns-prop">columns</a>.</p>
<!-- @@@spacing -->
<br/>
<!-- $$$verticalItemAlignment -->
<table class="qmlname"><tr valign="top"><td class="tblQmlPropNode"><p><span class="name">verticalItemAlignment</span> : <span class="type">enumeration</span></p></td></tr></table><p>Sets the horizontal and vertical alignment of items in the Grid. By default, the items are vertically aligned to the top. Horizontal alignment follows the <a href="#layoutDirection-prop">layoutDirection</a> of the Grid, for example when having a <a href="#layoutDirection-prop">layoutDirection</a> from LeftToRight, the items will be aligned on the left.</p>
<p>The valid values for <tt>horizontalItemAlignment</tt> are, <tt>Grid.AlignLeft</tt>, <tt>Grid.AlignRight</tt> and <tt>Grid.AlignHCenter</tt>.</p>
<p>The valid values for <tt>verticalItemAlignment</tt> are <tt>Grid.AlignTop</tt>, <tt>Grid.AlignBottom</tt> and <tt>Grid.AlignVCenter</tt>.</p>
<p>The below images show three examples of how to align items.</p>
<table class="generic">
<tr valign="top"><td ></td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/3e9c10d0-0984-44d4-868e-c73567481963-../QtQuick.Grid/images/gridLayout_aligntopleft.png" alt="" /></td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/3b3c7978-bfe3-434e-b981-c5b4501b61bf-../QtQuick.Grid/images/gridLayout_aligntop.png" alt="" /></td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/ea2c0b97-f9d5-4e76-a424-c343e985620c-../QtQuick.Grid/images/gridLayout_aligncenter.png" alt="" /></td></tr>
<tr valign="top"><td >Horizontal alignment</td><td >AlignLeft</td><td >AlignHCenter</td><td >AlignHCenter</td></tr>
<tr valign="top"><td >Vertical alignment</td><td >AlignTop</td><td >AlignTop</td><td >AlignVCenter</td></tr>
</table>
<p>When mirroring the layout using either the attached property <a href="QtQuick.LayoutMirroring.md#enabled-prop">LayoutMirroring::enabled</a> or by setting the <a href="#layoutDirection-prop">layoutDirection</a>, the horizontal alignment of items will be mirrored as well. However, the property <tt>horizontalItemAlignment</tt> will remain unchanged. To query the effective horizontal alignment of items, use the read-only property <tt>effectiveHorizontalItemAlignment</tt>.</p>
<p><b>See also </b><a href="#layoutDirection-prop">Grid::layoutDirection</a> and <a href="QtQuick.LayoutMirroring.md">LayoutMirroring</a>.</p>
<!-- @@@verticalItemAlignment -->
<br/>
