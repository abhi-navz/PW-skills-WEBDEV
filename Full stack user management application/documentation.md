# Frontend Documentation

## Features

1. ### Registration

   1. Access the register.html page to sign up for an account.
   2. Takes name, email, password, bio, and username.
   3. Upon succesfull registration it automaticaly directs to login page.
   4. fetches the backend server and sends the Userdata as payload

      ```javascript
      const registerUser = async (payload) => {
        try {
          const resp = await fetch("http://localhost:8100/signup", {
            method: "POST",
            headers: { "content-type": "application/json" },
            body: JSON.stringify(payload),
          });

          const data = await resp.json();
          console.log(data);
          window.location.href = "http://localhost:5500/login.html";
        } catch (error) {
          console.log(error.message);
        }
      };
      ```

2. ### Login Page

   1. Access the login.html page to log in with your username and password.
   2. Takes Username and password
   3. Upon successful login it redirects to the userdetails page.
   4. Fetches the backend and sends the usename and password for login

   ```javascript
   const loginUser = async (payload) => {
     try {
       const resp = await fetch("http://localhost:8100/login", {
         method: "POST",
         credentials: "include",
         redirect: "follow",
         headers: { "content-type": "application/json" },
         body: JSON.stringify(payload),
       });

       const data = await resp.json();
       console.log(data);
       window.location.href = "http://localhost:5500/index.html";
     } catch (error) {
       console.log(error.message);
     }
   };
   ```

3. ### User profile

   1. Access the index.html page and shows user details accesed from the backend
   2. It fetches data from backend server and updates the username, useremail and user Bio.

   ```javascript
   const userData = async () => {
     try {
       const resp = await fetch("http://localhost:8100", {
         method: "GET",
         credentials: "include",
       });
       if (resp.status !== 200) {
         window.location.href = "http://localhost:5500/client/login.html";
       }
       const { data } = await resp.json();
       const userName = document.getElementById("userName");
       const userEmail = document.getElementById("userEmail");
       const userBio = document.getElementById("userBio");
       userName.innerText = data.username;
       userEmail.innerText = data.email;
       userBio.innerText = data.bio;
     } catch (error) {
       console.log(error.message);
       window.location.href = "http://localhost:5500/client/login.html";
     }
   };

   userData();
   ```

# Backend Documentation

## Endpoints

### 1. Signup Endpoint

#### Endpoint: POST /signup

1. Description: This endpoint allows users to sign up by providing their name, email, and password in the request body. It checks if the required fields are present and if the user with the given email already exists in the database. If not, it creates a new user in the database.

2. Request Format

```javascript
{
  "name": "John Doe",
  "email": "john@example.com",
  "password": "password123",
  "bio": "Some bio information",
  "username": "johndoe"
}
```

3. Response Format

```javascript
{
  "success": true,
  "message": "User registered successfully",
  "user": {
    "_id": "user_id_here",
    "name": "John Doe",
    "email": "john@example.com",
    "bio": "Some bio information",
    "username": "johndoe"
  }
}
```

3. Error response

```javascript
{
  "success": false,
  "message": "Error message here"
}
```

### 2. Login Endpoint

#### Endpoint: POST /login

1. Description: This endpoint allows users to log in by providing their username and password in the request body. It checks if the required fields are present and if the user with the given username exists in the database. If the user exists, it compares the provided password with the hashed password stored in the database for that user.

2. Login Request Format

```javascript
{
  "username": "johndoe",
  "password": "password123"
}
```

3. Login Response Format

```javascript
{
  "success": true,
  "message": "Login successful",
  "user": {
    "_id": "user_id_here",
    "name": "John Doe",
    "email": "john@example.com",
    "bio": "Some bio information",
    "username": "johndoe"
  }
}
```

4. Login error response formt

```javascript
{
  "success": false,
  "message": "Error message here"
}
```

### Get User Endpoint

#### Endpoint: GET /

1. Description: This endpoint returns a simple HTML response with the "Home Page" heading when you access the root URL of your server.
2. Successful response

```javascript
    {
        "msg": "Success",
        "data": {
            "name": "John Doe",
            "email": "john@example.com",
            "bio": "Some bio information",
            "username": "johndoe"
        }
    }
```
