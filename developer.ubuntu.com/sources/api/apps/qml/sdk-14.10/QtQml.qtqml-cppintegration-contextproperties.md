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
-   <a href="../QtQml/index.html" class="sub-nav-item">QtQml</a> ›

<!-- -->

-   Embedding C++ Objects into QML with Context Properties

Embedding C++ Objects into QML with Context Properties
======================================================

<span class="subtitle"></span>
<span id="details"></span>
When loading a QML object into a C++ application, it can be useful to directly embed some C++ data that can be used from within the QML code. This makes it possible, for example, to invoke a C++ method on the embedded object, or use a C++ object instance as a data model for a QML view.

The ability to inject C++ data into a QML object is made possible by the QQmlContext class. This class exposes data to the context of a QML object so that the data can be referred to directly from within the scope of the QML code.

<span id="setting-a-simple-context-property"></span>
Setting a Simple Context Property
---------------------------------

For example, here is a QML item that refers to a `currentDateTime` value that does not exist in the current scope:

``` qml
// MyItem.qml
import QtQuick 2.0
Text { text: currentDateTime }
```

This `currentDateTime` value can be set directly by the C++ application that loads the QML component, using QQmlContext::setContextProperty():

``` cpp
QQuickView view;
view.rootContext()->setContextProperty("currentDateTime", QDateTime::currentDateTime());
view.setSource(QUrl::fromLocalFile("MyItem.qml"));
view.show();
```

**Note:** Since all expressions evaluated in QML are evaluated in a particular context, if the context is modified, all bindings in that context will be re-evaluated. Thus, context properties should be used with care outside of application initialization, as this may lead to decreased application performance.

<span id="setting-an-object-as-a-context-property"></span>
Setting an Object as a Context Property
---------------------------------------

Context properties can hold either QVariant or QObject\* values. This means custom C++ objects can also be injected using this approach, and these objects can be modified and read directly in QML. Here, we modify the above example to embed a QObject instance instead of a QDateTime value, and the QML code invokes a method on the object instance:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><pre class="cpp"><code>class ApplicationData : public QObject
{
    Q_OBJECT
public:
    Q_INVOKABLE QDateTime getCurrentDateTime() const {
        return QDateTime::currentDateTime();
    }
};
int main(int argc, char *argv[]) {
    QGuiApplication app(argc, argv);
    QQuickView view;
    ApplicationData data;
    view.rootContext()-&gt;setContextProperty(&quot;applicationData&quot;, &amp;data);
    view.setSource(QUrl::fromLocalFile(&quot;MyItem.qml&quot;));
    view.show();
    return app.exec();
}</code></pre></td>
<td><pre class="qml"><code>// MyItem.qml
import QtQuick 2.0
Text { text: applicationData.getCurrentDateTime() }</code></pre></td>
</tr>
</tbody>
</table>

(Note that date/time values returned from C++ to QML can be formatted through [Qt.formatDateTime()](../QtQml.Qt/index.html#formatDateTime-method) and associated functions.)

If the QML item needs to receive signals from the context property, it can connect to them using the [Connections](../QtQml.Connections/index.html) type. For example, if `ApplicationData` has a signal named `dataChanged()`, this signal can be connected to using an `onDataChanged` handler within a [Connections](../QtQml.Connections/index.html) object:

``` qml
Text {
    text: applicationData.getCurrentDateTime()
    Connections {
        target: applicationData
        onDataChanged: console.log("The application data changed!")
    }
}
```

Context properties can be useful for using C++ based data models in a QML view. See the following examples:

-   String ListModel
-   Object ListModel
-   AbstractItemModel

demonstrating the use of QStringList, QList&lt;QObject\*&gt;-based models and QAbstractItemModel in QML views.

Also see the QQmlContext documentation for more information.

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
