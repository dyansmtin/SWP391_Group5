<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up - AgriRescue</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #a3bffa, #d4c4fb);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url('https://via.placeholder.com/1920x1080?text=Agricultural+Background');
            background-size: cover;
            background-position: center;
        }
        .header {
            position: absolute;
            top: 0;
            width: 100%;
            padding: 15px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: rgba(46, 125, 50, 0.8);
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            z-index: 1000;
        }
        .header-title {
            font-size: 24px;
            font-weight: bold;
            color: #fff;
        }
        .home-btn {
            color: #fff;
            text-decoration: none;
            padding: 8px 15px;
            border-radius: 5px;
            background-color: #1b5e20;
            margin-left: 15px;
            transition: background-color 0.3s;
        }
        .home-btn:hover {
            background-color: #124116;
        }
        .signup-container {
            background-color: rgba(255, 255, 255, 0.95);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 450px;
            text-align: center;
        }
        .signup-container h2 {
            margin-bottom: 20px;
            font-size: 26px;
            color: #2e7d32;
        }
        .signup-container input,
        .signup-container select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
            box-sizing: border-box;
        }
        .signup-container button {
            width: 100%;
            padding: 12px;
            background-color: #2e7d32;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin: 10px 0;
            transition: background-color 0.3s;
        }
        .signup-container button:hover {
            background-color: #1b5e20;
        }
        .language-switch {
            position: absolute;
            top: 15px;
            right: 20px;
        }
        .language-switch select {
            padding: 5px;
            border-radius: 5px;
            background-color: #fff;
            border: 1px solid #ccc;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="header">
        <div class="header-title">AgriRescue</div>
        <a href="index.jsp" class="home-btn">Home Page</a>
        <div class="language-switch">
            <select onchange="changeLanguage(this.value)">
                <option value="en">English</option>
                <option value="vi">Tiếng Việt</option>
            </select>
        </div>
    </div>

    <div class="signup-container">
        <h2 id="signup-title">Sign Up for AgriRescue</h2>
        <% String successMsg = (String) request.getAttribute("ms1"); %>
        <% if (successMsg != null) { %>
            <p style="color: green"><%= successMsg %></p>
        <% } %>
        <form action="register" method="post">
    <input type="text" name="fullname" placeholder="Full Name *" required>
    <input type="email" name="email" placeholder="Email *" required>
    <input type="text" name="phone" placeholder="Phone Number *" required>
    <input type="text" name="address" placeholder="Address *" required>
    <input type="text" name="user" placeholder="Username *" required>
    <input type="password" name="pass" placeholder="Password *" required>

    <select name="role" required>
        <option value="">-- Select Role --</option>
        <option value="farmer">Farmer</option>
        <option value="buyer">Buyer</option>
        <option value="admin">Admin</option>
    </select>

    <button type="submit">Sign Up for Free</button>
</form>

        <p>Already have an account? <a href="login.jsp">Login here</a></p>
    </div>

    <script>
        function changeLanguage(lang) {
            if (lang === 'vi') {
                document.getElementById('signup-title').textContent = 'Đăng ký AgriRescue';
                document.querySelector('button').textContent = 'Đăng ký miễn phí';
                document.querySelector('p').innerHTML = 'Đã có tài khoản? <a href="login.jsp">Đăng nhập tại đây</a>';
            } else {
                document.getElementById('signup-title').textContent = 'Sign Up for AgriRescue';
                document.querySelector('button').textContent = 'Sign Up for Free';
                document.querySelector('p').innerHTML = 'Already have an account? <a href="login.jsp">Login here</a>';
            }
        }
    </script>
</body>
</html>
