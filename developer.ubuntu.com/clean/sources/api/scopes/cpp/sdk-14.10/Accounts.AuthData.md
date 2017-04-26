---
Title: Accounts.AuthData
---
        
AuthData
========

Information for account authentication. [More...](#details)

`#include <Accounts/AuthData>`

pub-methods
------------------------------------------------------

 
<a href="#aeba8fdc4a52c97afb61f49b9a4d6b9c4">AuthData</a> (const <a href="index.html">AuthData</a> &other)
 
Copy constructor. More...
 
virtual 
<a href="#a5bbaeb60e91e492e40be40271b3f4194">~AuthData</a> ()
 
Destructor.
 
uint 
<a href="#a9fe8b6778698b1949275326717f35b02">credentialsId</a> () const
 
QString 
<a href="#a47b45cea7d4fbacc4d751adaeb1e8d79">method</a> () const
 
Get the authentication method which must be used when logging in with this account. More...
 
QString 
<a href="#aaff7a936205f9c8044c0093f6497c514">mechanism</a> () const
 
Get the authentication mechanism which must be used when logging in with this account. More...
 
QVariantMap 
<a href="#a149775212ebd051147314d4a3bfff30d">parameters</a> () const
 
Get the dictionary of authentication parameters which must be used when logging in with this account. More...
 
<span id="details"></span>
Detailed Description
--------------------

Information for account authentication.

The <a href="index.html" title="Information for account authentication. ">AuthData</a> class holds information on the authentication parameters used by an account. It is an implicitly shared object which can be created with the <a href="Accounts.AccountService.md#a49a9f7deccedeebacadc37ae01ac83ab" title="Read the authentication data stored in the account (merging the service-specific settings with the gl...">AccountService::authData</a> method.

Definition at line 49 of file auth-data.h.

Constructor & Destructor Documentation
--------------------------------------

<span id="aeba8fdc4a52c97afb61f49b9a4d6b9c4" class="anchor"></span>
|                                              |     |                                                       |         |     |     |
|----------------------------------------------|-----|-------------------------------------------------------|---------|-----|-----|
| <a href="index.html">AuthData</a> | (   | const <a href="index.html">AuthData</a> &  | *other* | )   |     |

Copy constructor.

Copying an <a href="index.html" title="Information for account authentication. ">AuthData</a> object is very cheap, because the data is shared among copies.

Definition at line 48 of file auth-data.cpp.

Member Function Documentation
-----------------------------

<span id="a9fe8b6778698b1949275326717f35b02" class="anchor"></span>
|                    |     |     |     |       |
|--------------------|-----|-----|-----|-------|
| uint credentialsId | (   |     | )   | const |

Returns  
The ID of the credentials associated with this account.

Definition at line 74 of file auth-data.cpp.

<span id="aaff7a936205f9c8044c0093f6497c514" class="anchor"></span>
|                   |     |     |     |       |
|-------------------|-----|-----|-----|-------|
| QString mechanism | (   |     | )   | const |

Get the authentication mechanism which must be used when logging in with this account.

Returns  
The authentication mechanism.

Definition at line 94 of file auth-data.cpp.

<span id="a47b45cea7d4fbacc4d751adaeb1e8d79" class="anchor"></span>
|                |     |     |     |       |
|----------------|-----|-----|-----|-------|
| QString method | (   |     | )   | const |

Get the authentication method which must be used when logging in with this account.

Returns  
The authentication method.

Definition at line 84 of file auth-data.cpp.

<span id="a149775212ebd051147314d4a3bfff30d" class="anchor"></span>
|                        |     |     |     |       |
|------------------------|-----|-----|-----|-------|
| QVariantMap parameters | (   |     | )   | const |

Get the dictionary of authentication parameters which must be used when logging in with this account.

Returns  
The authentication parameters.

Definition at line 104 of file auth-data.cpp.

