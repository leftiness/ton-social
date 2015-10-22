# Overview

This is the specification for the RESTful API for ton-social.

A dollar sign ($) represents data that will be provided.

# Login

#### POST /api/login

> **User:**
> Hello. I would like to log in.

```json
{
	"username": "$",
	"password": "$",
	"remember": "$"
}
```

#### RES 200

> **Server:**
> You are logged in. Remember this token.

```json
{
	"token": "$"
}
```

#### RES 400

> **Server:**
> You are not logged in. Your request was invalid.

#### RES 401

> **Server:**
> You are not logged in. Your credentials are invalid.

# Logout

#### POST /api/logout

> **User:**
> I would like to log out.
> This token confirms that I am the person that I claim to be.

```json
{
	"username": "$",
	"token": "$"
}
```

#### RES 200

> **Server:**
> Ok. You are now logged out. Your token is invalidated.

#### RES 400

> **Server:**
> You are not logged out. Your request was invalid.

#### RES 401

> **Server:**
> You provided me with an invalid token for that username.
> You are not authenticated as that user, so you cannot log that user out.

# Settings

#### GET /api/settings

> **User:**
> I would like to see my current settings.

```json
{
	"username": "$",
	"token": "$"
}
```

#### RES 200

> **Server:**  
> Okay. You are authenticated. Here are your settings.

```json
{
	"name": "$",
	"surname": "$",
	"email": "$"
}
```

#### RES 400

> **Server:**
> You can't have any settings because your request is invalid.

#### RES 401

> **Server:**
> You can't have settings for that user. You aren't authenticated.

#### POST /api/settings

> **User:**
> I would like to change my settings, please.
> These are the settings that I want to change.

> **Note:**
> Only the settings included will be updated.
> If you don't want to update a setting, don't include it in the request.

```json
{
	"username": "$",
	"token": "$",
	"name": "$",
	"surname": "$",
	"email": "$"
}
```

#### RES 200

> **Server:**
> Okay. Your settings are updated.

#### RES 400

> **Server:**
> I can't update your settings because your request is invalid.

#### RES 401

> **Server:**
> I can't update the settings for that user. You aren't authenticated.

# Password

#### POST /api/password

> **User:**
> I would like to change my password, please.

```json
{
	"username": "$",
	"token": "$",
	"old": "$",
	"new": "$",
	"confirm": "$"
}
```

#### RES 200

> **Server:**
> Okay. You've changed your password.

#### RES 400

> **Server:**
> You can't change the password. Your request is invalid.

#### RES 401

> **Server:**
> You can't change the password. You aren't authenticated.

# Signup

#### POST /api/signup

> **User:**
> Wow. What a great service. Sign me up!

```json
{
	"username": "$",
	"password": "$",
	"confirm": "$",
	"email": "$"
}
```

#### RES 200

> **Server:**
> Welcome to the great service!
> We've logged you in for your convenience. Here's your token.

```json
{
	"token": "$"
}
```

#### RES 400

> **Server:**
> I'm sorry. I can't sign you up because that request is invalid.

# HTTP 200 OK

There will be an HTTP 200 request in the case of a valid request. If the there
is no response JSON specified, then there will be no other response data.

# HTTP 400 Bad request

There will be an HTTP 400 response in the case of a request which is invalid.

```json
{
	"reason": "$"
}
```

# HTTP 401 Unauthorized request

There will be an HTTP 401 response in the case of a request which requires
authentication but is not properly authenticated.

```json
{
	"reason": "$"
}
```

# HTTP 504 Gateway timeout

There will be an HTTP 504 response in the case of an external service timeout.

```json
{
	"reason": "$"
}
```
