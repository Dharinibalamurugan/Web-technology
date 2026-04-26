<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Result - Notice Board</title>
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }

    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
    }

    .navbar {
      display: flex;
      align-items: center;
      padding: 14px 40px;
      background: white;
      border-bottom: 2px solid #eee;
    }

    .navbar h1 { color: #c8102e; font-size: 20px; }
    .navbar p  { color: #888; font-size: 13px; }

    .result-wrapper {
      max-width: 580px;
      margin: 60px auto;
      background: white;
      padding: 40px;
      border-radius: 10px;
      box-shadow: 0 4px 20px rgba(0,0,0,0.1);
    }

    .method-badge {
      display: inline-block;
      padding: 6px 20px;
      border-radius: 999px;
      font-size: 15px;
      font-weight: bold;
      margin-bottom: 20px;
    }

    .GET-badge  { background: #e3f2fd; color: #1565c0; }
    .POST-badge { background: #ffebee; color: #c8102e; }

    .result-wrapper h2 {
      color: #0d1b2a;
      font-size: 22px;
      margin-bottom: 20px;
    }

    .info-table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 10px;
    }

    .info-table th {
      background-color: #c8102e;
      color: white;
      padding: 12px 16px;
      font-size: 14px;
      text-align: left;
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

    .diff-box {
      margin-top: 28px;
      border-radius: 8px;
      padding: 18px 20px;
      font-size: 13px;
      line-height: 1.8;
    }

    .GET-box  {
      background: #e3f2fd;
      border-left: 4px solid #1565c0;
      color: #0d47a1;
    }

    .POST-box {
      background: #ffebee;
      border-left: 4px solid #c8102e;
      color: #b71c1c;
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
    // Retrieve form data — works for both GET and POST
    String name     = request.getParameter("name");
    String category = request.getParameter("category");

    // Detect which method was used
    String method = request.getMethod();

    // Server date
    java.util.Date date = new java.util.Date();
  %>

  <div class="result-wrapper">

    <!-- Show which method was used -->
    <span class="method-badge <%= method %>-badge">
      <%= method %> Method Used
    </span>

    <h2>📋 Notice Request Received</h2>

    <table class="info-table">
      <tr>
        <th>Field</th>
        <th>Value</th>
      </tr>
      <tr>
        <td><b>Name</b></td>
        <td><%= name %></td>
      </tr>
      <tr>
        <td><b>Category</b></td>
        <td><%= category %></td>
      </tr>
      <tr>
        <td><b>Method Used</b></td>
        <td><%= method %></td>
      </tr>
      <tr>
        <td><b>Server Time</b></td>
        <td><%= date %></td>
      </tr>
    </table>

    <!-- Show difference explanation based on method -->
    <% if (method.equals("GET")) { %>
      <div class="diff-box GET-box">
        🔵 <b>GET Method:</b><br>
        ✔ Data is sent in the <b>URL</b> (visible in address bar)<br>
        ✔ Check your URL bar — you can see name and category there!<br>
        ✔ Used for fetching/reading data<br>
        ✖ Not secure for sensitive data
      </div>
    <% } else { %>
      <div class="diff-box POST-box">
        🔴 <b>POST Method:</b><br>
        ✔ Data is sent in the <b>request body</b> (hidden from URL)<br>
        ✔ Check your URL bar — no data visible there!<br>
        ✔ Used for submitting/saving data<br>
        ✔ More secure than GET
      </div>
    <% } %>

    <a href="form.jsp" class="back-btn">← Try Other Method</a>

  </div>

  <footer>
    © 2025 Rajalakshmi Engineering College | Online College Notice Board
  </footer>

</body>
</html>
