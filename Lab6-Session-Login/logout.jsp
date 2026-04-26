<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  // Invalidate the session — clears all session data
  session.invalidate();
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Logged Out - Notice Board</title>
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
    .logout-wrapper {
      max-width: 460px; margin: 70px auto;
      background: white; padding: 40px;
      border-radius: 10px;
      box-shadow: 0 4px 20px rgba(0,0,0,0.1);
      text-align: center;
    }
    .logout-icon { font-size: 60px; margin-bottom: 16px; }
    .logout-wrapper h2 { color: #2e7d32; font-size: 24px; margin-bottom: 10px; }
    .logout-wrapper p  { color: #888; font-size: 14px; margin-bottom: 28px; }
    .login-btn {
      display: inline-block; padding: 13px 35px;
      background-color: #c8102e; color: white;
      border-radius: 7px; text-decoration: none;
      font-weight: bold; font-size: 15px;
    }
    .login-btn:hover { background-color: #a00d26; }
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

  <div class="logout-wrapper">
    <div class="logout-icon">👋</div>
    <h2>Logged Out Successfully!</h2>
    <p>Your session has been ended. Thank you for using the Notice Board Admin Panel.</p>
    <a href="login.jsp" class="login-btn">← Back to Login</a>
  </div>

  <footer>
    © 2025 Rajalakshmi Engineering College | Online College Notice Board
  </footer>

</body>
</html>
