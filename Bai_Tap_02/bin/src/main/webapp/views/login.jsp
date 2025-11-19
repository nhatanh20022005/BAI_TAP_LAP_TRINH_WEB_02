<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập</title>

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

        .login-wrapper {
            width: 100%;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-box {
            width: 420px;
            background: #ffffff;
            border: 1px solid #e5e5e5;
            box-shadow: 0 0 8px rgba(0,0,0,0.08);
            padding: 30px 40px 35px;
        }

        .login-box h2 {
            margin: 0 0 25px;
            text-align: center;
            font-size: 22px;
            font-weight: 600;
            color: #333;
        }

        .input-group {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
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

        .options-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: 5px 0 18px;
            font-size: 13px;
        }

        .options-row a {
            text-decoration: none;
            color: #0a7fdc;
        }

        .btn-login {
            width: 100%;
            padding: 11px 0;
            border: none;
            background: #0a7fdc;
            color: white;
            font-size: 15px;
            font-weight: 600;
            cursor: pointer;
        }

        .btn-login:hover {
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
<div class="login-wrapper">
    <div class="login-box">
        <h2>Đăng Nhập Vào Hệ Thống</h2>

        <form action="${pageContext.request.contextPath}/login" method="post">
            <!-- tài khoản -->
            <div class="input-group">
                <div class="icon">
                    <i class="fa fa-user"></i>
                </div>
                <input type="text" name="username" placeholder="Tên đăng nhập" required>
            </div>

            <!-- mật khẩu -->
            <div class="input-group">
                <div class="icon">
                    <i class="fa fa-lock"></i>
                </div>
                <input type="password" name="password" placeholder="Mật khẩu" required>
            </div>

            <div class="options-row">
                <label>
                    <input type="checkbox" name="remember"> Nhớ tôi
                </label>
                <a href="${pageContext.request.contextPath}/resetmatkhau">Quên mật khẩu?</a>
            </div>

            <button type="submit" class="btn-login">Đăng nhập</button>
        </form>

        <div class="bottom-text">
            Nếu bạn chưa có tài khoản trên hệ thống, thì hãy
            <a href="${pageContext.request.contextPath}/register">Đăng ký</a>
        </div>
    </div>
</div>
</body>
</html>
