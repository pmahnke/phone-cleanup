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
-   <a href="../QtQml/index.html" class="sub-nav-item">QtQml</a> ›

<!-- -->

-   Extending QML - Object and List Property Types Example

Extending QML - Object and List Property Types Example
======================================================

<span class="subtitle"></span>
<span id="details"></span>
This example builds on:

-   [Extending QML - Adding Types Example](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.1/QtQml.referenceexamples-adding/)

The Object and List Property Types example shows how to add object and list properties in QML. This example adds a BirthdayParty type that specifies a birthday party, consisting of a celebrant and a list of guests. People are specified using the People QML type built in the previous example.

``` qml
BirthdayParty {
    host: Person {
        name: "Bob Jones"
        shoeSize: 12
    }
    guests: [
        Person { name: "Leo Hodges" },
        Person { name: "Jack Smith" },
        Person { name: "Anne Brown" }
    ]
}
```

<span id="declare-the-birthdayparty"></span>
Declare the BirthdayParty
-------------------------

The BirthdayParty class is declared like this:

``` cpp
class BirthdayParty : public QObject
{
    Q_OBJECT
    Q_PROPERTY(Person *host READ host WRITE setHost)
    Q_PROPERTY(QQmlListProperty<Person> guests READ guests)
public:
    BirthdayParty(QObject *parent = 0);
    Person *host() const;
    void setHost(Person *);
    QQmlListProperty<Person> guests();
    int guestCount() const;
    Person *guest(int) const;
private:
    Person *m_host;
    QList<Person *> m_guests;
};
```

The class contains a member to store the celebrant object, and also a QList&lt;Person \*&gt; member.

In QML, the type of a list properties - and the guests property is a list of people - are all of type QQmlListProperty&lt;T&gt;. QQmlListProperty is simple value type that contains a set of function pointers. QML calls these function pointers whenever it needs to read from, write to or otherwise interact with the list. In addition to concrete lists like the people list used in this example, the use of QQmlListProperty allows for "virtual lists" and other advanced scenarios.

<span id="define-the-birthdayparty"></span>
### Define the BirthdayParty

The implementation of BirthdayParty property accessors is straight forward.

``` cpp
Person *BirthdayParty::host() const
{
    return m_host;
}
void BirthdayParty::setHost(Person *c)
{
    m_host = c;
}
QQmlListProperty<Person> BirthdayParty::guests()
{
    return QQmlListProperty<Person>(this, m_guests);
}
int BirthdayParty::guestCount() const
{
    return m_guests.count();
}
Person *BirthdayParty::guest(int index) const
{
    return m_guests.at(index);
}
```

<span id="running-the-example"></span>
Running the Example
-------------------

The main.cpp file in the example includes a simple shell application that loads and runs the QML snippet shown at the beginning of this page.

Files:

-   referenceexamples/properties/birthdayparty.cpp
-   referenceexamples/properties/birthdayparty.h
-   referenceexamples/properties/example.qml
-   referenceexamples/properties/person.cpp
-   referenceexamples/properties/person.h
-   referenceexamples/properties/main.cpp
-   referenceexamples/properties/properties.pro
-   referenceexamples/properties/properties.qrc

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
