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
-   <a href="../QtQml/index.html" class="sub-nav-item">QtQml</a> ›

<!-- -->

-   Extending QML - Inheritance and Coercion Example

Extending QML - Inheritance and Coercion Example
================================================

<span class="subtitle"></span>
<span id="details"></span>
This example builds on:

-   [Extending QML - Object and List Property Types Example](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/QtQml.referenceexamples-properties/)
-   [Extending QML - Adding Types Example](https://developer.ubuntu.com/api/apps/qml/sdk-15.04.4/QtQml.referenceexamples-adding/)

The Inheritance and Coercion Example shows how to use base classes to assign types of more than one type to a property. It specializes the Person type developed in the previous examples into two types - a `Boy` and a `Girl`.

``` qml
BirthdayParty {
    host: Boy {
        name: "Bob Jones"
        shoeSize: 12
    }
    guests: [
        Boy { name: "Leo Hodges" },
        Boy { name: "Jack Smith" },
        Girl { name: "Anne Brown" }
    ]
}
```

<span id="declare-boy-and-girl"></span>
Declare Boy and Girl
--------------------

``` cpp
class Boy : public Person
{
    Q_OBJECT
public:
    Boy(QObject * parent = 0);
};
class Girl : public Person
{
    Q_OBJECT
public:
    Girl(QObject * parent = 0);
};
```

The Person class remains unaltered in this example and the Boy and Girl C++ classes are trivial extensions of it. As an example, the inheritance used here is a little contrived, but in real applications it is likely that the two extensions would add additional properties or modify the Person classes behavior.

<span id="define-people-as-a-base-class"></span>
### Define People as a base class

The implementation of the People class itself has not changed since the previous example. However, as we have repurposed the People class as a common base for Boy and Girl, we want to prevent it from being instantiated from QML directly - an explicit Boy or Girl should be instantiated instead.

``` cpp
qmlRegisterType<Person>();
```

While we want to disallow instantiating Person from within QML, it still needs to be registered with the QML engine, so that it can be used as a property type and other types can be coerced to it.

<span id="define-boy-and-girl"></span>
### Define Boy and Girl

The implementation of Boy and Girl are trivial.

``` cpp
Boy::Boy(QObject * parent)
: Person(parent)
{
}
Girl::Girl(QObject * parent)
: Person(parent)
{
}
```

All that is necessary is to implement the constructor, and to register the types and their QML name with the QML engine.

<span id="running-the-example"></span>
Running the Example
-------------------

The BirthdayParty type has not changed since the previous example. The celebrant and guests property still use the People type.

``` cpp
    Q_PROPERTY(Person *host READ host WRITE setHost)
    Q_PROPERTY(QQmlListProperty<Person> guests READ guests)
```

However, as all three types, Person, Boy and Girl, have been registered with the QML system, on assignment QML automatically (and type-safely) converts the Boy and Girl objects into a Person.

The main.cpp file in the example includes a simple shell application that loads and runs the QML snippet shown at the beginning of this page.

Files:

-   referenceexamples/coercion/birthdayparty.cpp
-   referenceexamples/coercion/birthdayparty.h
-   referenceexamples/coercion/example.qml
-   referenceexamples/coercion/person.cpp
-   referenceexamples/coercion/person.h
-   referenceexamples/coercion/main.cpp
-   referenceexamples/coercion/coercion.pro
-   referenceexamples/coercion/coercion.qrc

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
