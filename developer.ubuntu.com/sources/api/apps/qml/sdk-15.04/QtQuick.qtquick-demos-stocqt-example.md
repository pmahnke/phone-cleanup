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

-   Qt Quick Demo - StocQt

Qt Quick Demo - StocQt
======================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/89244e82-efec-4a83-a636-25611e530aee-api/apps/qml/sdk-15.04/qtquick-demos-stocqt-example/images/qtquick-demo-stocqt.png)

The *StocQt* application presents a trend chart for the first stock in the list of NASDAQ-100 stocks maintained by it. It allows the user to choose another stock from the list, and fetches the required data for the selected stock by sending an `XMLHttpRequest` to http://finance.yahoo.com.

The application uses several custom types such as Button, CheckBox, StockChart, StockInfo, StockView, and so on. These types are used to present the stock data in a readable form and also let the user customize the trend chart. For example, the user can choose to view the yearly, monthly, or daily trends in the stock price.

The application uses the [ObjectModel](https://developer.ubuntu.com/api/apps/qml/sdk-15.04/QtQuick.views/#objectmodel) type to access the two visual data models that it depends on.

``` qml
    ListView {
        id: root
        ...
        model: ObjectModel {
            StockListView {
                id: listView
                width: root.width
                height: root.height
            }
            StockView {
                id: stockView
                width: root.width
                height: root.height
                stocklist: listView
                stock: stock
            }
        }
    }
```

The StockListView model is a static data model listing the NASDAQ-100 stocks with basic information such as stockId, name, value, change, and so on. This data model is used by the application if the user wants to choose another stock from the list.

StockView is a complex data model that presents a trend chart for the selected stock. It uses another custom type, StockChart, which presents the graphical trend of the stock price using a Canvas. This data model is used for most of the time during the lifetime of the application.

``` qml
Rectangle {
    id: chart
    width: 320
    height: 200
    ...
    Canvas {
        id: canvas
        ...
        onPaint: {
            if (!stockModel.ready) {
                return;
            }
            numPoints = stockModel.indexOf(chart.startDate);
            if (chart.gridSize == 0)
                chart.gridSize = numPoints
            var ctx = canvas.getContext("2d");
            ctx.globalCompositeOperation = "source-over";
            ctx.lineWidth = 1;
            drawBackground(ctx);
            var highestPrice = 0;
            var highestVolume = 0;
            var lowestPrice = -1;
            var points = [];
            for (var i = numPoints, j = 0; i >= 0 ; i -= pixelSkip, j += pixelSkip) {
                var price = stockModel.get(i);
                if (parseFloat(highestPrice) < parseFloat(price.high))
                    highestPrice = price.high;
                if (parseInt(highestVolume, 10) < parseInt(price.volume, 10))
                    highestVolume = price.volume;
                if (lowestPrice < 0 || parseFloat(lowestPrice) > parseFloat(price.low))
                    lowestPrice = price.low;
                points.push({
                                x: j * xGridStep,
                                open: price.open,
                                close: price.close,
                                high: price.high,
                                low: price.low,
                                volume: price.volume
                            });
            }
            if (settings.drawHighPrice)
                drawPrice(ctx, 0, numPoints, settings.highColor, "high", points, highestPrice, lowestPrice);
            if (settings.drawLowPrice)
                drawPrice(ctx, 0, numPoints, settings.lowColor, "low", points, highestPrice, lowestPrice);
            if (settings.drawOpenPrice)
                drawPrice(ctx, 0, numPoints,settings.openColor, "open", points, highestPrice, lowestPrice);
            if (settings.drawClosePrice)
                drawPrice(ctx, 0, numPoints, settings.closeColor, "close", points, highestPrice, lowestPrice);
            drawVolume(ctx, 0, numPoints, settings.volumeColor, "volume", points, highestVolume);
            drawScales(ctx, highestPrice, lowestPrice, highestVolume);
        }
    }
}
```

To understand the application better, browse through its code using Qt Creator.

<span id="running-the-example"></span>
Running the Example
-------------------

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

Files:

-   demos/stocqt/stocqt.qml
-   demos/stocqt/content/Button.qml
-   demos/stocqt/content/CheckBox.qml
-   demos/stocqt/content/StockChart.qml
-   demos/stocqt/content/StockInfo.qml
-   demos/stocqt/content/StockListModel.qml
-   demos/stocqt/content/StockListView.qml
-   demos/stocqt/content/StockModel.qml
-   demos/stocqt/content/StockSettingsPanel.qml
-   demos/stocqt/content/StockView.qml
-   demos/stocqt/main.cpp
-   demos/stocqt/stocqt.pro
-   demos/stocqt/stocqt.qmlproject
-   demos/stocqt/stocqt.qrc

**See also** QML Applications.

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
