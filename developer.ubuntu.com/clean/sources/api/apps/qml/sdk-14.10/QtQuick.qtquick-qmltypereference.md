---
Title: QtQuick.qtquick-qmltypereference
---
        
Qt Quick QML Types
==================

<span class="subtitle"></span>
<span id="details"></span>
The `QtQuick` QML module provides a variety of QML types for creating user interfaces and applications with QML. This page lists every QML type provided by this module, organized according to category and purpose.

<span id="importing-qtquick"></span><span id="importing-qt-quick"></span>
Importing Qt Quick
------------------

The types provided by the [Qt Quick](../QtQuick.qtquick-index.md) module are only available in a QML document if that document imports the `QtQuick` namespace.

The current version of the `QtQuick` module is version 2.2, and thus it may be imported via the following statement:

``` qml
import QtQuick 2.2
```

See the [Qt Quick](../QtQuick.qtquick-index.md) module documentation for more information about the concepts which are central to `QtQuick`.

<span id="submodules"></span>
### Submodules

Qt Quick includes several submodules which contain additional types.

-   XML List Model - contains types for creating models from XML data
-   Local Storage - a submodule containing a JavaScript interface for an SQLite database
-   Particles - provides a particle system for QML applications
-   Window - contains types for creating top-level windows and accessing screen information
-   Dialogs - contains types for creating and interacting with system dialogs
-   Controls - provides a set of reusable UI components
-   Layouts - contains types that are used to arrange items in the user interface

<span id="basic-types"></span><span id="basic-types"></span>
Basic Types
-----------

There are a number of basic types that are supported by default in the QML language.

In addition, the `QtQuick` module provides the following basic types:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>color</p></td>
<td><p>an ARGB color value. The color type refers to an ARGB color value. It can be specified in a number of ways:</p></td>
</tr>
<tr class="even">
<td><p>font</p></td>
<td><p>a font value with the properties of QFont. The font type refers to a font value with the properties of QFont.</p></td>
</tr>
<tr class="odd">
<td><p>vector2d</p></td>
<td><p>A vector2d type has x and y attributes.</p></td>
</tr>
<tr class="even">
<td><p>vector3d</p></td>
<td><p>a value with x, y, and z attributes.</p></td>
</tr>
<tr class="odd">
<td><p>vector4d</p></td>
<td><p>A vector4d type has x, y, z and w attributes.</p></td>
</tr>
<tr class="even">
<td><p>quaternion</p></td>
<td><p>A quaternion type has scalar, x, y, and z attributes.</p></td>
</tr>
<tr class="odd">
<td><p>matrix4x4</p></td>
<td><p>A matrix4x4 type is a 4-row and 4-column matrix</p></td>
</tr>
</tbody>
</table>

<span id="object-types"></span>
<span id="object-types"></span>
Object Types
------------

All of the object types provided by `QtQuick` are based on the [Item](../QtQuick.Item.md) type, which itself derives from QtObject. QML object types provided by the Qt QML module (such as QtObject and Component) are also available when you import `QtQuick`. <span id="visual-types"></span>

<span id="visual-types"></span>
### Visual Types

-   [Item](../QtQuick.Item.md) - Basic visual object type inherited by visual object types (visual items)
-   [Rectangle](../QtQuick.Rectangle.md) - A rectangle type
-   [Image](../QtQuick.Image.md) - For incorporating bitmaps into a scene
-   [BorderImage](../QtQuick.BorderImage.md) - Allows the use of images as borders
-   [AnimatedImage](../QtQuick.AnimatedImage.md) - For playing animations stored as an animated GIF
-   [AnimatedSprite](../QtQuick.AnimatedSprite.md) - For playing animations stored as a series of frames
-   [SpriteSequence](../QtQuick.SpriteSequence.md) - For playing and transitioning between multiple animations stored as a series of frames
-   [Text](../QtQuick.Text.md) - For inserting formatted text into a scene
-   [Window](../QtQuick.Window.Window.md) - Provides a top-level window

Visual Item Utility

-   [Accessible](../QtQuick.Accessible.md) - Attached property to make components accessible
-   [Gradient](../QtQuick.Gradient.md) - For defining a color gradient
-   [GradientStop](../QtQuick.GradientStop.md) - Used to define a color within a [Gradient](../QtQuick.Gradient.md)
-   [SystemPalette](../QtQuick.SystemPalette.md) - Provides access to the Qt palettes
-   [Screen](../QtQuick.Window.Screen.md) - Provides information about the screen on which an [Item](../QtQuick.Item.md) is displayed
-   [Sprite](../QtQuick.Sprite.md) - Specifies sprite animations for other Items to display
-   [FontLoader](../QtQuick.FontLoader.md) - Loads fonts by name or URL

Visual Item Generation

-   [Repeater](../QtQuick.Repeater.md) - Uses a model to create multiple Item instances
-   [Loader](../QtQuick.Loader.md) - Eases on-demand loading of Items

Visual Item Transformations

-   [Transform](../QtQuick.Transform.md) - Allows specification of advanced transformations on Items
-   [Scale](../QtQuick.Scale.md) - Assigns item scaling behaviors
-   [Rotation](../QtQuick.Rotation.md) - Assigns item rotation behaviors
-   [Translate](../QtQuick.Translate.md) - Assigns item translation behaviors

<span id="user-input"></span><span id="user-input"></span>
### User Input

-   [MouseArea](../QtQuick.MouseArea.md) - Sets up an area for mouse interaction
-   [Keys](../QtQuick.Keys.md) - Provides components with attached properties to handle key input.
-   [KeyNavigation](../QtQuick.KeyNavigation.md) - Supports key navigation by arrow keys
-   [FocusScope](../QtQuick.FocusScope.md) - Mediates keyboard focus changes
-   [Flickable](../QtQuick.Flickable.md) - Provides a surface that can be "flicked"
-   [PinchArea](../QtQuick.PinchArea.md) - Enables simple pinch gesture handling
-   [MultiPointTouchArea](../QtQuick.MultiPointTouchArea.md) - Enables handling of multiple touch points
-   [Drag](../QtQuick.Drag.md) - For specifying drag and drop events for visual items
-   [DropArea](../QtQuick.DropArea.md) - For specifying drag and drop event handling in an area
-   [TextInput](../QtQuick.TextInput.md) - Captures user key input
-   [TextEdit](../QtQuick.TextEdit.md) - Displays multiple lines of editable formatted text

Text Input Utility

-   [IntValidator](../QtQuick.IntValidator.md) - Validates values as integers
-   [DoubleValidator](../QtQuick.DoubleValidator.md) - Validates real values
-   [RegExpValidator](../QtQuick.RegExpValidator.md) - Validator for string regular expressions

User Input Events

-   [TouchPoint](../QtQuick.TouchPoint.md) - Describes a touch point in a [MultiPointTouchArea](../QtQuick.MultiPointTouchArea.md)
-   [PinchEvent](../QtQuick.PinchEvent.md) - Specifies information about a pinch event
-   [WheelEvent](../QtQuick.WheelEvent.md) - Provides information about a mouse wheel event
-   [MouseEvent](../QtQuick.MouseEvent.md) - Provides information about a mouse click event
-   [KeyEvent](../QtQuick.KeyEvent.md) - Provides information about a key press event
-   [DragEvent](../QtQuick.DragEvent.md) -Provides information about a drag event

<span id="positioning"></span><span id="positioning"></span>
### Positioning

-   [Positioner](../QtQuick.Positioner.md) - Attached property which provides information about where an Item has been positioned
-   [Column](../QtQuick.Column.md) - Arranges its children vertically
-   [Row](../QtQuick.Row.md) - Arranges its children horizontally
-   [Grid](../QtQuick.Grid.md) - Positions its children in a grid
-   [Flow](../QtQuick.Flow.md) - Positions its children with wrapping support
-   [LayoutMirroring](../QtQuick.LayoutMirroring.md) - Attached property used to mirror layout behavior

<span id="states-transitions-and-animations"></span><span id="states-transitions-and-animations"></span>
### States, Transitions and Animations

States

-   [State](../QtQuick.State.md) - Defines sets of configurations of objects and properties
-   [PropertyChanges](../QtQuick.PropertyChanges.md) - Describes property changes within a state
-   [StateGroup](../QtQuick.StateGroup.md) - Contains a set of states and state transitions
-   [StateChangeScript](../QtQuick.StateChangeScript.md) - Allows script binding in a state
-   [ParentChange](../QtQuick.ParentChange.md) - Re-parent an Item in a state change
-   [AnchorChanges](../QtQuick.AnchorChanges.md) - Change the anchors of an item in a state

Transitions and Animations

-   [Transition](../QtQuick.Transition.md) - Animates transitions during state changes
-   [ViewTransition](../QtQuick.ViewTransition.md) - Specifies items under transition in a view
-   [SequentialAnimation](../QtQuick.SequentialAnimation.md) - Runs animations sequentially
-   [ParallelAnimation](../QtQuick.ParallelAnimation.md) - Runs animations in parallel
-   [Behavior](../QtQuick.Behavior.md) - Specifies a default animation for property changes
-   [PropertyAction](../QtQuick.PropertyAction.md) - Sets immediate property changes during animation
-   [PauseAnimation](../QtQuick.PauseAnimation.md) - Introduces a pause in an animation
-   [SmoothedAnimation](../QtQuick.SmoothedAnimation.md) - Allows a property to smoothly track a value
-   [SpringAnimation](../QtQuick.SpringAnimation.md) - Allows a property to track a value in a spring-like motion
-   [ScriptAction](../QtQuick.ScriptAction.md) - Runs scripts during an animation

Type-specific Animations

-   [PropertyAnimation](../QtQuick.PropertyAnimation.md) - Animates property changes
-   [NumberAnimation](../QtQuick.NumberAnimation.md) - Animates properties of type qreal
-   [Vector3dAnimation](../QtQuick.Vector3dAnimation.md) - Animates properties of type QVector3d
-   [ColorAnimation](../QtQuick.ColorAnimation.md) - Animates color changes
-   [RotationAnimation](../QtQuick.RotationAnimation.md) - Animates rotations
-   [ParentAnimation](../QtQuick.ParentAnimation.md) - Animates parent changes
-   [AnchorAnimation](../QtQuick.AnchorAnimation.md) - Animates anchor changes
-   [PathAnimation](../QtQuick.PathAnimation.md) - Animates position along a path
-   [XAnimator](../QtQuick.XAnimator.md) - Animates x position asynchronously
-   [YAnimator](../QtQuick.YAnimator.md) - Animates y position asynchronously
-   [ScaleAnimator](../QtQuick.ScaleAnimator.md) - Animates scale asynchronously
-   [RotationAnimator](../QtQuick.RotationAnimator.md) - Animates rotation asynchronously
-   [OpacityAnimator](../QtQuick.OpacityAnimator.md) - Animates opacity asynchronously
-   [UniformAnimator](../QtQuick.UniformAnimator.md) - Animates a [ShaderEffect](../QtQuick.ShaderEffect.md) uniform asynchronously

Lower-level Animation Types

-   [PathInterpolator](../QtQuick.PathInterpolator.md) - Allows manual animation along a path
-   [AnimationController](../QtQuick.AnimationController.md) - Allows manual control of animation progress

Animation paths

-   [Path](../QtQuick.Path.md) - Defines a path used by [PathView](../QtQuick.PathView.md)
-   [PathLine](../QtQuick.PathLine.md) - Defines a line in [Path](../QtQuick.Path.md)
-   [PathQuad](../QtQuick.PathQuad.md) - Defines a quadratic Bezier curve in a [Path](../QtQuick.Path.md)
-   [PathCubic](../QtQuick.PathCubic.md) - Defines a cubic Bezier curve in a [Path](../QtQuick.Path.md)
-   [PathArc](../QtQuick.PathArc.md) - Defines an arc in a [Path](../QtQuick.Path.md)
-   [PathCurve](../QtQuick.PathCurve.md) - Defines a point on a Catmull-Rom curve in a [Path](../QtQuick.Path.md)
-   [PathSvg](../QtQuick.PathSvg.md) - Defines a sub-path specified as a SVG path data string in a [Path](../QtQuick.Path.md)
-   [PathAttribute](../QtQuick.PathAttribute.md) - Allows the setting of attributes along a [Path](../QtQuick.Path.md)
-   [PathPercent](../QtQuick.PathPercent.md) - Modifies the item distribution along a [Path](../QtQuick.Path.md)

<span id="model-view-types-and-data-storage-and-access"></span><span id="model-view-types-and-data-storage-and-access"></span>
### Model/View Types And Data Storage And Access

QML Lists and Models

The Qt QML Models submodule provides the types for structuring data with models and lists.

-   [ListModel](../QtQuick.qtquick-modelviewsdata-modelview.md#listmodel) - Defines a list of data
-   ListElement - Defines a data item in a [ListModel](../QtQuick.qtquick-modelviewsdata-modelview.md#listmodel)

These QML types are part of Qt Quick for backwards compatibility, but for newer applications, Qt QML Models provides the same functionality.

-   [VisualItemModel](../QtQuick.qtquick-modelviewsdata-modelview.md#visualitemmodel) - Contains items that already defines its own visual delegate
-   VisualDataModel - Encapsulates a model and a delegate
-   VisualDataGroup - Encapsulates a filtered set of visual data items

XML Lists

-   [XmlListModel](../QtQuick.XmlListModel.XmlListModel.md) - Specifies a model using XPath expressions
-   [XmlRole](../QtQuick.XmlListModel.XmlRole.md) - Specifies a role for an [XmlListModel](../QtQuick.XmlListModel.XmlListModel.md)

Views

-   [ListView](../QtQuick.ListView.md) - Provides a list visualization of a model
-   [GridView](../QtQuick.GridView.md) - Provides a grid visualization of a model
-   [PathView](../QtQuick.PathView.md) - Visualizes a model's contents along a path. See [Path](../QtQuick.Path.md) for more information.
-   Package - Collection that enables sharing of items within different views

Data Storage

-   QtQuick.LocalStorage 2 - Singleton type providing simplified SQL access

<span id="graphical-effects"></span><span id="graphical-effects"></span>
### Graphical Effects

-   [Flipable](../QtQuick.Flipable.md) - Provides a surface that produces "flipping" effects
-   [ShaderEffect](../QtQuick.ShaderEffect.md) - Allows GLSL shaders to be used as graphical effects
-   [ShaderEffectSource](../QtQuick.ShaderEffectSource.md) - Usable as a texture in [ShaderEffect](../QtQuick.ShaderEffect.md)
-   [GridMesh](../QtQuick.GridMesh.md) - Generates a grid mesh of vertices for use by [ShaderEffect](../QtQuick.ShaderEffect.md)
-   The QtQuick.Particles 2 module provides a set of Particle System types for Qt Quick 2

<span id="convenience-types"></span><span id="convenience-types"></span>
### Convenience Types

-   Connections - Explicitly connects signals and signal handlers
-   Binding - Binds any value to any property
-   Timer - Provides timed triggers
-   WorkerScript - Enables the use of threads in a Qt Quick application

<span id="canvas-similar-to-html5-canvas"></span><span id="canvas-similar-to-html5-canvas"></span>
### Canvas (similar to HTML5 canvas)

-   [Canvas](../QtQuick.Canvas.md) - Provides a 2D canvas type similar to the HTML5 canvas
-   [Context2D](../QtQuick.Context2D.md) - Provides 2D context for shapes on a Canvas item
-   [CanvasGradient](../QtQuick.CanvasGradient.md) - Allows specification of a gradient on a Canvas
-   [CanvasPixelArray](../QtQuick.CanvasPixelArray.md) - Allows specification of a pixel array for use in a Canvas
-   [CanvasImageData](../QtQuick.CanvasImageData.md) - Allows specification of image data for use in a Canvas
-   [TextMetrics](../QtQuick.TextMetrics.md) - Provides text and font measurement data for use in a Canvas

<span id="qttest-types"></span><span id="qttest-types"></span>
### QtTest Types

-   [TestCase](../QtTest.TestCase.md) - Represents a unit test case
-   [SignalSpy](../QtTest.SignalSpy.md) - Enables introspection of signal emission

