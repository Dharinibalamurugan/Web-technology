<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Online College Notice Board - REC</title>
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }

    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
    }

    .navbar {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 14px 40px;
      background: white;
      border-bottom: 2px solid #eee;
    }

    .navbar h1 {
      color: #c8102e;
      font-size: 20px;
    }

    .navbar p {
      color: #888;
      font-size: 13px;
    }

    .hero {
      background-color: #0d1b2a;
      color: white;
      text-align: center;
      padding: 60px 20px;
    }

    .hero h2 {
      font-size: 36px;
      color: #f0c040;
      margin-bottom: 12px;
    }

    .hero p {
      font-size: 16px;
      color: #cccccc;
      margin-bottom: 24px;
    }

    .welcome-box {
      background: #c8102e;
      color: white;
      display: inline-block;
      padding: 14px 30px;
      border-radius: 8px;
      font-size: 18px;
      font-weight: bold;
      margin-top: 10px;
    }

    .info-section {
      max-width: 800px;
      margin: 50px auto;
      display: flex;
      gap: 24px;
      padding: 0 20px;
    }

    .info-card {
      flex: 1;
      background: white;
      border-top: 4px solid #c8102e;
      border-radius: 8px;
      padding: 24px;
      text-align: center;
      box-shadow: 0 2px 10px rgba(0,0,0,0.08);
    }

    .info-card h3 {
      color: #0d1b2a;
      margin-bottom: 10px;
      font-size: 16px;
    }

    .info-card p {
      color: #666;
      font-size: 13px;
      line-height: 1.6;
    }

    .info-card .icon {
      font-size: 32px;
      margin-bottom: 12px;
    }

    footer {
      background-color: #0d1b2a;
      color: #888;
      text-align: center;
      padding: 20px;
      font-size: 13px;
      margin-top: 60px;
    }
  </style>
</head>
<body>

  <!-- NAVBAR -->
  <div class="navbar">
    <div>
      <h1>📋 Online College Notice Board</h1>
      <p>Rajalakshmi Engineering College — Dept. of AI & Data Science</p>
    </div>
    <div style="color:#333; font-size:14px;">
      <a href="#" style="margin-left:20px; color:#333; text-decoration:none;">Home</a>
      <a href="#" style="margin-left:20px; color:#333; text-decoration:none;">Notices</a>
      <a href="#" style="margin-left:20px; color:#333; text-decoration:none;">Contact</a>
    </div>
  </div>

  <!-- HERO -->
  <div class="hero">
    <h2>Welcome to the Notice Board!</h2>
    <p>Your one-stop portal for all college announcements and updates.</p>

    <%
      // JSP Scriptlet — Java code inside JSP
      String collegeName = "Rajalakshmi Engineering College";
      String dept = "Department of AI & Data Science";
      String message = "Hello, World! Welcome to " + collegeName + " Online Notice Board!";
    %>

    <div class="welcome-box">
      <%= message %>
    </div>
  </div>

  <!-- INFO CARDS -->
  <div class="info-section">

    <div class="info-card">
      <div class="icon">📝</div>
      <h3>Exam Notices</h3>
      <p>Stay updated with exam schedules, hall tickets and result announcements.</p>
    </div>

    <div class="info-card">
      <div class="icon">🎉</div>
      <h3>Events</h3>
      <p>Find information about symposiums, workshops and college fests.</p>
    </div>

    <div class="info-card">
      <div class="icon">📢</div>
      <h3>General Notices</h3>
      <p>Important announcements from the principal and department heads.</p>
    </div>

  </div>

  <!-- FOOTER -->
  <footer>
    © 2025 Rajalakshmi Engineering College | Online College Notice Board
    <br>
    <%
      // JSP Expression — print server date
      java.util.Date date = new java.util.Date();
    %>
    Server Date: <%= date %>
  </footer>

</body>
</html>
