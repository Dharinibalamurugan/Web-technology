<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Notice Form - REC</title>
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

    .form-wrapper {
      max-width: 520px;
      margin: 60px auto;
      background: white;
      padding: 40px;
      border-radius: 10px;
      box-shadow: 0 4px 20px rgba(0,0,0,0.1);
    }

    .form-wrapper h2 {
      color: #0d1b2a;
      margin-bottom: 6px;
      font-size: 22px;
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

    input[type="text"] {
      width: 100%;
      padding: 10px 14px;
      border: 1px solid #ddd;
      border-radius: 6px;
      font-size: 14px;
      outline: none;
    }

    input[type="text"]:focus {
      border-color: #c8102e;
    }

    .btn {
      margin-top: 28px;
      width: 100%;
      padding: 13px;
      background-color: #c8102e;
      color: white;
      border: none;
      border-radius: 7px;
      font-size: 16px;
      font-weight: bold;
      cursor: pointer;
    }

    .btn:hover { background-color: #a00d26; }

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
    <h2>📝 Submit a Notice</h2>
    <p>Fill in the details below to submit your notice request.</p>

    <!--
      action = display.jsp (next page that processes the data)
      method = POST (sends data in request body)
    -->
    <form action="display.jsp" method="POST">

      <label for="noticeName">Your Name</label>
      <input type="text" id="noticeName" name="noticeName"
             placeholder="Enter your full name" required>

      <label for="noticeAge">Roll Number</label>
      <input type="text" id="noticeAge" name="noticeAge"
             placeholder="Enter your roll number" required>

      <label for="noticeTitle">Notice Title</label>
      <input type="text" id="noticeTitle" name="noticeTitle"
             placeholder="Enter notice title" required>

      <button type="submit" class="btn">Submit Notice →</button>

    </form>
  </div>

  <footer>
    © 2025 Rajalakshmi Engineering College | Online College Notice Board
  </footer>

</body>
</html>
