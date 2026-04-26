<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Notice Submitted - REC</title>
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

    .navbar h1 { color: #c8102e; font-size: 20px; }
    .navbar p  { color: #888; font-size: 13px; }

    .result-wrapper {
      max-width: 520px;
      margin: 60px auto;
      background: white;
      padding: 40px;
      border-radius: 10px;
      box-shadow: 0 4px 20px rgba(0,0,0,0.1);
      text-align: center;
    }

    .success-icon {
      font-size: 60px;
      margin-bottom: 20px;
    }

    .result-wrapper h2 {
      color: #2e7d32;
      font-size: 24px;
      margin-bottom: 10px;
    }

    .result-wrapper p {
      color: #666;
      font-size: 14px;
      margin-bottom: 30px;
    }

    .info-table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
      text-align: left;
    }

    .info-table th {
      background-color: #c8102e;
      color: white;
      padding: 12px 16px;
      font-size: 14px;
    }

    .info-table td {
      padding: 12px 16px;
      border-bottom: 1px solid #eee;
      font-size: 14px;
      color: #333;
    }

    .info-table tr:hover td {
      background-color: #fff5f5;
    }

    .back-btn {
      display: inline-block;
      margin-top: 28px;
      padding: 12px 30px;
      background-color: #c8102e;
      color: white;
      border-radius: 7px;
      text-decoration: none;
      font-weight: bold;
      font-size: 15px;
    }

    .back-btn:hover { background-color: #a00d26; }

    footer {
      text-align: center;
      padding: 16px;
      background: #0d1b2a;
      color: #888;
      font-size: 13px;
      margin-top: 80px;
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
  </div>

  <%
    // JSP Scriptlet — retrieve form data sent via POST
    String name       = request.getParameter("noticeName");
    String rollNumber = request.getParameter("noticeAge");
    String title      = request.getParameter("noticeTitle");

    // Get current date and time from server
    java.util.Date date = new java.util.Date();
  %>

  <!-- RESULT -->
  <div class="result-wrapper">

    <div class="success-icon">✅</div>
    <h2>Notice Submitted Successfully!</h2>
    <p>Here are the details you submitted:</p>

    <table class="info-table">
      <tr>
        <th>Field</th>
        <th>Value</th>
      </tr>
      <tr>
        <td><b>Your Name</b></td>
        <td><%= name %></td>
      </tr>
      <tr>
        <td><b>Roll Number</b></td>
        <td><%= rollNumber %></td>
      </tr>
      <tr>
        <td><b>Notice Title</b></td>
        <td><%= title %></td>
      </tr>
      <tr>
        <td><b>Submitted On</b></td>
        <td><%= date %></td>
      </tr>
    </table>

    <a href="form.jsp" class="back-btn">← Submit Another Notice</a>

  </div>

  <footer>
    © 2025 Rajalakshmi Engineering College | Online College Notice Board
  </footer>

</body>
</html>
