<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Tạo tài khoản mới</title>

    <!-- Font Awesome icon -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>

    <style>
        * {
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        .reg-wrapper {
            width: 100%;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .reg-box {
            width: 450px;
            background: #ffffff;
            border: 1px solid #e5e5e5;
            box-shadow: 0 0 8px rgba(0,0,0,0.08);
            padding: 30px 40px 35px;
        }

        .reg-box h2 {
            margin: 0 0 25px;
            font-size: 22px;
            font-weight: 600;
            color: #333;
        }

        .input-group {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
            border: 1px solid #d6e4ff;
            background: #ebf3ff;
        }

        .input-group .icon {
            width: 44px;
            text-align: center;
            font-size: 16px;
            color: #666;
        }

        .input-group input {
            border: none;
            outline: none;
            background: transparent;
            padding: 10px 12px;
            width: 100%;
            font-size: 14px;
        }

        .btn-register {
            width: 100%;
            padding: 11px 0;
            border: none;
            background: #0a7fdc;
            color: white;
            font-size: 15px;
            font-weight: 600;
            cursor: pointer;
            margin-top: 10px;
        }

        .btn-register:hover {
            opacity: 0.9;
        }

        .bottom-text {
            margin-top: 20px;
            text-align: center;
            font-size: 13px;
            color: #666;
        }

        .bottom-text a {
            color: #0a7fdc;
            text-decoration: none;
            font-weight: 600;
        }
    </style>
</head>
<body>
<div class="reg-wrapper">
    <div class="reg-box">
        <h2>Tạo tài khoản mới</h2>

        <form action="${pageContext.request.contextPath}/register" method="post">
            <!-- Tên đăng nhập -->
            <div class="input-group">
                <div class="icon"><i class="fa fa-user"></i></div>
                <input type="text" name="username" placeholder="Tên đăng nhập" required>
            </div>

            <!-- Họ tên -->
            <div class="input-group">
                <div class="icon"><i class="fa fa-user-circle"></i></div>
                <input type="text" name="fullname" placeholder="Họ tên" required>
            </div>

            <!-- Email -->
            <div class="input-group">
                <div class="icon"><i class="fa fa-envelope"></i></div>
                <input type="email" name="email" placeholder="Nhập Email" required>
            </div>

            <!-- Số điện thoại -->
            <div class="input-group">
                <div class="icon"><i class="fa fa-phone"></i></div>
                <input type="text" name="phone" placeholder="Số điện thoại" required>
            </div>

            <!-- Mật khẩu -->
            <div class="input-group">
                <div class="icon"><i class="fa fa-lock"></i></div>
                <input type="password" name="password" placeholder="Mật khẩu" required>
            </div>

            <!-- Nhập lại mật khẩu -->
            <div class="input-group">
                <div class="icon"><i class="fa fa-lock"></i></div>
                <input type="password" name="confirmPassword" placeholder="Nhập lại mật khẩu" required>
            </div>

            <button type="submit" class="btn-register">Tạo tài khoản</button>
        </form>

        <div class="bottom-text">
            Nếu bạn đã có tài khoản? <a href="${pageContext.request.contextPath}/login">Đăng nhập</a>
        </div>
    </div>
</div>
</body>
</html>
