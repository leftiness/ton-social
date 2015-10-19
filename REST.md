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

```
< No response data >
```

#### RES 401

> **Server:**
> You are not logged in. Your credentials are invalid.

```
< No response data >
```

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

```
< No response data >
```

#### RES 400

> **Server:**
> You are not logged out. Your request was invalid.

```
< No response data >
```

#### RES 401

> **Server:**
> You provided me with an invalid token for that username.
> You are not authenticated as that user, so you cannot log that user out.

```
< No response data >
```

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

```
< No response data >
```

#### RES 401

> **Server:**
> You can't have settings for that user. You aren't authenticated.

```
< No response data >
```

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

```
< No response data >
```

#### RES 400

> **Server:**
> I can't update your settings because your request is invalid.

```
< No response data >
```

#### RES 401

> **Server:**
> I can't update the settings for that user. You aren't authenticated.

```
< No response data >
```

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

```
< No response data >
```

#### RES 400

> **Server:**
> You can't change the password. Your request is invalid.

```
< No response data >
```

#### RES 401

> **Server:**
> You can't change the password. You aren't authenticated.

```
< No response data >
```

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

```
< No response data >
```

# Timeout

There will be an HTTP 504 response in the case of an external service timeout.

```
< No response data >
```
