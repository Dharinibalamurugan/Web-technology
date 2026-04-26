<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>GET vs POST - Notice Board</title>
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

    .form-wrapper {
      max-width: 540px;
      margin: 60px auto;
      background: white;
      padding: 40px;
      border-radius: 10px;
      box-shadow: 0 4px 20px rgba(0,0,0,0.1);
    }

    .form-wrapper h2 {
      color: #0d1b2a;
      font-size: 22px;
      margin-bottom: 6px;
    }

    .form-wrapper p {
      color: #888;
      font-size: 13px;
      margin-bottom: 28px;
    }

    label {
      display: block;
      font-weight: bold;
      font-size: 14px;
      color: #333;
      margin-bottom: 6px;
      margin-top: 18px;
    }

    input[type="text"], select {
      width: 100%;
      padding: 10px 14px;
      border: 1px solid #ddd;
      border-radius: 6px;
      font-size: 14px;
      outline: none;
    }

    input[type="text"]:focus,
    select:focus {
      border-color: #c8102e;
    }

    .btn-row {
      display: flex;
      gap: 14px;
      margin-top: 28px;
    }

    .btn-get {
      flex: 1;
      padding: 13px;
      background-color: #1565c0;
      color: white;
      border: none;
      border-radius: 7px;
      font-size: 15px;
      font-weight: bold;
      cursor: pointer;
    }

    .btn-get:hover { background-color: #0d47a1; }

    .btn-post {
      flex: 1;
      padding: 13px;
      background-color: #c8102e;
      color: white;
      border: none;
      border-radius: 7px;
      font-size: 15px;
      font-weight: bold;
      cursor: pointer;
    }

    .btn-post:hover { background-color: #a00d26; }

    .info-box {
      margin-top: 28px;
      background: #f9f9f9;
      border-left: 4px solid #f0c040;
      padding: 14px 18px;
      border-radius: 6px;
      font-size: 13px;
      color: #555;
      line-height: 1.7;
    }

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

  <!-- FORM -->
  <div class="form-wrapper">
    <h2>🌐 GET vs POST Demo</h2>
    <p>Submit the form using GET or POST and see the difference!</p>

    <form action="result.jsp" method="GET" id="noticeForm">

      <label for="name">Your Name</label>
      <input type="text" id="name" name="name"
             placeholder="Enter your full name" required>

      <label for="category">Notice Category</label>
      <select id="category" name="category" required>
        <option value="">-- Select Category --</option>
        <option value="Exam">📝 Exam</option>
        <option value="Event">🎉 Event</option>
        <option value="Holiday">🏖 Holiday</option>
        <option value="General">📢 General</option>
      </select>

      <div class="btn-row">
        <!-- GET Button — changes form method to GET -->
        <button type="submit" class="btn-get"
                onclick="document.getElementById('noticeForm').method='GET'">
          Submit via GET
        </button>

        <!-- POST Button — changes form method to POST -->
        <button type="submit" class="btn-post"
                onclick="document.getElementById('noticeForm').method='POST'">
          Submit via POST
        </button>
      </div>

    </form>

    <div class="info-box">
      💡 <b>GET</b> — Data is visible in the URL bar (less secure)<br>
      💡 <b>POST</b> — Data is hidden in the request body (more secure)
    </div>

  </div>

  <footer>
    © 2025 Rajalakshmi Engineering College | Online College Notice Board
  </footer>

</body>
</html>
