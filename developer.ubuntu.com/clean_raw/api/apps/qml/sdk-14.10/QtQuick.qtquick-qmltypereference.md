---
Title: QtQuick.qtquick-qmltypereference
---

# QtQuick.qtquick-qmltypereference

<span class="subtitle"></span>
<!-- $$$qtquick-qmltypereference.html-description -->
<p>The <tt>QtQuick</tt> QML module provides a variety of QML types for creating user interfaces and applications with QML. This page lists every QML type provided by this module, organized according to category and purpose.</p>
<h2>Importing Qt Quick</h2>
<p>The types provided by the <a href="QtQuick.qtquick-index.md">Qt Quick</a> module are only available in a QML document if that document imports the <tt>QtQuick</tt> namespace.</p>
<p>The current version of the <tt>QtQuick</tt> module is version 2.2, and thus it may be imported via the following statement:</p>
<pre class="qml">import QtQuick 2.2</pre>
<p>See the <a href="QtQuick.qtquick-index.md">Qt Quick</a> module documentation for more information about the concepts which are central to <tt>QtQuick</tt>.</p>
<h3>Submodules</h3>
<p>Qt Quick includes several submodules which contain additional types.</p>
<ul>
<li>XML List Model - contains types for creating models from XML data</li>
<li>Local Storage - a submodule containing a JavaScript interface for an SQLite database</li>
<li>Particles - provides a particle system for QML applications</li>
<li>Window - contains types for creating top-level windows and accessing screen information</li>
<li>Dialogs - contains types for creating and interacting with system dialogs</li>
<li>Controls - provides a set of reusable UI components</li>
<li>Layouts - contains types that are used to arrange items in the user interface</li>
</ul>
<h2>Basic Types</h2>
<p>There are a number of basic types that are supported by default in the QML language.</p>
<p>In addition, the <tt>QtQuick</tt> module provides the following basic types: <table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p>color</p></td><td class="tblDescr"><p>an ARGB color value.  The color type refers to an ARGB color value. It can be specified in a number of ways:</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>font</p></td><td class="tblDescr"><p>a font value with the properties of QFont.  The font type refers to a font value with the properties of QFont.</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>vector2d</p></td><td class="tblDescr"><p>A vector2d type has x and y attributes.</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>vector3d</p></td><td class="tblDescr"><p>a value with x, y, and z attributes.</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>vector4d</p></td><td class="tblDescr"><p>A vector4d type has x, y, z and w attributes.</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>quaternion</p></td><td class="tblDescr"><p>A quaternion type has scalar, x, y, and z attributes.</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>matrix4x4</p></td><td class="tblDescr"><p>A matrix4x4 type is a 4-row and 4-column matrix</p></td></tr>
</table>
</p>
<h2>Object Types</h2>
<p>All of the object types provided by <tt>QtQuick</tt> are based on the <a href="QtQuick.Item.md">Item</a> type, which itself derives from QtObject. QML object types provided by the Qt QML module (such as QtObject and Component) are also available when you import <tt>QtQuick</tt>. </p>
<h3>Visual Types</h3>
<ul>
<li><a href="QtQuick.Item.md">Item</a> - Basic visual object type inherited by visual object types (visual items)</li>
<li><a href="QtQuick.Rectangle.md">Rectangle</a> - A rectangle type</li>
<li><a href="QtQuick.Image.md">Image</a> - For incorporating bitmaps into a scene</li>
<li><a href="QtQuick.BorderImage.md">BorderImage</a> - Allows the use of images as borders</li>
<li><a href="QtQuick.AnimatedImage.md">AnimatedImage</a> - For playing animations stored as an animated GIF</li>
<li><a href="QtQuick.AnimatedSprite.md">AnimatedSprite</a> - For playing animations stored as a series of frames</li>
<li><a href="QtQuick.SpriteSequence.md">SpriteSequence</a> - For playing and transitioning between multiple animations stored as a series of frames</li>
<li><a href="QtQuick.Text.md">Text</a> - For inserting formatted text into a scene</li>
<li><a href="QtQuick.Window.Window.md">Window</a> - Provides a top-level window</li>
</ul>
<p>Visual Item Utility</p>
<ul>
<li><a href="QtQuick.Accessible.md">Accessible</a> - Attached property to make components accessible</li>
<li><a href="QtQuick.Gradient.md">Gradient</a> - For defining a color gradient</li>
<li><a href="QtQuick.GradientStop.md">GradientStop</a> - Used to define a color within a <a href="QtQuick.Gradient.md">Gradient</a></li>
<li><a href="QtQuick.SystemPalette.md">SystemPalette</a> - Provides access to the Qt palettes</li>
<li><a href="QtQuick.Window.Screen.md">Screen</a> - Provides information about the screen on which an <a href="QtQuick.Item.md">Item</a> is displayed</li>
<li><a href="QtQuick.Sprite.md">Sprite</a> - Specifies sprite animations for other Items to display</li>
<li><a href="QtQuick.FontLoader.md">FontLoader</a> - Loads fonts by name or URL</li>
</ul>
<p>Visual Item Generation</p>
<ul>
<li><a href="QtQuick.Repeater.md">Repeater</a> - Uses a model to create multiple Item instances</li>
<li><a href="QtQuick.Loader.md">Loader</a> - Eases on-demand loading of Items</li>
</ul>
<p>Visual Item Transformations</p>
<ul>
<li><a href="QtQuick.Transform.md">Transform</a> - Allows specification of advanced transformations on Items</li>
<li><a href="QtQuick.Scale.md">Scale</a> - Assigns item scaling behaviors</li>
<li><a href="QtQuick.Rotation.md">Rotation</a> - Assigns item rotation behaviors</li>
<li><a href="QtQuick.Translate.md">Translate</a> - Assigns item translation behaviors</li>
</ul>
<h3>User Input</h3>
<ul>
<li><a href="QtQuick.MouseArea.md">MouseArea</a> - Sets up an area for mouse interaction</li>
<li><a href="QtQuick.Keys.md">Keys</a> - Provides components with attached properties to handle key input.</li>
<li><a href="QtQuick.KeyNavigation.md">KeyNavigation</a> - Supports key navigation by arrow keys</li>
<li><a href="QtQuick.FocusScope.md">FocusScope</a> - Mediates keyboard focus changes</li>
<li><a href="QtQuick.Flickable.md">Flickable</a> - Provides a surface that can be &quot;flicked&quot;</li>
<li><a href="QtQuick.PinchArea.md">PinchArea</a> - Enables simple pinch gesture handling</li>
<li><a href="QtQuick.MultiPointTouchArea.md">MultiPointTouchArea</a> - Enables handling of multiple touch points</li>
<li><a href="QtQuick.Drag.md">Drag</a> - For specifying drag and drop events for visual items</li>
<li><a href="QtQuick.DropArea.md">DropArea</a> - For specifying drag and drop event handling in an area</li>
<li><a href="QtQuick.TextInput.md">TextInput</a> - Captures user key input</li>
<li><a href="QtQuick.TextEdit.md">TextEdit</a> - Displays multiple lines of editable formatted text</li>
</ul>
<p>Text Input Utility</p>
<ul>
<li><a href="QtQuick.IntValidator.md">IntValidator</a> - Validates values as integers</li>
<li><a href="QtQuick.DoubleValidator.md">DoubleValidator</a> - Validates real values</li>
<li><a href="QtQuick.RegExpValidator.md">RegExpValidator</a> - Validator for string regular expressions</li>
</ul>
<p>User Input Events</p>
<ul>
<li><a href="QtQuick.TouchPoint.md">TouchPoint</a> - Describes a touch point in a <a href="QtQuick.MultiPointTouchArea.md">MultiPointTouchArea</a></li>
<li><a href="QtQuick.PinchEvent.md">PinchEvent</a> - Specifies information about a pinch event</li>
<li><a href="QtQuick.WheelEvent.md">WheelEvent</a> - Provides information about a mouse wheel event</li>
<li><a href="QtQuick.MouseEvent.md">MouseEvent</a> - Provides information about a mouse click event</li>
<li><a href="QtQuick.KeyEvent.md">KeyEvent</a> - Provides information about a key press event</li>
<li><a href="QtQuick.DragEvent.md">DragEvent</a> -Provides information about a drag event</li>
</ul>
<h3>Positioning</h3>
<ul>
<li><a href="QtQuick.Positioner.md">Positioner</a> - Attached property which provides information about where an Item has been positioned</li>
<li><a href="QtQuick.Column.md">Column</a> - Arranges its children vertically</li>
<li><a href="QtQuick.Row.md">Row</a> - Arranges its children horizontally</li>
<li><a href="QtQuick.Grid.md">Grid</a> - Positions its children in a grid</li>
<li><a href="QtQuick.Flow.md">Flow</a> - Positions its children with wrapping support</li>
<li><a href="QtQuick.LayoutMirroring.md">LayoutMirroring</a> - Attached property used to mirror layout behavior</li>
</ul>
<h3>States, Transitions and Animations</h3>
<p>States</p>
<ul>
<li><a href="QtQuick.State.md">State</a> - Defines sets of configurations of objects and properties</li>
<li><a href="QtQuick.PropertyChanges.md">PropertyChanges</a> - Describes property changes within a state</li>
<li><a href="QtQuick.StateGroup.md">StateGroup</a> - Contains a set of states and state transitions</li>
<li><a href="QtQuick.StateChangeScript.md">StateChangeScript</a> - Allows script binding in a state</li>
<li><a href="QtQuick.ParentChange.md">ParentChange</a> - Re-parent an Item in a state change</li>
<li><a href="QtQuick.AnchorChanges.md">AnchorChanges</a> - Change the anchors of an item in a state</li>
</ul>
<p>Transitions and Animations</p>
<ul>
<li><a href="QtQuick.Transition.md">Transition</a> - Animates transitions during state changes</li>
<li><a href="QtQuick.ViewTransition.md">ViewTransition</a> - Specifies items under transition in a view</li>
<li><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a> - Runs animations sequentially</li>
<li><a href="QtQuick.ParallelAnimation.md">ParallelAnimation</a> - Runs animations in parallel</li>
<li><a href="QtQuick.Behavior.md">Behavior</a> - Specifies a default animation for property changes</li>
<li><a href="QtQuick.PropertyAction.md">PropertyAction</a> - Sets immediate property changes during animation</li>
<li><a href="QtQuick.PauseAnimation.md">PauseAnimation</a> - Introduces a pause in an animation</li>
<li><a href="QtQuick.SmoothedAnimation.md">SmoothedAnimation</a> - Allows a property to smoothly track a value</li>
<li><a href="QtQuick.SpringAnimation.md">SpringAnimation</a> - Allows a property to track a value in a spring-like motion</li>
<li><a href="QtQuick.ScriptAction.md">ScriptAction</a> - Runs scripts during an animation</li>
</ul>
<p>Type-specific Animations</p>
<ul>
<li><a href="QtQuick.PropertyAnimation.md">PropertyAnimation</a> - Animates property changes</li>
<li><a href="QtQuick.NumberAnimation.md">NumberAnimation</a> - Animates properties of type qreal</li>
<li><a href="QtQuick.Vector3dAnimation.md">Vector3dAnimation</a> - Animates properties of type QVector3d</li>
<li><a href="QtQuick.ColorAnimation.md">ColorAnimation</a> - Animates color changes</li>
<li><a href="QtQuick.RotationAnimation.md">RotationAnimation</a> - Animates rotations</li>
<li><a href="QtQuick.ParentAnimation.md">ParentAnimation</a> - Animates parent changes</li>
<li><a href="QtQuick.AnchorAnimation.md">AnchorAnimation</a> - Animates anchor changes</li>
<li><a href="QtQuick.PathAnimation.md">PathAnimation</a> - Animates position along a path</li>
<li><a href="QtQuick.XAnimator.md">XAnimator</a> - Animates x position asynchronously</li>
<li><a href="QtQuick.YAnimator.md">YAnimator</a> - Animates y position asynchronously</li>
<li><a href="QtQuick.ScaleAnimator.md">ScaleAnimator</a> - Animates scale asynchronously</li>
<li><a href="QtQuick.RotationAnimator.md">RotationAnimator</a> - Animates rotation asynchronously</li>
<li><a href="QtQuick.OpacityAnimator.md">OpacityAnimator</a> - Animates opacity asynchronously</li>
<li><a href="QtQuick.UniformAnimator.md">UniformAnimator</a> - Animates a <a href="QtQuick.ShaderEffect.md">ShaderEffect</a> uniform asynchronously</li>
</ul>
<p>Lower-level Animation Types</p>
<ul>
<li><a href="QtQuick.PathInterpolator.md">PathInterpolator</a> - Allows manual animation along a path</li>
<li><a href="QtQuick.AnimationController.md">AnimationController</a> - Allows manual control of animation progress</li>
</ul>
<p>Animation paths</p>
<ul>
<li><a href="QtQuick.Path.md">Path</a> - Defines a path used by <a href="QtQuick.PathView.md">PathView</a></li>
<li><a href="QtQuick.PathLine.md">PathLine</a> - Defines a line in <a href="QtQuick.Path.md">Path</a></li>
<li><a href="QtQuick.PathQuad.md">PathQuad</a> - Defines a quadratic Bezier curve in a <a href="QtQuick.Path.md">Path</a></li>
<li><a href="QtQuick.PathCubic.md">PathCubic</a> - Defines a cubic Bezier curve in a <a href="QtQuick.Path.md">Path</a></li>
<li><a href="QtQuick.PathArc.md">PathArc</a> - Defines an arc in a <a href="QtQuick.Path.md">Path</a></li>
<li><a href="QtQuick.PathCurve.md">PathCurve</a> - Defines a point on a Catmull-Rom curve in a <a href="QtQuick.Path.md">Path</a></li>
<li><a href="QtQuick.PathSvg.md">PathSvg</a> - Defines a sub-path specified as a SVG path data string in a <a href="QtQuick.Path.md">Path</a></li>
<li><a href="QtQuick.PathAttribute.md">PathAttribute</a> - Allows the setting of attributes along a <a href="QtQuick.Path.md">Path</a></li>
<li><a href="QtQuick.PathPercent.md">PathPercent</a> - Modifies the item distribution along a <a href="QtQuick.Path.md">Path</a></li>
</ul>
<h3>Model/View Types And Data Storage And Access</h3>
<p>QML Lists and Models</p>
<p>The Qt QML Models submodule provides the types for structuring data with models and lists.</p>
<ul>
<li><a href="QtQuick.qtquick-modelviewsdata-modelview.md#listmodel">ListModel</a> - Defines a list of data</li>
<li>ListElement - Defines a data item in a <a href="QtQuick.qtquick-modelviewsdata-modelview.md#listmodel">ListModel</a></li>
</ul>
<p>These QML types are part of Qt Quick for backwards compatibility, but for newer applications, Qt QML Models provides the same functionality.</p>
<ul>
<li><a href="QtQuick.qtquick-modelviewsdata-modelview.md#visualitemmodel">VisualItemModel</a> - Contains items that already defines its own visual delegate</li>
<li>VisualDataModel - Encapsulates a model and a delegate</li>
<li>VisualDataGroup - Encapsulates a filtered set of visual data items</li>
</ul>
<p>XML Lists</p>
<ul>
<li><a href="QtQuick.XmlListModel.XmlListModel.md">XmlListModel</a> - Specifies a model using XPath expressions</li>
<li><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a> - Specifies a role for an <a href="QtQuick.XmlListModel.XmlListModel.md">XmlListModel</a></li>
</ul>
<p>Views</p>
<ul>
<li><a href="QtQuick.ListView.md">ListView</a> - Provides a list visualization of a model</li>
<li><a href="QtQuick.GridView.md">GridView</a> - Provides a grid visualization of a model</li>
<li><a href="QtQuick.PathView.md">PathView</a> - Visualizes a model's contents along a path. See <a href="QtQuick.Path.md">Path</a> for more information.</li>
<li>Package - Collection that enables sharing of items within different views</li>
</ul>
<p>Data Storage</p>
<ul>
<li>QtQuick.LocalStorage 2 - Singleton type providing simplified SQL access</li>
</ul>
<h3>Graphical Effects</h3>
<ul>
<li><a href="QtQuick.Flipable.md">Flipable</a> - Provides a surface that produces &quot;flipping&quot; effects</li>
<li><a href="QtQuick.ShaderEffect.md">ShaderEffect</a> - Allows GLSL shaders to be used as graphical effects</li>
<li><a href="QtQuick.ShaderEffectSource.md">ShaderEffectSource</a> - Usable as a texture in <a href="QtQuick.ShaderEffect.md">ShaderEffect</a></li>
<li><a href="QtQuick.GridMesh.md">GridMesh</a> - Generates a grid mesh of vertices for use by <a href="QtQuick.ShaderEffect.md">ShaderEffect</a></li>
<li>The QtQuick.Particles 2 module provides a set of Particle System types for Qt Quick 2</li>
</ul>
<h3>Convenience Types</h3>
<ul>
<li>Connections - Explicitly connects signals and signal handlers</li>
<li>Binding - Binds any value to any property</li>
<li>Timer - Provides timed triggers</li>
<li>WorkerScript - Enables the use of threads in a Qt Quick application</li>
</ul>
<h3>Canvas (similar to HTML5 canvas)</h3>
<ul>
<li><a href="QtQuick.Canvas.md">Canvas</a> - Provides a 2D canvas type similar to the HTML5 canvas</li>
<li><a href="QtQuick.Context2D.md">Context2D</a> - Provides 2D context for shapes on a Canvas item</li>
<li><a href="QtQuick.CanvasGradient.md">CanvasGradient</a> - Allows specification of a gradient on a Canvas</li>
<li><a href="QtQuick.CanvasPixelArray.md">CanvasPixelArray</a> - Allows specification of a pixel array for use in a Canvas</li>
<li><a href="QtQuick.CanvasImageData.md">CanvasImageData</a> - Allows specification of image data for use in a Canvas</li>
<li><a href="QtQuick.TextMetrics.md">TextMetrics</a> - Provides text and font measurement data for use in a Canvas</li>
</ul>
<h3>QtTest Types</h3>
<ul>
<li><a href="QtTest.TestCase.md">TestCase</a> - Represents a unit test case</li>
<li><a href="QtTest.SignalSpy.md">SignalSpy</a> - Enables introspection of signal emission</li>
</ul>
<!-- @@@qtquick-qmltypereference.html -->
