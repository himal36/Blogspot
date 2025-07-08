<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Main Page with Admin Login</title>
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
    }

    .navbar {
      background-color: #333;
      padding: 1rem;
      display: flex;
      justify-content: space-between;
      align-items: center;
      color: white;
    }

    .nav-links a {
      color: white;
      text-decoration: none;
      margin-left: 1rem;
      font-weight: bold;
    }

    .nav-links a:hover {
      text-decoration: underline;
    }

    main {
      padding: 2rem;
    }
  </style>
</head>
<body>
  <div class="navbar">
    <div class="brand">My Blogger Site</div>
    <div class="nav-links">
      <a href="#">Home</a>
      <a href="#">About</a>
      <a href="#" onclick="openAdminLogin()">Admin</a>
    </div>
  </div>

  <main>
    <h1>Welcome to Blogger</h1>
    <p>This is the homepage. Click "Admin" to go to the login screen.</p>
  </main>

  <script>
    function openAdminLogin() {
      const loginWindow = window.open("", "_blank");

      loginWindow.document.write(`
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8" />
          <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
          <title>Admin Login</title>
          <style>
            * {
              margin: 0;
              padding: 0;
              box-sizing: border-box;
              font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }

            body {
              background: #1f2937;
              display: flex;
              align-items: center;
              justify-content: center;
              height: 100vh;
              color: #f9fafb;
            }

            .login-container {
              background: #111827;
              padding: 2rem;
              border-radius: 0.5rem;
              width: 100%;
              max-width: 400px;
              box-shadow: 0 4px 10px rgba(0, 0, 0, 0.4);
            }

            h2 {
              text-align: center;
              margin-bottom: 1.5rem;
              font-size: 1.5rem;
              font-weight: bold;
              color: #ffffff;
            }

            form {
              display: flex;
              flex-direction: column;
            }

            label {
              margin-bottom: 0.5rem;
              font-weight: 500;
            }

            input[type="text"],
            input[type="password"] {
              padding: 0.5rem;
              margin-bottom: 1rem;
              border: none;
              border-radius: 0.375rem;
              background-color: #374151;
              color: #f9fafb;
              font-size: 1rem;
            }

            input[type="submit"] {
              background-color: #2563eb;
              color: #ffffff;
              padding: 0.5rem;
              border: none;
              border-radius: 0.375rem;
              cursor: pointer;
              font-weight: bold;
              transition: background-color 0.2s ease-in-out;
            }

            input[type="submit"]:hover {
              background-color: #1d4ed8;
            }

            .footer {
              text-align: center;
              margin-top: 1rem;
              font-size: 0.875rem;
              color: #9ca3af;
            }

            .footer a {
              color: #3b82f6;
              text-decoration: none;
            }

            .footer a:hover {
              text-decoration: underline;
            }
          </style>
        </head>
        <body>
          <div class="login-container">
            <h2>Admin Login</h2>
            <form>
              <label for="username">Username</label>
              <input type="text" id="username" name="username" placeholder="Enter username" required />

              <label for="password">Password</label>
              <input type="password" id="password" name="password" placeholder="Enter password" required />

              <input type="submit" value="Login" />
            </form>
            <div class="footer">
              <p><a href="#">Forgot password?</a></p>
            </div>
          </div>
        </body>
        </html>
      `);

      loginWindow.document.close();
    }
  </script>
</body>
</html>
