<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Đăng ký tài khoản</title>

    <!-- Font Awesome -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>

    <style>
        * {
            box-sizing: border-box;
            font-family: "Poppins", Arial, sans-serif;
        }

        body {
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #4facfe, #00f2fe);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .register-container {
            width: 420px;
            padding: 40px 35px;
            background: rgba(255,255,255,0.15);
            backdrop-filter: blur(12px);
            border-radius: 18px;
            box-shadow: 0 0 25px rgba(0,0,0,0.1);
            border: 1px solid rgba(255,255,255,0.25);
            color: #fff;
        }

        .register-container h2 {
            text-align: center;
            margin-bottom: 25px;
            font-size: 26px;
            font-weight: 600;
        }

        .input-box {
            margin-bottom: 14px;
            position: relative;
        }

        .input-box i {
            position: absolute;
            left: 12px;
            top: 50%;
            transform: translateY(-50%);
            font-size: 15px;
            color: #fff;
            opacity: 0.85;
        }

        .input-box input {
            width: 100%;
            padding: 12px 12px 12px 40px;
            border: none;
            border-radius: 10px;
            outline: none;
            font-size: 14px;
            background: rgba(255,255,255,0.3);
            color: #fff;
        }

        .input-box input::placeholder {
            color: #f0f0f0;
        }

        .btn-submit {
            width: 100%;
            padding: 12px;
            margin-top: 10px;
            background: #00c6ff;
            background: linear-gradient(90deg, #36d1dc, #5b86e5);
            border: none;
            font-size: 15px;
            font-weight: 600;
            cursor: pointer;
            border-radius: 10px;
            color: #fff;
        }

        .btn-submit:hover {
            opacity: 0.9;
        }

        .bottom-text {
            margin-top: 18px;
            text-align: center;
            font-size: 14px;
            color: #fff;
        }

        .bottom-text a {
            color: #fff;
            font-weight: 600;
            text-decoration: underline;
        }
    </style>
</head>

<body>
<div class="register-container">
    <h2>Tạo tài khoản</h2>

    <form action="${pageContext.request.contextPath}/register" method="post">

        <div class="input-box">
            <i class="fa fa-user"></i>
            <input type="text" name="username" placeholder="Tên đăng nhập" required>
        </div>

        <div class="input-box">
            <i class="fa fa-address-card"></i>
            <input type="text" name="fullname" placeholder="Họ và tên" required>
        </div>

        <div class="input-box">
            <i class="fa fa-envelope"></i>
            <input type="email" name="email" placeholder="Email" required>
        </div>

        <div class="input-box">
            <i class="fa fa-phone"></i>
            <input type="text" name="phone" placeholder="Số điện thoại" required>
        </div>

        <div class="input-box">
            <i class="fa fa-lock"></i>
            <input type="password" name="password" placeholder="Mật khẩu" required>
        </div>

        <div class="input-box">
            <i class="fa fa-lock"></i>
            <input type="password" name="confirmPassword" placeholder="Nhập lại mật khẩu" required>
        </div>

        <button type="submit" class="btn-submit">Đăng ký</button>
    </form>

    <div class="bottom-text">
        Bạn đã có tài khoản? <a href="${pageContext.request.contextPath}/login">Đăng nhập</a>
    </div>
</div>
</body>
</html>
