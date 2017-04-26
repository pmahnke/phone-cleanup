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
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   Qt Quick Release Notes

Qt Quick Release Notes
======================

<span class="subtitle"></span>
<span id="details"></span> <span id="qt-quick-in-qt-5-1"></span>
Qt Quick in Qt 5.1
------------------

[Qt Quick](../QtQuick.qtquick-index/index.html) 2.1 is new in Qt 5.1. This is a summary of improvements and new features introduced by the new import and new classes in Qt 5.1:

-   New threaded render loop for Mac, Linux, and Embedded.
-   New render loop for windows for smoother animations.
-   New [Window](../QtQuick.Window.Window/index.html) properties: activeFocusItem, minimumWidth, minimumHeight, maximumWidth, maximumHeight, visibility, contentOrientation, and opacity.
-   New [Screen](../QtQuick.Window.Screen/index.html) attached properties: name, desktopAvailableWidth, desktopAvailableHeight, logicalPixelDensity
-   New [Grid](../QtQuick.qtquick-positioning-layouts/index.html#grid) properties: horizontalAlignment, verticalAlignment, and effectiveHorizontalAlignment.
-   New [TextEdit](../QtQuick.TextEdit/index.html) properties: selectByKeyboard and textDocument
-   A [Window](../QtQuick.Window.Window/index.html) declared inside another Window or [Item](../QtQuick.Item/index.html) will automatically be transient for (centered upon) the outer window.
-   These types are now part of Qt QML:

    -   [VisualItemModel](../QtQuick.qtquick-modelviewsdata-modelview/index.html#visualitemmodel)
    -   VisualDataModel - Encapsulates a model and a delegate
    -   VisualDataGroup

    These types are kept due to compatibility reasons and are replaced by the Qt QML Models types.

<span id="new-submodules"></span>
### New Submodules

In Qt 5.1, there are several new modules which extend Qt Quick functionalities.

-   Qt Quick Dialogs - contains types for creating and interacting with system dialogs
-   Qt Quick Controls - provides a set of reusable UI components
-   Qt Quick Layouts - contains types that are used to arrange items in the user interface

The What's New in Qt 5.1 has more information about the Qt 5.1 release.

<span id="qt-quick-in-qt-5-0"></span>
Qt Quick in Qt 5.0
------------------

The [Qt Quick](../QtQuick.qtquick-index/index.html) module is new in Qt 5. It provides the visual canvas and scenegraph back-end as well as the `QtQuick` QML module for QML application development.

As of Qt 5, the [Qt Quick](../QtQuick.qtquick-index/index.html) module is based on an OpenGL scenegraph. Many of the classes in the [Qt Quick](../QtQuick.qtquick-index/index.html) module have been ported from the QtDeclarative module from Qt 4.8 to use the scenegraph architecture; these classes have been renamed to use a `QQuick*` prefix. (See the Porting QML Applications to Qt 5 for porting information.)

The following classes provide the basic functionality for interacting with the QML visual canvas from C++:

-   QQuickItem - the base visual QML type (replaces `QDeclarativeItem`)
-   QQuickView - a convenience window for rendering a QML scene from a QML file (replaces `QDeclarativeView`)
-   QQuickWindow - a base window for displaying a QML scene
-   QQuickPaintedItem - convenience for using the QPainter API with the scenegraph
-   QQuickImageProvider - fetches custom images for use in QML applications (replaces `QDeclarativeImageProvider`)
-   QQuickTextureFactory - use with QQuickImageProvider::requestTexture()

Custom rendering can be performed on the scenegraph using the following new classes:

-   QSGNode
-   QSGMaterial
-   QSGBasicGeometryNode
-   QSGGeometryNode
-   QSGClipNode
-   QSGTransformNode
-   QSGOpacityNode
-   QSGFlatColorMaterial
-   QSGSimpleRectNode
-   QSGSimpleTextureNode
-   QSGTexture
-   QSGDynamicTexture
-   QSGOpaqueTextureMaterial
-   QSGTextureMaterial
-   QSGTextureProvider
-   QSGVertexColorMaterial

<span id="qt-5-0-qtquick-qml-module"></span>
Qt 5.0 - QtQuick QML Module
---------------------------

The `QtQuick 2.0` QML module is a major update.

Below are the additions in `QtQuick 2.0`. For a list of behavioral changes which may affect applications ported from `QtQuick 1.x`, see the Porting QML Applications to Qt 5.

<span id="visual-types-graphical-effects-and-sprites"></span>
### Visual types, Graphical Effects and Sprites

-   New [Canvas](../QtQuick.Canvas/index.html) type for drawing. This provides an API similar to that of the HTML5 Canvas API, along with some additional features.
    -   Supports two render targets: `Canvas.Image` and `Canvas.FramebufferObject`.
    -   Supports background thread rendering.
    -   Supports tiled canvas rendering.
    -   Supports most of the HTML5 context2d APIs.
-   [Item](../QtQuick.Item/index.html):
    -   New [layer.enabled](../QtQuick.Item/index.html#layer.enabled-prop) property enables an item to be rendered into an offscreen cache for optimization.
    -   New [contains()](../QtQuick.Item/index.html#contains-method) method returns whether an item contains a specified point.
    -   New [anchors.alignWhenCentered](../QtQuick.Item/index.html#anchors.alignWhenCentered-prop) property can force centered anchors to align on a whole pixel.
    -   New [enabled](../QtQuick.Item/index.html#enabled-prop) property is available, which stops input event delivery and removes active focus.
-   [Image](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtQuick.imageelements/#image):
    -   New [horizontalAlignment](../QtQuick.Image/index.html#horizontalAlignment-prop) and [verticalAlignment](../QtQuick.Image/index.html#verticalAlignment-prop) properties to set the image alignment.
    -   New `Image.Pad` enumeration value for [fillMode](../QtQuick.Image/index.html#fillMode-prop) that does not transform the image, unlike other [fillMode](../QtQuick.Image/index.html#fillMode-prop) enumeration values.
-   New [ShaderEffect](../QtQuick.ShaderEffect/index.html) and [ShaderEffectSource](../QtQuick.ShaderEffectSource/index.html) types enable GLSL shader programs to be integrated directly into QML code and applied to QML items and images. (This obsoletes the experimental Qt.labs.shaders module.)
-   New [SpriteSequence](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtQuick.imageelements/#spritesequence) type renders animated sprites and can transition between animations. Each animation in a sequence is represented by the new [Sprite](../QtQuick.Sprite/index.html) type.
-   New [AnimatedSprite](../QtQuick.qtquick-effects-sprites/index.html#animatedsprite) type for drawing single sprite animations.

<span id="animations-and-transitions"></span>
### Animations and Transitions

-   New [AnimationController](../QtQuick.AnimationController/index.html) type enables an animation to be manually driven by a [progress](../QtQuick.AnimationController/index.html#progress-prop) value.
-   New [PathAnimation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtQuick.animation/#pathanimation) type animates an item along a [Path](../QtQuick.Path/index.html).
-   New [PathInterpolator](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtQuick.animation/#pathinterpolator) type provides updated attribute values for an item animating along a path. It can be used as an low-level alternative to [PathAnimation](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtQuick.animation/#pathanimation).
-   [Transition](../QtQuick.qmlexampletoggleswitch/index.html#transition):
    -   New [running](../QtQuick.Transition/index.html#running-prop) property holds whether a transition is currently running.
    -   New [enabled](../QtQuick.Transition/index.html#enabled-prop) property controls whether a transition is enabled.

<span id="paths"></span>
### Paths

-   New [PathArc](../QtQuick.PathArc/index.html) type creates an arc-type path.
-   New [PathCurve](../QtQuick.PathCurve/index.html) type creates a catmull-rom curve path.
-   New [PathSvg](../QtQuick.PathSvg/index.html) type creates a path from a SVG string.
-   Changes common to [PathLine](../QtQuick.PathLine/index.html), [PathQuad](../QtQuick.PathQuad/index.html) and [PathCubic](../QtQuick.PathCubic/index.html):
    -   New `relativeX` and `relativeY` properties define the start and end points of a path relative to its start.
-   [PathCubic](../QtQuick.PathCubic/index.html) only:
    -   New [relativeControl1X](../QtQuick.PathCubic/index.html#relativeControl1X-prop), [relativeControl1Y](../QtQuick.PathCubic/index.html#relativeControl1Y-prop), [relativeControl2X](../QtQuick.PathCubic/index.html#relativeControl2X-prop) and [relativeControl2Y](../QtQuick.PathCubic/index.html#relativeControl2Y-prop) properties define the positions of the control points relative to the start of the curve.
-   [PathQuad](../QtQuick.PathQuad/index.html) only:
    -   New [relativeControlX](../QtQuick.PathQuad/index.html#relativeControlX-prop) and [relativeControlY](../QtQuick.PathQuad/index.html#relativeControlY-prop) define the positions of the control points relative to the start of the curve.

<span id="text"></span>
### Text

-   Changes common to [Text](index.html#text), [TextEdit](../QtQuick.TextEdit/index.html) and [TextInput](../QtQuick.TextInput/index.html):
    -   New `contentWidth` and `contentHeight` properties provide the dimensions of the textual content.
    -   New `effectiveHorizontalAlignment` property provides the read-only actual horizontal alignment.
-   Changes common to both [TextEdit](../QtQuick.TextEdit/index.html) and [TextInput](../QtQuick.TextInput/index.html):
    -   New `canUndo` and `canRedo` properties specify whether undo and redo operations are available.
    -   New `getText()` method returns the text located between specified start and end indexes. Additionally [TextEdit](../QtQuick.TextEdit/index.html) has a [getFormattedText()](../QtQuick.TextEdit/index.html#getFormattedText-method) method that returns the formatted text.
-   [Text](index.html#text) only:
    -   `Text.RightElide` is now supported where text spans multiple lines.
    -   New [linkColor](../QtQuick.Text/index.html#linkColor-prop) property controls the color of linked text.
    -   New [lineLaidOut](../QtQuick.Text/index.html#lineLaidOut-signal) signal is emitted for every line during the layout process to give the option of positioning and/or resizing lines as they are laid out.
    -   New [doLayout()](../QtQuick.Text/index.html#doLayout-method) method will trigger the text layout from Javascript.
    -   New [fontSizeMode](../QtQuick.Text/index.html#fontSizeMode-prop) property allows text to be fitted to the item size.
    -   New [minimumPixelSize](../QtQuick.Text/index.html#minimumPixelSize-prop) and [minimumPointSize](../QtQuick.Text/index.html#minimumPointSize-prop) properties can be used to specify a lower bound when auto-fitting.
-   [TextEdit](../QtQuick.TextEdit/index.html) only:
    -   New [baseUrl](../QtQuick.TextEdit/index.html#baseUrl-prop) property specified the base URL used to resolve relative URLs within the text.
-   [TextInput](../QtQuick.TextInput/index.html) only:
    -   New [wrapMode](../QtQuick.TextInput/index.html#wrapMode-prop) property sets the text wrapping mode.
    -   New [horizontalAlignment](../QtQuick.TextInput/index.html#horizontalAlignment-prop) and [verticalAlignment](../QtQuick.TextInput/index.html#verticalAlignment-prop) properties.
    -   New [length](../QtQuick.TextInput/index.html#length-prop) property provides the total number of text characters.
    -   New [persistentSelection](../QtQuick.TextInput/index.html#persistentSelection-prop) property enables the text selection to persist when the window loses focus.
    -   [positionAt()](../QtQuick.TextInput/index.html#positionAt-method) method now takes a y parameter.

<span id="user-input"></span>
### User Input

-   New [MultiPointTouchArea](../QtQuick.MultiPointTouchArea/index.html) type processes multi-point touches and provides information on touch points including position, pressure and velocity. Touch point data is provided by the new [TouchPoint](../QtQuick.TouchPoint/index.html) type.
-   New [DropArea](../QtQuick.DropArea/index.html) type provides more advanced drag and drop functionality.
-   [MouseArea](../QtQuick.MouseArea/index.html):
    -   Wheel events are now supported; events are provided through the new [WheelEvent](../QtQuick.WheelEvent/index.html) type.
    -   New [propagateComposedEvents](../QtQuick.MouseArea/index.html#propagateComposedEvents-prop) property sets whether composed events are propagated to other mouse areas. If this property is true and the handlers of the [clicked](../QtQuick.MouseArea/index.html#clicked-signal), [doubleClicked](../QtQuick.MouseArea/index.html#doubleClicked-signal) or [pressAndHold](../QtQuick.MouseArea/index.html#pressAndHold-signal) signals reject a mouse event, the event will be propagated to overlapping [MouseArea](../QtQuick.MouseArea/index.html) items in the same area that are lower in the stacking order.
    -   New [cursorShape](../QtQuick.MouseArea/index.html#cursorShape-prop) property controls the cursor shape.

<span id="specialized-containers"></span>
### Specialized Containers

-   Flickable:
    -   New [rebound](../QtQuick.Flickable/index.html#rebound-prop) property specifies the transition to be applied when a flickable snaps back to its bounds.
    -   New [topMargin](../QtQuick.Flickable/index.html#topMargin-prop), [bottomMargin](../QtQuick.Flickable/index.html#bottomMargin-prop), [leftMargin](../QtQuick.Flickable/index.html#leftMargin-prop), [rightMargin](../QtQuick.Flickable/index.html#rightMargin-prop) allow extra margin space to be specified for a flickable. This can be used, for example, to implement pull-to-refresh functionality for a list.
    -   New [originX](../QtQuick.Flickable/index.html#originX-prop) and [originY](../QtQuick.Flickable/index.html#originY-prop) properties provide the top left position of the content item.
    -   New [dragging](../QtQuick.Flickable/index.html#dragging-prop), [draggingHorizontally](../QtQuick.Flickable/index.html#draggingHorizontally-prop) and [draggingVertically](../QtQuick.Flickable/index.html#draggingVertically-prop) properties provide information on whether a flickable is currently being dragged.
    -   New [flick()](../QtQuick.Flickable/index.html#flick-method) method flicks the view with a specific velocity.
    -   New [cancelFlick()](../QtQuick.Flickable/index.html#cancelFlick-method) method stops any current flicking movement.

<span id="positioners-row-column-grid-flow-types"></span>
### Positioners (Row, Column, Grid, Flow types):

-   Changes common to [Row](../QtQuick.qtquick-positioning-layouts/index.html#row), [Column](../QtQuick.qtquick-positioning-layouts/index.html#column), [Grid](../QtQuick.qtquick-positioning-layouts/index.html#grid) and [Flow](../QtQuick.qtquick-positioning-layouts/index.html#flow):
    -   The `add` and `move` transitions can access a new [ViewTransition](../QtQuick.ViewTransition/index.html) attached property (see the [ViewTransition](../QtQuick.ViewTransition/index.html) documentation for examples) and can now animate arbitrary item properties (instead of being restricted to animating an item's position).
    -   New `effectiveLayoutDirection` property provides the read-only actual layout direction of a positioner.
    -   New [Positioner](../QtQuick.Positioner/index.html) type provides `index`, `isFirstItem` and `isLastItem` attached properties for items within positioners.
    -   All `spacing` properties on positioners now use real numbers instead of integers.
-   Grid only:
    -   New [rowSpacing](../QtQuick.Grid/index.html#rowSpacing-prop) and [columnSpacing](../QtQuick.Grid/index.html#columnSpacing-prop) properties.

<span id="models-and-views"></span>
### Models and Views

-   Any delegate of a view that uses a [QAbstractItemModel](../QtQuick.qtquick-modelviewsdata-cppmodels/index.html#qabstractitemmodel)-derived model type can use the syntax `model.<role> = <newDataValue>` to modify the data for a particular role. (Previously, the `model.<role>` syntax was only available for reading, not writing to, a role value.)
-   [ListModel](../QtQuick.qtquick-modelviewsdata-modelview/index.html#listmodel):
    -   By default, roles can no longer change type during a model's lifetime. The new dynamicRoles property can be set to restore the original (less performant) behavior.
-   VisualDataModel:
    -   Now has features to filter the items to be displayed in a view. This is supported by the new groups, filterOnGroup, items and persistedItems properties.
-   Changes common to both [ListView](../QtQuick.ListView/index.html) and [GridView](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtQuick.draganddrop/#gridview):
    -   New transition support for animating the adding, removing and moving of items in a [ListView](../QtQuick.ListView/index.html) or [GridView](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtQuick.draganddrop/#gridview). See the [ViewTransition](../QtQuick.ViewTransition/index.html) documentation for details.
    -   New `verticalLayoutDirection` property enables items to be laid out from bottom-to-top using the new `BottomToTop` enumeration value.
    -   New `headerItem` and `footerItem` properties provide access to the instantiated header and footer items.
    -   The `cacheBuffer` property now has a non-zero default.
    -   Delegates in the cache buffer are now created asynchronously.
    -   Setting a `RightToLeft` layout now also reverses the `preferredHighlightBegin` and `preferredHighlightEnd`.
    -   If the model is changed after the component is completed, currentIndex is reset to 0.
-   [ListView](../QtQuick.ListView/index.html) only:
    -   New [section.labelPositioning](../QtQuick.ListView/index.html#section.labelPositioning-prop) property can fix the current section label to the start of the view, and the next section label to the end of the view, to prevent labels from scrolling while section items are still in view.
    -   `highlightMoveSpeed` and `highlightResizeSpeed` have been renamed to [highlightMoveVelocity](../QtQuick.ListView/index.html#highlightMoveVelocity-prop) and [highlightResizeVelocity](../QtQuick.ListView/index.html#highlightResizeVelocity-prop).
-   [GridView](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtQuick.draganddrop/#gridview) only:
    -   [cellWidth](../QtQuick.GridView/index.html#cellWidth-prop) and [cellHeight](../QtQuick.GridView/index.html#cellHeight-prop) now use real numbers instead of integers.
-   [PathView](../QtQuick.PathView/index.html):
    -   New [currentItem](../QtQuick.PathView/index.html#currentItem-prop) property holds the current item in the view.
    -   New [maximumFlickVelocity](../QtQuick.PathView/index.html#maximumFlickVelocity-prop) property controls the maximum flick velocity of the view.
    -   New [snapMode](../QtQuick.PathView/index.html#snapMode-prop) property controls the snap model when flicking between items
    -   If the model is changed after the component is completed, the offset and currentIndex are reset to 0.
    -   New [positionViewAtIndex()](../QtQuick.PathView/index.html#positionViewAtIndex-method) function allows the view to be moved to display the specified index.
    -   New [indexAt()](../QtQuick.PathView/index.html#indexAt-method) and [itemAt()](../QtQuick.PathView/index.html#itemAt-method) functions return the index or item at a specified point in the view.

<span id="utility-types"></span>
### Utility types

-   New [Accessible](../QtQuick.Accessible/index.html) attached property for implementing accessibility features in QML applications.
-   [Loader](../QtQuick.Loader/index.html):
    -   New [asynchronous](../QtQuick.Loader/index.html#asynchronous-prop) property allows components to be instantiated with lower chance of blocking. If source is used with *asynchronous: true* the component will be compiled in a background thread.
    -   New [active](../QtQuick.Loader/index.html#active-prop) property can delay instantiation of a [Loader](../QtQuick.Loader/index.html) object's [item](../QtQuick.Loader/index.html#item-prop).
    -   New [setSource()](../QtQuick.Loader/index.html#setSource-method) method loads an object with specific initial property values, similar to Component::createObject().
-   Binding:
    -   This type can now be used as a value source, and will also restore any previously set binding when its when clause becomes false.

<span id="property-types"></span>
### Property types

Support for various math and geometry-related value types, including QVector2D, QVector3D, QVector4D, QMatrix4x4 and QQuaternion, as well as QColor and QFont, are now provided by [Qt Quick](../QtQuick.qtquick-index/index.html). Properties of these types can be declared in QML documents via the property syntax where the type name is `vector2d`, `vector3d`, `vector4d`, `matrix4x4`, `quaternion`, `color` and `font` respectively.

[Qt Quick](../QtQuick.qtquick-index/index.html) also provides implementation for the various value type factory or utility functions of the `Qt` object which return or operate on values of the above types. The functions are:

| Value type | Functions                                                                   |
|------------|-----------------------------------------------------------------------------|
| color      | Qt.rgba(), Qt.hsla(), Qt.tint(), Qt.lighter(), Qt.darker(), Qt.colorEqual() |
| font       | Qt.font(), Qt.fontFamilies()                                                |
| vector2d   | Qt.vector2d()                                                               |
| vector3d   | Qt.vector3d()                                                               |
| vector4d   | Qt.vector4d()                                                               |
| matrix4x4  | Qt.matrix4x4()                                                              |
| quaternion | Qt.quaternion()                                                             |

The `Qt.rgba()`, `Qt.hsla()`, `Qt.tint()`, `Qt.lighter()`, `Qt.darker()` and `Qt.fontFamilies()` functions already existed in QtDeclarative prior to [Qt Quick 2](../QtQuick.qtquick-index/index.html); the other functions are all new in [Qt Quick 2](../QtQuick.qtquick-index/index.html).

<span id="qt-5-0-additional-qml-modules"></span>
Qt 5.0 - Additional QML Modules
-------------------------------

<span id="qtquick-particles"></span>
### QtQuick.Particles

This new module provides particle system support for creating a variety of 2D particle systems. See the [QtQuick.Particles](index.html#qtquick-particles) documentation for comprehensive details.

This obsoletes the experimental `Qt.labs.particles` module.

<span id="qtquick-window"></span>
### QtQuick.Window

This new module contains the [Window](../QtQuick.Window.Window/index.html) type for creating a basic window and the [Screen](../QtQuick.Window.Screen/index.html) type for accessing a screen's resolution and other details. See the [QtQuick.Window](index.html#qtquick-window) documentation for comprehensive details.

<span id="qtquick-xmllistmodel"></span>
### QtQuick.XmlListModel

This new module contains [XmlListModel](../QtQuick.qtquick-modelviewsdata-modelview/index.html#xmllistmodel) and associated types, which were previously in the `QtQuick` module. See the [QtQuick.XmlListModel](index.html#qtquick-xmllistmodel) documentation for details.

<span id="qtquick-localstorage"></span>
### QtQuick.LocalStorage

This new module provides access to the SQL Local Storage API that was previously accessible from the QML Global Object. See the [QtQuick.LocalStorage](index.html#qtquick-localstorage) documentation for details.

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
