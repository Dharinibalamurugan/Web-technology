<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Admin Login - Notice Board</title>
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }
    body { font-family: Arial, sans-serif; background-color: #f4f4f4; }
    .navbar {
      display: flex; align-items: center;
      padding: 14px 40px; background: white;
      border-bottom: 2px solid #eee;
    }
    .navbar h1 { color: #c8102e; font-size: 20px; }
    .navbar p  { color: #888; font-size: 13px; }
    .form-wrapper {
      max-width: 460px; margin: 70px auto;
      background: white; padding: 40px;
      border-radius: 10px;
      box-shadow: 0 4px 20px rgba(0,0,0,0.1);
      text-align: center;
    }
    .lock-icon { font-size: 50px; margin-bottom: 16px; }
    .form-wrapper h2 { color: #0d1b2a; font-size: 22px; margin-bottom: 6px; }
    .form-wrapper p  { color: #888; font-size: 13px; margin-bottom: 28px; }
    label {
      display: block; font-weight: bold;
      font-size: 14px; color: #333;
      margin-bottom: 6px; margin-top: 18px;
      text-align: left;
    }
    input[type="text"], input[type="password"] {
      width: 100%; padding: 10px 14px;
      border: 1px solid #ddd; border-radius: 6px;
      font-size: 14px; outline: none;
    }
    input:focus { border-color: #c8102e; }
    .btn {
      margin-top: 28px; width: 100%; padding: 13px;
      background-color: #c8102e; color: white;
      border: none; border-radius: 7px;
      font-size: 16px; font-weight: bold; cursor: pointer;
    }
    .btn:hover { background-color: #a00d26; }
    .error-msg {
      margin-top: 16px; padding: 12px;
      background: #ffebee; color: #c8102e;
      border-radius: 6px; font-size: 13px;
      border-left: 4px solid #c8102e;
    }
    .hint-box {
      margin-top: 20px; padding: 12px;
      background: #f9f9f9; border-radius: 6px;
      font-size: 12px; color: #888;
    }
    footer {
      text-align: center; padding: 16px;
      background: #0d1b2a; color: #888;
      font-size: 13px; margin-top: 80px;
    }
  </style>
</head>
<body>

  <div class="navbar">
    <div>
      <h1>📋 Online College Notice Board</h1>
      <p>Rajalakshmi Engineering College — Dept. of AI & Data Science</p>
    </div>
  </div>

  <%
    // Show error if login failed
    String error = (String) session.getAttribute("error");
    if (error != null) {
      session.removeAttribute("error");
    }
  %>

  <div class="form-wrapper">
    <div class="lock-icon">🔐</div>
    <h2>Admin Login</h2>
    <p>Enter your credentials to access the Notice Board</p>

    <form action="dashboard.jsp" method="POST">

      <label for="username">Username</label>
      <input type="text" id="username" name="username"
             placeholder="Enter username" required>

      <label for="password">Password</label>
      <input type="password" id="password" name="password"
             placeholder="Enter password" required>

      <button type="submit" class="btn">Login →</button>

    </form>

    <% if (error != null) { %>
      <div class="error-msg">❌ <%= error %></div>
    <% } %>

    <div class="hint-box">
      💡 Default credentials: <b>admin</b> / <b>admin123</b>
    </div>
  </div>

  <footer>
    © 2025 Rajalakshmi Engineering College | Online College Notice Board
  </footer>

</body>
</html>
