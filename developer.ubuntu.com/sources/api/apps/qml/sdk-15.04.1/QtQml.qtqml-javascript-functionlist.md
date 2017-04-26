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

-   List of JavaScript Objects and Functions

List of JavaScript Objects and Functions
========================================

<span class="subtitle"></span>
<span id="details"></span>
This reference contains a list of objects, functions and properties supported by the QML engine. For a detailed description, see the ECMA-262 specification.

<span id="the-global-object"></span>
The Global Object
-----------------

<span id="value-properties"></span>
### Value Properties

-   NaN
-   Infinity
-   undefined

<span id="function-properties"></span>
### Function Properties

-   eval(x)
-   parseInt(string, radix)
-   parseFloat(string)
-   isNaN(number)
-   isFinite(number)
-   decodeURI(encodedURI)
-   decodeURIComponent(encodedURIComponent)
-   encodeURI(uri)
-   encodeURIComponent(uriComponent)

<span id="constructor-properties"></span>
### Constructor Properties

-   Object
-   Function
-   Array
-   String
-   Boolean
-   Number
-   Date
-   RegExp
-   Error
-   EvalError
-   RangeError
-   ReferenceError
-   SyntaxError
-   TypeError
-   URIError

<span id="other-properties"></span>
### Other Properties

-   Math
-   JSON

<span id="the-object-object"></span>
The Object Object
-----------------

<span id="object-constructor"></span>
### Object Constructor

<span id="function-properties"></span>
#### Function Properties

-   getPrototypeOf(O)
-   getOwnPropertyDescriptor(O, P)
-   getOwnPropertyNames(O)
-   create(O \[, Properties\])
-   defineProperty(O, P, Attributes)
-   defineProperties(O, Properties)
-   keys(O)
-   seal(O)
-   isSealed(O)
-   freeze(O)
-   isFrozen(O)
-   preventExtensions(O)
-   isExtensible(O)

<span id="object-prototype"></span>
### Object Prototype

<span id="function-properties"></span>
#### Function Properties

-   toString()
-   toLocaleString()
-   valueOf()
-   hasOwnProperty(V)
-   isPrototypeOf(V)
-   propertyIsEnumerable(V)

<span id="function-objects"></span>
Function Objects
----------------

<span id="function-prototype"></span>
### Function Prototype

<span id="function-properties"></span>
#### Function Properties

-   toString()
-   apply(thisArg, argArray)
-   call(thisArg \[, arg1 \[, arg2, ...\]\])
-   bind((thisArg \[, arg1 \[, arg2, …\]\])

<span id="array-objects"></span>
Array Objects
-------------

<span id="array-prototype-object"></span>
### Array Prototype Object

<span id="function-properties"></span>
#### Function Properties

-   toString()
-   toLocaleString()
-   concat(\[item1 \[, item2 \[, ...\]\]\])
-   join(separator)
-   pop()
-   push(\[item1 \[, item2 \[, ...\]\]\])
-   reverse()
-   shift()
-   slice(start, end)
-   sort(comparefn)
-   splice(start, deleteCount\[, item1 \[, item2 \[, ...\]\]\])
-   unshift(\[item1 \[, item2 \[, ...\]\]\])
-   indexOf(searchElement \[, fromIndex\])
-   lastIndexOf(searchElement \[, fromIndex\])
-   every(callbackfn \[, thisArg\])
-   some(callbackfn \[, thisArg\])
-   forEach(callbackfn \[, thisArg\])
-   map(callbackfn \[, thisArg\])
-   filter(callbackfn \[, thisArg\])
-   reduce(callbackfn \[, initialValue\])
-   reduceRight(callbackfn \[, initialValue\])

<span id="string-objects"></span>
String Objects
--------------

<span id="string-prototype-object"></span>
### String Prototype Object

<span id="function-properties"></span>
#### Function Properties

-   toString()
-   valueOf()
-   charAt(pos)
-   charCodeAt(pos)
-   concat(\[string1 \[, string2 \[, ...\]\]\])
-   indexOf(searchString ,position)
-   lastIndexOf(searchString, position)
-   localeCompare(that)
-   match(regexp)
-   replace(searchValue, replaceValue)
-   search(regexp)
-   slice(start, end)
-   split(separator, limit)
-   substring(start, end)
-   toLowerCase()
-   toLocaleLowerCase()
-   toUpperCase()
-   toLocaleUpperCase()
-   trim()

Additionally, the QML engine adds the following functions to the [String](../QtQml.String/index.html) prototype:

-   [arg()](../QtQml.String/index.html#arg-method)

<span id="boolean-objects"></span>
Boolean Objects
---------------

<span id="boolean-prototype-object"></span>
### Boolean Prototype Object

<span id="function-properties"></span>
#### Function Properties

-   toString()
-   valueOf()

<span id="number-objects"></span>
Number Objects
--------------

<span id="number-prototype-object"></span>
### Number Prototype Object

<span id="function-properties"></span>
#### Function Properties

-   toString(radix)
-   toLocaleString()
-   toFixed(fractionDigits)
-   toExponential(fractionDigits)
-   toPrecision(precision)

Additionally, the QML engine adds the following functions to the [Number](../QtQml.Number/index.html) prototype:

-   [fromLocaleString(locale, number)](../QtQml.Number/index.html#fromLocaleString-method)
-   [toLocaleCurrencyString(locale, symbol)](../QtQml.Number/index.html#toLocaleCurrencyString-method)
-   [toLocaleString(locale, format, precision)](../QtQml.Number/index.html#toLocaleString-method)

<span id="the-math-object"></span>
The Math Object
---------------

<span id="value-properties"></span>
### Value Properties

-   E
-   LN10
-   LN2
-   LOG2E
-   LOG10E
-   PI
-   SQRT1\_2
-   SQRT2

<span id="function-properties"></span>
### Function Properties

-   abs(x)
-   acos(x)
-   asin(x)
-   atan(x)
-   atan2(y, x)
-   ceil(x)
-   cos(x)
-   exp(x)
-   floor(x)
-   log(x)
-   max(\[value1 \[, value2 \[, ...\]\]\])
-   min(\[value1 \[, value2 \[, ...\]\]\])
-   pow(x, y)
-   random()
-   round(x)
-   sin(x)
-   sqrt(x)
-   tan(x)

<span id="date-objects"></span>
Date Objects
------------

<span id="date-prototype-object"></span>
### Date Prototype Object

<span id="function-properties"></span>
#### Function Properties

-   toString()
-   toDateString()
-   toTimeString()
-   toLocaleString()
-   toLocaleDateString()
-   toLocaleTimeString()
-   valueOf()
-   getTime()
-   getFullYear()
-   getUTCFullYear()
-   getMonth()
-   getUTCMonth()
-   getDate()
-   getUTCDate()
-   getDay()
-   getUTCDay()
-   getHours()
-   getUTCHours()
-   getMinutes()
-   getUTCMinutes()
-   getSeconds()
-   getUTCSeconds()
-   getMilliseconds()
-   getUTCMilliseconds()
-   getTimeZoneOffset()
-   setTime(time)
-   setMilliseconds(ms)
-   setUTCMilliseconds(ms)
-   setSeconds(sec \[, ms\])
-   setUTCSeconds(sec \[, ms\])
-   setMinutes(min \[, sec \[, ms\]\])
-   setUTCMinutes(min \[, sec \[, ms\]\])
-   setHours(hour \[, min \[, sec \[, ms\]\]\])
-   setUTCHours(hour \[, min \[, sec \[, ms\]\]\])
-   setDate(date)
-   setUTCDate(date)
-   setMonth(month \[, date\])
-   setUTCMonth(month \[, date\])
-   setFullYear(year \[, month \[, date\]\])
-   setUTCFullYear(year \[, month \[, date\]\])
-   toUTCString()
-   toISOString()
-   toJSON()

Additionally, the QML engine adds the following functions to the [Date](../QtQml.Date/index.html) prototype:

-   [timeZoneUpdated()](../QtQml.Date/index.html#timeZoneUpdated-method)
-   [toLocaleDateString(locale, format)](../QtQml.Date/index.html#toLocaleDateString-method)
-   [toLocaleString(locale, format)](../QtQml.Date/index.html#toLocaleString-method)
-   [toLocaleTimeString(locale, format)](../QtQml.Date/index.html#toLocaleTimeString-method)

<span id="regexp-objects"></span>
RegExp Objects
--------------

<span id="regexp-prototype-object"></span>
### RegExp Prototype Object

<span id="function-properties"></span>
#### Function Properties

-   exec(string)
-   test(string)
-   toString()

<span id="error-objects"></span>
Error Objects
-------------

<span id="error-prototype-object"></span>
### Error Prototype Object

<span id="value-properties"></span>
#### Value Properties

-   name
-   message

<span id="function-properties"></span>
#### Function Properties

-   toString()

<span id="the-json-object"></span>
The JSON Object
---------------

<span id="function-properties"></span>
### Function Properties

-   parse(text \[, reviver\])
-   stringify(value \[, replacer \[, space\]\])

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
