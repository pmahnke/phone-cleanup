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
-   <a href="../index.html" class="sub-nav-item">SDK 15.04.4</a> ›
-   <a href="../QtQuick/index.html" class="sub-nav-item">QtQuick</a> ›

<!-- -->

-   QML Advanced Tutorial 3 - Implementing the Game Logic

QML Advanced Tutorial 3 - Implementing the Game Logic
=====================================================

<span class="subtitle"></span>
<span id="details"></span> <span id="making-a-playable-game"></span>
### Making a playable game

Now that we have all the game components, we can add the game logic that dictates how a player interacts with the blocks and plays the game until it is won or lost.

To do this, we have added the following functions to `samegame.js`:

-   `handleClick(x,y)`
-   `floodFill(xIdx,yIdx,type)`
-   `shuffleDown()`
-   `victoryCheck()`
-   `floodMoveCheck(xIdx, yIdx, type)`

As this is a tutorial about QML, not game design, we will only discuss `handleClick()` and `victoryCheck()` below since they interface directly with the QML types. Note that although the game logic here is written in JavaScript, it could have been written in C++ and then exposed to QML.

<span id="enabling-mouse-click-interaction"></span>
#### Enabling mouse click interaction

To make it easier for the JavaScript code to interface with the QML types, we have added an Item called `gameCanvas` to `samegame.qml`. It replaces the background as the item which contains the blocks. It also accepts mouse input from the user. Here is the item code:

``` qml
        Item {
            id: gameCanvas
            property int score: 0
            property int blockSize: 40
            width: parent.width - (parent.width % blockSize)
            height: parent.height - (parent.height % blockSize)
            anchors.centerIn: parent
            MouseArea {
                anchors.fill: parent
                onClicked: SameGame.handleClick(mouse.x, mouse.y)
            }
        }
```

The `gameCanvas` item is the exact size of the board, and has a `score` property and a [MouseArea](../QtQuick.MouseArea/index.html) to handle mouse clicks. The blocks are now created as its children, and its dimensions are used to determine the board size so that the application scales to the available screen size. Since its size is bound to a multiple of `blockSize`, `blockSize` was moved out of `samegame.js` and into `samegame.qml` as a QML property. Note that it can still be accessed from the script.

When clicked, the [MouseArea](../QtQuick.MouseArea/index.html) calls `handleClick()` in `samegame.js`, which determines whether the player's click should cause any blocks to be removed, and updates `gameCanvas.score` with the current score if necessary. Here is the `handleClick()` function:

``` js
function handleClick(xPos, yPos) {
    var column = Math.floor(xPos / gameCanvas.blockSize);
    var row = Math.floor(yPos / gameCanvas.blockSize);
    if (column >= maxColumn || column < 0 || row >= maxRow || row < 0)
        return;
    if (board[index(column, row)] == null)
        return;
    //If it's a valid block, remove it and all connected (does nothing if it's not connected)
    floodFill(column, row, -1);
    if (fillFound <= 0)
        return;
    gameCanvas.score += (fillFound - 1) * (fillFound - 1);
    shuffleDown();
    victoryCheck();
}
```

Note that if `score` was a global variable in the `samegame.js` file you would not be able to bind to it. You can only bind to QML properties.

<span id="updating-the-score"></span>
#### Updating the score

When the player clicks a block and triggers `handleClick()`, `handleClick()` also calls `victoryCheck()` to update the score and to check whether the player has completed the game. Here is the `victoryCheck()` code:

``` js
function victoryCheck() {
    //Award bonus points if no blocks left
    var deservesBonus = true;
    for (var column = maxColumn - 1; column >= 0; column--)
        if (board[index(column, maxRow - 1)] != null)
        deservesBonus = false;
    if (deservesBonus)
        gameCanvas.score += 500;
    //Check whether game has finished
    if (deservesBonus || !(floodMoveCheck(0, maxRow - 1, -1)))
        dialog.show("Game Over. Your score is " + gameCanvas.score);
}
```

This updates the `gameCanvas.score` value and displays a "Game Over" dialog if the game is finished.

The Game Over dialog is created using a `Dialog` type that is defined in `Dialog.qml`. Here is the `Dialog.qml` code. Notice how it is designed to be usable imperatively from the script file, via the functions and signals:

``` qml
import QtQuick 2.0
Rectangle {
    id: container
    function show(text) {
        dialogText.text = text;
        container.opacity = 1;
    }
    function hide() {
        container.opacity = 0;
    }
    width: dialogText.width + 20
    height: dialogText.height + 20
    opacity: 0
    Text {
        id: dialogText
        anchors.centerIn: parent
        text: ""
    }
    MouseArea {
        anchors.fill: parent
        onClicked: hide();
    }
}
```

And this is how it is used in the main `samegame.qml` file:

``` qml
    Dialog {
        id: dialog
        anchors.centerIn: parent
        z: 100
    }
```

We give the dialog a [z](../QtQuick.Item/index.html#z-prop) value of 100 to ensure it is displayed on top of our other components. The default `z` value for an item is 0.

<span id="a-dash-of-color"></span>
#### A dash of color

It's not much fun to play Same Game if all the blocks are the same color, so we've modified the `createBlock()` function in `samegame.js` to randomly create a different type of block (for either red, green or blue) each time it is called. `Block.qml` has also changed so that each block contains a different image depending on its type:

``` qml
import QtQuick 2.0
Item {
    id: block
    property int type: 0
    Image {
        id: img
        anchors.fill: parent
        source: {
            if (type == 0)
                return "../shared/pics/redStone.png";
            else if (type == 1)
                return "../shared/pics/blueStone.png";
            else
                return "../shared/pics/greenStone.png";
        }
    }
}
```

<span id="a-working-game"></span>
### A working game

Now we now have a working game! The blocks can be clicked, the player can score, and the game can end (and then you can start a new one). Here is a screenshot of what has been accomplished so far:

![](https://developer.ubuntu.com/static/devportal_uploaded/79f761ad-5281-4082-b805-ef8678cee6a4-api/apps/qml/sdk-15.04.4/qtquick-tutorials-samegame-samegame3-example/images/declarative-adv-tutorial3.png)

This is what `samegame.qml` looks like now:

``` qml
import QtQuick 2.0
import "samegame.js" as SameGame
Rectangle {
    id: screen
    width: 490; height: 720
    SystemPalette { id: activePalette }
    Item {
        width: parent.width
        anchors { top: parent.top; bottom: toolBar.top }
        Image {
            id: background
            anchors.fill: parent
            source: "../shared/pics/background.jpg"
            fillMode: Image.PreserveAspectCrop
        }
        Item {
            id: gameCanvas
            property int score: 0
            property int blockSize: 40
            width: parent.width - (parent.width % blockSize)
            height: parent.height - (parent.height % blockSize)
            anchors.centerIn: parent
            MouseArea {
                anchors.fill: parent
                onClicked: SameGame.handleClick(mouse.x, mouse.y)
            }
        }
    }
    Dialog {
        id: dialog
        anchors.centerIn: parent
        z: 100
    }
    Rectangle {
        id: toolBar
        width: parent.width; height: 30
        color: activePalette.window
        anchors.bottom: screen.bottom
        Button {
            anchors { left: parent.left; verticalCenter: parent.verticalCenter }
            text: "New Game"
            onClicked: SameGame.startNewGame()
        }
        Text {
            id: score
            anchors { right: parent.right; verticalCenter: parent.verticalCenter }
            text: "Score: Who knows?"
        }
    }
}
```

The game works, but it's a little boring right now. Where are the smooth animated transitions? Where are the high scores? If you were a QML expert you could have written these in the first iteration, but in this tutorial they've been saved until the next chapter - where your application becomes alive!

Files:

-   tutorials/samegame/samegame3/Block.qml
-   tutorials/samegame/samegame3/Button.qml
-   tutorials/samegame/samegame3/Dialog.qml
-   tutorials/samegame/samegame3/samegame.js
-   tutorials/samegame/samegame3/samegame.qml
-   tutorials/samegame/samegame3/samegame3.qmlproject

<a href="https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/QtQuick.tutorials-samegame-samegame2/" class="prevPage">QML Advanced Tutorial 2 - Populating the Game Canvas</a> <a href="https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/QtQuick.tutorials-samegame-samegame4/" class="nextPage">QML Advanced Tutorial 4 - Finishing Touches</a>

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
