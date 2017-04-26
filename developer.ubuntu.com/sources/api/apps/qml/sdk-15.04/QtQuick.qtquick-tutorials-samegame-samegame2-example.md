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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04</a> ›
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   QML Advanced Tutorial 2 - Populating the Game Canvas

QML Advanced Tutorial 2 - Populating the Game Canvas
====================================================

<span class="subtitle"></span>
<span id="details"></span> <span id="generating-the-blocks-in-javascript"></span>
### Generating the blocks in JavaScript

Now that we've written some types, let's start writing the game.

The first task is to generate the game blocks. Each time the New Game button is clicked, the game canvas is populated with a new, random set of blocks. Since we need to dynamically generate new blocks for each new game, we cannot use [Repeater](../QtQuick.Repeater/index.html) to define the blocks. Instead, we will create the blocks in JavaScript.

Here is the JavaScript code for generating the blocks, contained in a new file, `samegame.js`. The code is explained below.

``` js
var blockSize = 40;
var maxColumn = 10;
var maxRow = 15;
var maxIndex = maxColumn * maxRow;
var board = new Array(maxIndex);
var component;
//Index function used instead of a 2D array
function index(column, row) {
    return column + (row * maxColumn);
}
function startNewGame() {
    //Delete blocks from previous game
    for (var i = 0; i < maxIndex; i++) {
        if (board[i] != null)
            board[i].destroy();
    }
    //Calculate board size
    maxColumn = Math.floor(background.width / blockSize);
    maxRow = Math.floor(background.height / blockSize);
    maxIndex = maxRow * maxColumn;
    //Initialize Board
    board = new Array(maxIndex);
    for (var column = 0; column < maxColumn; column++) {
        for (var row = 0; row < maxRow; row++) {
            board[index(column, row)] = null;
            createBlock(column, row);
        }
    }
}
function createBlock(column, row) {
    if (component == null)
        component = Qt.createComponent("Block.qml");
    // Note that if Block.qml was not a local file, component.status would be
    // Loading and we should wait for the component's statusChanged() signal to
    // know when the file is downloaded and ready before calling createObject().
    if (component.status == Component.Ready) {
        var dynamicObject = component.createObject(background);
        if (dynamicObject == null) {
            console.log("error creating block");
            console.log(component.errorString());
            return false;
        }
        dynamicObject.x = column * blockSize;
        dynamicObject.y = row * blockSize;
        dynamicObject.width = blockSize;
        dynamicObject.height = blockSize;
        board[index(column, row)] = dynamicObject;
    } else {
        console.log("error loading block component");
        console.log(component.errorString());
        return false;
    }
    return true;
}
```

The `startNewGame()` function deletes the blocks created in the previous game and calculates the number of rows and columns of blocks required to fill the game window for the new game. Then, it creates an array to store all the game blocks, and calls `createBlock()` to create enough blocks to fill the game window.

The `createBlock()` function creates a block from the `Block.qml` file and moves the new block to its position on the game canvas. This involves several steps:

-   Qt.createComponent() is called to generate a type from `Block.qml`. If the component is ready, we can call `createObject()` to create an instance of the `Block` item.
-   If `createObject()` returned null (i.e. if there was an error while loading the object), print the error information.
-   Place the block in its position on the board and set its width and height. Also, store it in the blocks array for future reference.
-   Finally, print error information to the console if the component could not be loaded for some reason (for example, if the file is missing).

<span id="connecting-javascript-components-to-qml"></span>
### Connecting JavaScript components to QML

Now we need to call the JavaScript code in `samegame.js` from our QML files. To do this, we add this line to `samegame.qml` which imports the JavaScript file as a module:

``` qml
import "samegame.js" as SameGame
```

This allows us to refer to any functions within `samegame.js` using "SameGame" as a prefix: for example, `SameGame.startNewGame()` or `SameGame.createBlock()`. This means we can now connect the New Game button's `onClicked` handler to the `startNewGame()` function, like this:

``` qml
        Button {
            anchors { left: parent.left; verticalCenter: parent.verticalCenter }
            text: "New Game"
            onClicked: SameGame.startNewGame()
        }
```

So, when you click the New Game button, `startNewGame()` is called and generates a field of blocks, like this:

![](https://developer.ubuntu.com/static/devportal_uploaded/30a8285d-5ac4-45a5-802e-a44ed3b53742-api/apps/qml/sdk-15.04/qtquick-tutorials-samegame-samegame2-example/images/declarative-adv-tutorial2.png)

Now, we have a screen of blocks, and we can begin to add the game mechanics.

Files:

-   tutorials/samegame/samegame2/Block.qml
-   tutorials/samegame/samegame2/Button.qml
-   tutorials/samegame/samegame2/samegame.js
-   tutorials/samegame/samegame2/samegame.qml
-   tutorials/samegame/samegame2/samegame2.qmlproject

<a href="https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.tutorials-samegame-samegame1/" class="prevPage">QML Advanced Tutorial 1 - Creating the Game Canvas and Blocks</a> <a href="https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.tutorials-samegame-samegame3/" class="nextPage">QML Advanced Tutorial 3 - Implementing the Game Logic</a>

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
