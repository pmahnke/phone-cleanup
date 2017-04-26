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
-   <a href="../index.html" class="sub-nav-item">SDK 14.10</a> ›
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   Qt Quick QML Types

Qt Quick QML Types
==================

<span class="subtitle"></span>
<span id="details"></span>
The `QtQuick` QML module provides a variety of QML types for creating user interfaces and applications with QML. This page lists every QML type provided by this module, organized according to category and purpose.

<span id="importing-qtquick"></span><span id="importing-qt-quick"></span>
Importing Qt Quick
------------------

The types provided by the [Qt Quick](../QtQuick.qtquick-index/index.html) module are only available in a QML document if that document imports the `QtQuick` namespace.

The current version of the `QtQuick` module is version 2.2, and thus it may be imported via the following statement:

``` qml
import QtQuick 2.2
```

See the [Qt Quick](../QtQuick.qtquick-index/index.html) module documentation for more information about the concepts which are central to `QtQuick`.

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

All of the object types provided by `QtQuick` are based on the [Item](../QtQuick.Item/index.html) type, which itself derives from QtObject. QML object types provided by the Qt QML module (such as QtObject and Component) are also available when you import `QtQuick`. <span id="visual-types"></span>

<span id="visual-types"></span>
### Visual Types

-   [Item](../QtQuick.Item/index.html) - Basic visual object type inherited by visual object types (visual items)
-   [Rectangle](../QtQuick.Rectangle/index.html) - A rectangle type
-   [Image](../QtQuick.Image/index.html) - For incorporating bitmaps into a scene
-   [BorderImage](../QtQuick.BorderImage/index.html) - Allows the use of images as borders
-   [AnimatedImage](../QtQuick.AnimatedImage/index.html) - For playing animations stored as an animated GIF
-   [AnimatedSprite](../QtQuick.AnimatedSprite/index.html) - For playing animations stored as a series of frames
-   [SpriteSequence](../QtQuick.SpriteSequence/index.html) - For playing and transitioning between multiple animations stored as a series of frames
-   [Text](../QtQuick.Text/index.html) - For inserting formatted text into a scene
-   [Window](../QtQuick.Window.Window/index.html) - Provides a top-level window

Visual Item Utility

-   [Accessible](../QtQuick.Accessible/index.html) - Attached property to make components accessible
-   [Gradient](../QtQuick.Gradient/index.html) - For defining a color gradient
-   [GradientStop](../QtQuick.GradientStop/index.html) - Used to define a color within a [Gradient](../QtQuick.Gradient/index.html)
-   [SystemPalette](../QtQuick.SystemPalette/index.html) - Provides access to the Qt palettes
-   [Screen](../QtQuick.Window.Screen/index.html) - Provides information about the screen on which an [Item](../QtQuick.Item/index.html) is displayed
-   [Sprite](../QtQuick.Sprite/index.html) - Specifies sprite animations for other Items to display
-   [FontLoader](../QtQuick.FontLoader/index.html) - Loads fonts by name or URL

Visual Item Generation

-   [Repeater](../QtQuick.Repeater/index.html) - Uses a model to create multiple Item instances
-   [Loader](../QtQuick.Loader/index.html) - Eases on-demand loading of Items

Visual Item Transformations

-   [Transform](../QtQuick.Transform/index.html) - Allows specification of advanced transformations on Items
-   [Scale](../QtQuick.Scale/index.html) - Assigns item scaling behaviors
-   [Rotation](../QtQuick.Rotation/index.html) - Assigns item rotation behaviors
-   [Translate](../QtQuick.Translate/index.html) - Assigns item translation behaviors

<span id="user-input"></span><span id="user-input"></span>
### User Input

-   [MouseArea](../QtQuick.MouseArea/index.html) - Sets up an area for mouse interaction
-   [Keys](../QtQuick.Keys/index.html) - Provides components with attached properties to handle key input.
-   [KeyNavigation](../QtQuick.KeyNavigation/index.html) - Supports key navigation by arrow keys
-   [FocusScope](../QtQuick.FocusScope/index.html) - Mediates keyboard focus changes
-   [Flickable](../QtQuick.Flickable/index.html) - Provides a surface that can be "flicked"
-   [PinchArea](../QtQuick.PinchArea/index.html) - Enables simple pinch gesture handling
-   [MultiPointTouchArea](../QtQuick.MultiPointTouchArea/index.html) - Enables handling of multiple touch points
-   [Drag](../QtQuick.Drag/index.html) - For specifying drag and drop events for visual items
-   [DropArea](../QtQuick.DropArea/index.html) - For specifying drag and drop event handling in an area
-   [TextInput](../QtQuick.TextInput/index.html) - Captures user key input
-   [TextEdit](../QtQuick.TextEdit/index.html) - Displays multiple lines of editable formatted text

Text Input Utility

-   [IntValidator](../QtQuick.IntValidator/index.html) - Validates values as integers
-   [DoubleValidator](../QtQuick.DoubleValidator/index.html) - Validates real values
-   [RegExpValidator](../QtQuick.RegExpValidator/index.html) - Validator for string regular expressions

User Input Events

-   [TouchPoint](../QtQuick.TouchPoint/index.html) - Describes a touch point in a [MultiPointTouchArea](../QtQuick.MultiPointTouchArea/index.html)
-   [PinchEvent](../QtQuick.PinchEvent/index.html) - Specifies information about a pinch event
-   [WheelEvent](../QtQuick.WheelEvent/index.html) - Provides information about a mouse wheel event
-   [MouseEvent](../QtQuick.MouseEvent/index.html) - Provides information about a mouse click event
-   [KeyEvent](../QtQuick.KeyEvent/index.html) - Provides information about a key press event
-   [DragEvent](../QtQuick.DragEvent/index.html) -Provides information about a drag event

<span id="positioning"></span><span id="positioning"></span>
### Positioning

-   [Positioner](../QtQuick.Positioner/index.html) - Attached property which provides information about where an Item has been positioned
-   [Column](../QtQuick.Column/index.html) - Arranges its children vertically
-   [Row](../QtQuick.Row/index.html) - Arranges its children horizontally
-   [Grid](../QtQuick.Grid/index.html) - Positions its children in a grid
-   [Flow](../QtQuick.Flow/index.html) - Positions its children with wrapping support
-   [LayoutMirroring](../QtQuick.LayoutMirroring/index.html) - Attached property used to mirror layout behavior

<span id="states-transitions-and-animations"></span><span id="states-transitions-and-animations"></span>
### States, Transitions and Animations

States

-   [State](../QtQuick.State/index.html) - Defines sets of configurations of objects and properties
-   [PropertyChanges](../QtQuick.PropertyChanges/index.html) - Describes property changes within a state
-   [StateGroup](../QtQuick.StateGroup/index.html) - Contains a set of states and state transitions
-   [StateChangeScript](../QtQuick.StateChangeScript/index.html) - Allows script binding in a state
-   [ParentChange](../QtQuick.ParentChange/index.html) - Re-parent an Item in a state change
-   [AnchorChanges](../QtQuick.AnchorChanges/index.html) - Change the anchors of an item in a state

Transitions and Animations

-   [Transition](../QtQuick.Transition/index.html) - Animates transitions during state changes
-   [ViewTransition](../QtQuick.ViewTransition/index.html) - Specifies items under transition in a view
-   [SequentialAnimation](../QtQuick.SequentialAnimation/index.html) - Runs animations sequentially
-   [ParallelAnimation](../QtQuick.ParallelAnimation/index.html) - Runs animations in parallel
-   [Behavior](../QtQuick.Behavior/index.html) - Specifies a default animation for property changes
-   [PropertyAction](../QtQuick.PropertyAction/index.html) - Sets immediate property changes during animation
-   [PauseAnimation](../QtQuick.PauseAnimation/index.html) - Introduces a pause in an animation
-   [SmoothedAnimation](../QtQuick.SmoothedAnimation/index.html) - Allows a property to smoothly track a value
-   [SpringAnimation](../QtQuick.SpringAnimation/index.html) - Allows a property to track a value in a spring-like motion
-   [ScriptAction](../QtQuick.ScriptAction/index.html) - Runs scripts during an animation

Type-specific Animations

-   [PropertyAnimation](../QtQuick.PropertyAnimation/index.html) - Animates property changes
-   [NumberAnimation](../QtQuick.NumberAnimation/index.html) - Animates properties of type qreal
-   [Vector3dAnimation](../QtQuick.Vector3dAnimation/index.html) - Animates properties of type QVector3d
-   [ColorAnimation](../QtQuick.ColorAnimation/index.html) - Animates color changes
-   [RotationAnimation](../QtQuick.RotationAnimation/index.html) - Animates rotations
-   [ParentAnimation](../QtQuick.ParentAnimation/index.html) - Animates parent changes
-   [AnchorAnimation](../QtQuick.AnchorAnimation/index.html) - Animates anchor changes
-   [PathAnimation](../QtQuick.PathAnimation/index.html) - Animates position along a path
-   [XAnimator](../QtQuick.XAnimator/index.html) - Animates x position asynchronously
-   [YAnimator](../QtQuick.YAnimator/index.html) - Animates y position asynchronously
-   [ScaleAnimator](../QtQuick.ScaleAnimator/index.html) - Animates scale asynchronously
-   [RotationAnimator](../QtQuick.RotationAnimator/index.html) - Animates rotation asynchronously
-   [OpacityAnimator](../QtQuick.OpacityAnimator/index.html) - Animates opacity asynchronously
-   [UniformAnimator](../QtQuick.UniformAnimator/index.html) - Animates a [ShaderEffect](../QtQuick.ShaderEffect/index.html) uniform asynchronously

Lower-level Animation Types

-   [PathInterpolator](../QtQuick.PathInterpolator/index.html) - Allows manual animation along a path
-   [AnimationController](../QtQuick.AnimationController/index.html) - Allows manual control of animation progress

Animation paths

-   [Path](../QtQuick.Path/index.html) - Defines a path used by [PathView](../QtQuick.PathView/index.html)
-   [PathLine](../QtQuick.PathLine/index.html) - Defines a line in [Path](../QtQuick.Path/index.html)
-   [PathQuad](../QtQuick.PathQuad/index.html) - Defines a quadratic Bezier curve in a [Path](../QtQuick.Path/index.html)
-   [PathCubic](../QtQuick.PathCubic/index.html) - Defines a cubic Bezier curve in a [Path](../QtQuick.Path/index.html)
-   [PathArc](../QtQuick.PathArc/index.html) - Defines an arc in a [Path](../QtQuick.Path/index.html)
-   [PathCurve](../QtQuick.PathCurve/index.html) - Defines a point on a Catmull-Rom curve in a [Path](../QtQuick.Path/index.html)
-   [PathSvg](../QtQuick.PathSvg/index.html) - Defines a sub-path specified as a SVG path data string in a [Path](../QtQuick.Path/index.html)
-   [PathAttribute](../QtQuick.PathAttribute/index.html) - Allows the setting of attributes along a [Path](../QtQuick.Path/index.html)
-   [PathPercent](../QtQuick.PathPercent/index.html) - Modifies the item distribution along a [Path](../QtQuick.Path/index.html)

<span id="model-view-types-and-data-storage-and-access"></span><span id="model-view-types-and-data-storage-and-access"></span>
### Model/View Types And Data Storage And Access

QML Lists and Models

The Qt QML Models submodule provides the types for structuring data with models and lists.

-   [ListModel](../QtQuick.qtquick-modelviewsdata-modelview/index.html#listmodel) - Defines a list of data
-   ListElement - Defines a data item in a [ListModel](../QtQuick.qtquick-modelviewsdata-modelview/index.html#listmodel)

These QML types are part of Qt Quick for backwards compatibility, but for newer applications, Qt QML Models provides the same functionality.

-   [VisualItemModel](../QtQuick.qtquick-modelviewsdata-modelview/index.html#visualitemmodel) - Contains items that already defines its own visual delegate
-   VisualDataModel - Encapsulates a model and a delegate
-   VisualDataGroup - Encapsulates a filtered set of visual data items

XML Lists

-   [XmlListModel](../QtQuick.XmlListModel.XmlListModel/index.html) - Specifies a model using XPath expressions
-   [XmlRole](../QtQuick.XmlListModel.XmlRole/index.html) - Specifies a role for an [XmlListModel](../QtQuick.XmlListModel.XmlListModel/index.html)

Views

-   [ListView](../QtQuick.ListView/index.html) - Provides a list visualization of a model
-   [GridView](../QtQuick.GridView/index.html) - Provides a grid visualization of a model
-   [PathView](../QtQuick.PathView/index.html) - Visualizes a model's contents along a path. See [Path](../QtQuick.Path/index.html) for more information.
-   Package - Collection that enables sharing of items within different views

Data Storage

-   QtQuick.LocalStorage 2 - Singleton type providing simplified SQL access

<span id="graphical-effects"></span><span id="graphical-effects"></span>
### Graphical Effects

-   [Flipable](../QtQuick.Flipable/index.html) - Provides a surface that produces "flipping" effects
-   [ShaderEffect](../QtQuick.ShaderEffect/index.html) - Allows GLSL shaders to be used as graphical effects
-   [ShaderEffectSource](../QtQuick.ShaderEffectSource/index.html) - Usable as a texture in [ShaderEffect](../QtQuick.ShaderEffect/index.html)
-   [GridMesh](../QtQuick.GridMesh/index.html) - Generates a grid mesh of vertices for use by [ShaderEffect](../QtQuick.ShaderEffect/index.html)
-   The QtQuick.Particles 2 module provides a set of Particle System types for Qt Quick 2

<span id="convenience-types"></span><span id="convenience-types"></span>
### Convenience Types

-   Connections - Explicitly connects signals and signal handlers
-   Binding - Binds any value to any property
-   Timer - Provides timed triggers
-   WorkerScript - Enables the use of threads in a Qt Quick application

<span id="canvas-similar-to-html5-canvas"></span><span id="canvas-similar-to-html5-canvas"></span>
### Canvas (similar to HTML5 canvas)

-   [Canvas](../QtQuick.Canvas/index.html) - Provides a 2D canvas type similar to the HTML5 canvas
-   [Context2D](../QtQuick.Context2D/index.html) - Provides 2D context for shapes on a Canvas item
-   [CanvasGradient](../QtQuick.CanvasGradient/index.html) - Allows specification of a gradient on a Canvas
-   [CanvasPixelArray](../QtQuick.CanvasPixelArray/index.html) - Allows specification of a pixel array for use in a Canvas
-   [CanvasImageData](../QtQuick.CanvasImageData/index.html) - Allows specification of image data for use in a Canvas
-   [TextMetrics](../QtQuick.TextMetrics/index.html) - Provides text and font measurement data for use in a Canvas

<span id="qttest-types"></span><span id="qttest-types"></span>
### QtTest Types

-   [TestCase](../QtTest.TestCase/index.html) - Represents a unit test case
-   [SignalSpy](../QtTest.SignalSpy/index.html) - Enables introspection of signal emission

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
