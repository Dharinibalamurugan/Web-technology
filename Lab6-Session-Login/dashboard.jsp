<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Dashboard - Notice Board</title>
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }
    body { font-family: Arial, sans-serif; background-color: #f4f4f4; }
    .navbar {
      display: flex; align-items: center;
      justify-content: space-between;
      padding: 14px 40px; background: white;
      border-bottom: 2px solid #eee;
    }
    .navbar h1 { color: #c8102e; font-size: 20px; }
    .navbar p  { color: #888; font-size: 13px; }
    .logout-btn {
      padding: 8px 20px; background: #c8102e;
      color: white; border-radius: 6px;
      text-decoration: none; font-size: 14px;
      font-weight: bold;
    }
    .logout-btn:hover { background: #a00d26; }
    .dashboard {
      max-width: 700px; margin: 60px auto;
      background: white; padding: 40px;
      border-radius: 10px;
      box-shadow: 0 4px 20px rgba(0,0,0,0.1);
    }
    .welcome-banner {
      background: #0d1b2a; color: white;
      padding: 24px; border-radius: 8px;
      margin-bottom: 30px; text-align: center;
    }
    .welcome-banner h2 { font-size: 24px; color: #f0c040; margin-bottom: 8px; }
    .welcome-banner p  { font-size: 14px; color: #ccc; }
    .session-box {
      background: #f9f9f9; border-left: 4px solid #c8102e;
      padding: 18px 20px; border-radius: 6px;
      margin-bottom: 24px; font-size: 14px;
      color: #333; line-height: 1.9;
    }
    .session-box b { color: #c8102e; }
    .notice-cards {
      display: flex; gap: 16px; flex-wrap: wrap;
    }
    .notice-card {
      flex: 1; min-width: 180px;
      background: white;
      border-top: 4px solid #c8102e;
      border: 1px solid #eee;
      border-radius: 8px; padding: 20px;
      text-align: center;
      box-shadow: 0 2px 8px rgba(0,0,0,0.06);
    }
    .notice-card .icon { font-size: 30px; margin-bottom: 10px; }
    .notice-card h3 { font-size: 14px; color: #0d1b2a; }
    .notice-card p  { font-size: 12px; color: #888; margin-top: 6px; }
    footer {
      text-align: center; padding: 16px;
      background: #0d1b2a; color: #888;
      font-size: 13px; margin-top: 80px;
    }
  </style>
</head>
<body>

  <%
    // Get credentials from POST
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // Check if coming from session (already logged in)
    if (username == null) {
      username = (String) session.getAttribute("username");
    }

    // Validate credentials
    if (username == null || password == null && session.getAttribute("username") == null) {
      response.sendRedirect("login.jsp");
      return;
    }

    // Authenticate
    if (password != null) {
      if (!username.equals("admin") || !password.equals("admin123")) {
        session.setAttribute("error", "Invalid username or password. Try again!");
        response.sendRedirect("login.jsp");
        return;
      }
      // Create session
      session.setAttribute("username", username);
      session.setMaxInactiveInterval(300); // 5 minutes
    }

    String sessionUser = (String) session.getAttribute("username");
    java.util.Date loginTime = new java.util.Date();
  %>

  <div class="navbar">
    <div>
      <h1>📋 Online College Notice Board</h1>
      <p>Rajalakshmi Engineering College — Dept. of AI & Data Science</p>
    </div>
    <a href="logout.jsp" class="logout-btn">Logout →</a>
  </div>

  <div class="dashboard">

    <div class="welcome-banner">
      <h2>👋 Welcome, <%= sessionUser %>!</h2>
      <p>You are logged in to the Admin Notice Board Dashboard</p>
    </div>

    <div class="session-box">
      📌 <b>Session Info:</b><br>
      Username &nbsp;&nbsp;: <b><%= sessionUser %></b><br>
      Session ID &nbsp;: <b><%= session.getId() %></b><br>
      Login Time &nbsp;: <b><%= loginTime %></b><br>
      Session Timeout : <b>5 minutes</b>
    </div>

    <div class="notice-cards">
      <div class="notice-card">
        <div class="icon">📝</div>
        <h3>Exam Notices</h3>
        <p>Manage exam schedules</p>
      </div>
      <div class="notice-card">
        <div class="icon">🎉</div>
        <h3>Events</h3>
        <p>Manage college events</p>
      </div>
      <div class="notice-card">
        <div class="icon">📢</div>
        <h3>General</h3>
        <p>General announcements</p>
      </div>
    </div>

  </div>

  <footer>
    © 2025 Rajalakshmi Engineering College | Online College Notice Board
  </footer>

</body>
</html>
