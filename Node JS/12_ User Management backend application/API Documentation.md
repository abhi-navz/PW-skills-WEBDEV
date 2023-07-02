# API Documentation

## Home Page (home method):

### Endpoint: GET /

- Description: This endpoint returns a simple HTML response with the "Home Page" heading when you access the root URL of your server.
- Response: <h1>Home Page</h1>

## Signup Endpoint

### Endpoint: POST /signup

- Description: This endpoint allows users to sign up by providing their name, email, and password in the request body. It checks if the required fields are present and if the user with the given email already exists in the - database. If not, it creates a new user in the database.

### Request Format:

```json
{
  "name": "John Doe",
  "email": "john@example.com",
  "password": "password123"
}
```

### Request format(succes);

```json
{
  "success": true,
  "message": "User Registered successfully",
  "user": {
    "_id": "user_id_here",
    "name": "John Doe",
    "email": "john@example.com"
  }
}
```

### Request format(error);

```json
{
  "success": false,
  "message": "Error message here"
}
```

## Login Endpoint

### Endpoint: POST /login

- Description: This endpoint allows users to log in by providing their email and password in the request body. It checks if the required fields are present and if the user with the given email exists in the database. If the user exists, it compares the provided password with the hashed password stored in the database for that user.

### Login Requst Format

```json
{
  "email": "john@example.com",
  "password": "password123"
}
```

### Response format (sucess);

```json
{
  "success": true,
  "message": "Login successful",
  "user": {
    "_id": "user_id_here",
    "name": "John Doe",
    "email": "john@example.com"
  }
}
```

### REsponse format (error);

```json
{
  "success": false,
  "message": "Error message here"
}
```
