---
Title: QtQml.qtqml-referenceexamples-properties-example
---

# QtQml.qtqml-referenceexamples-properties-example

<span class="subtitle"></span>
<!-- $$$referenceexamples/properties-description -->
<p>This example builds on:</p>
<ul>
<li><a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQml.referenceexamples-adding/">Extending QML - Adding Types Example</a></li>
</ul>
<p>The Object and List Property Types example shows how to add object and list properties in QML. This example adds a BirthdayParty type that specifies a birthday party, consisting of a celebrant and a list of guests. People are specified using the People QML type built in the previous example.</p>
<pre class="qml"><span class="type">BirthdayParty</span> {
<span class="name">host</span>: <span class="name">Person</span> {
<span class="name">name</span>: <span class="string">&quot;Bob Jones&quot;</span>
<span class="name">shoeSize</span>: <span class="number">12</span>
}
<span class="name">guests</span>: [
<span class="type">Person</span> { <span class="name">name</span>: <span class="string">&quot;Leo Hodges&quot;</span> },
<span class="type">Person</span> { <span class="name">name</span>: <span class="string">&quot;Jack Smith&quot;</span> },
<span class="type">Person</span> { <span class="name">name</span>: <span class="string">&quot;Anne Brown&quot;</span> }
]
}</pre>
<h2 id="declare-the-birthdayparty">Declare the BirthdayParty</h2>
<p>The BirthdayParty class is declared like this:</p>
<pre class="cpp"><span class="keyword">class</span> BirthdayParty : <span class="keyword">public</span> <span class="type">QObject</span>
{
Q_OBJECT
Q_PROPERTY(Person <span class="operator">*</span>host READ host WRITE setHost)
Q_PROPERTY(<span class="type">QQmlListProperty</span><span class="operator">&lt;</span>Person<span class="operator">&gt;</span> guests READ guests)
<span class="keyword">public</span>:
BirthdayParty(<span class="type">QObject</span> <span class="operator">*</span>parent <span class="operator">=</span> <span class="number">0</span>);
Person <span class="operator">*</span>host() <span class="keyword">const</span>;
<span class="type">void</span> setHost(Person <span class="operator">*</span>);
<span class="type">QQmlListProperty</span><span class="operator">&lt;</span>Person<span class="operator">&gt;</span> guests();
<span class="type">int</span> guestCount() <span class="keyword">const</span>;
Person <span class="operator">*</span>guest(<span class="type">int</span>) <span class="keyword">const</span>;
<span class="keyword">private</span>:
Person <span class="operator">*</span>m_host;
<span class="type">QList</span><span class="operator">&lt;</span>Person <span class="operator">*</span><span class="operator">&gt;</span> m_guests;
};</pre>
<p>The class contains a member to store the celebrant object, and also a QList&lt;Person *&gt; member.</p>
<p>In QML, the type of a list properties - and the guests property is a list of people - are all of type QQmlListProperty&lt;T&gt;. QQmlListProperty is simple value type that contains a set of function pointers. QML calls these function pointers whenever it needs to read from, write to or otherwise interact with the list. In addition to concrete lists like the people list used in this example, the use of QQmlListProperty allows for &quot;virtual lists&quot; and other advanced scenarios.</p>
<h3 >Define the BirthdayParty</h3>
<p>The implementation of BirthdayParty property accessors is straight forward.</p>
<pre class="cpp">Person <span class="operator">*</span>BirthdayParty<span class="operator">::</span>host() <span class="keyword">const</span>
{
<span class="keyword">return</span> m_host;
}
<span class="type">void</span> BirthdayParty<span class="operator">::</span>setHost(Person <span class="operator">*</span>c)
{
m_host <span class="operator">=</span> c;
}
<span class="type">QQmlListProperty</span><span class="operator">&lt;</span>Person<span class="operator">&gt;</span> BirthdayParty<span class="operator">::</span>guests()
{
<span class="keyword">return</span> <span class="type">QQmlListProperty</span><span class="operator">&lt;</span>Person<span class="operator">&gt;</span>(<span class="keyword">this</span><span class="operator">,</span> m_guests);
}
<span class="type">int</span> BirthdayParty<span class="operator">::</span>guestCount() <span class="keyword">const</span>
{
<span class="keyword">return</span> m_guests<span class="operator">.</span>count();
}
Person <span class="operator">*</span>BirthdayParty<span class="operator">::</span>guest(<span class="type">int</span> index) <span class="keyword">const</span>
{
<span class="keyword">return</span> m_guests<span class="operator">.</span>at(index);
}</pre>
<h2 id="running-the-example">Running the Example</h2>
<p>The main.cpp file in the example includes a simple shell application that loads and runs the QML snippet shown at the beginning of this page.</p>
<p>Files:</p>
<ul>
<li>referenceexamples/properties/birthdayparty.cpp</li>
<li>referenceexamples/properties/birthdayparty.h</li>
<li>referenceexamples/properties/example.qml</li>
<li>referenceexamples/properties/person.cpp</li>
<li>referenceexamples/properties/person.h</li>
<li>referenceexamples/properties/main.cpp</li>
<li>referenceexamples/properties/properties.pro</li>
<li>referenceexamples/properties/properties.qrc</li>
</ul>
<!-- @@@referenceexamples/properties -->
