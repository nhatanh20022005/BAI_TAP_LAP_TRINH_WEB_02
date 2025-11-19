<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Đổi mật khẩu</title>

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
            background: linear-gradient(135deg, #4b79a1, #283e51);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .card {
            width: 420px;
            padding: 35px 30px;
            background: rgba(255,255,255,0.15);
            border-radius: 16px;
            backdrop-filter: blur(14px);
            border: 1px solid rgba(255,255,255,0.25);
            box-shadow: 0 0 25px rgba(0,0,0,0.25);
            color: #fff;
        }

        .card h2 {
            margin: 0 0 25px;
            text-align: center;
            font-size: 26px;
            font-weight: 600;
        }

        .alert {
            background: rgba(255, 86, 86, 0.25);
            border-left: 4px solid #ff5757;
            padding: 10px 12px;
            margin-bottom: 18px;
            color: #ffb7b7;
            border-radius: 6px;
        }

        .input-box {
            margin-bottom: 15px;
            position: relative;
        }

        .input-box i {
            position: absolute;
            left: 12px;
            top: 50%;
            transform: translateY(-50%);
            font-size: 15px;
            color: #fff;
            opacity: .85;
        }

        .input-box input {
            width: 100%;
            padding: 12px 12px 12px 40px;
            border-radius: 10px;
            border: none;
            outline: none;
            font-size: 14px;
            background: rgba(255,255,255,0.25);
            color: #fff;
        }

        .input-box input::placeholder {
            color: #eee;
        }

        .btn-submit {
            width: 100%;
            padding: 12px;
            background: linear-gradient(90deg, #36d1dc, #5b86e5);
            border: none;
            border-radius: 10px;
            font-size: 15px;
            font-weight: 600;
            color: #fff;
            cursor: pointer;
        }

        .btn-submit:hover {
            opacity: 0.9;
        }
    </style>
</head>

<body>
<div class="card">
    <h2>Đổi mật khẩu</h2>

    <c:if test="${not empty alert}">
        <div class="alert">
            <i class="fa fa-circle-exclamation"></i> ${alert}
        </div>
    </c:if>

    <form action="${pageContext.request.contextPath}/resetmatkhau" method="post">

        <div class="input-box">
            <i class="fa fa-user"></i>
            <input type="text" name="username" placeholder="Tên đăng nhập" required>
        </div>

        <div class="input-box">
            <i class="fa fa-lock"></i>
            <input type="password" name="newPassword" placeholder="Mật khẩu mới" required>
        </div>

        <div class="input-box">
            <i class="fa fa-lock"></i>
            <input type="password" name="confirmPassword" placeholder="Nhập lại mật khẩu" required>
        </div>

        <button type="submit" class="btn-submit">Đổi mật khẩu</button>
    </form>
</div>
</body>
</html>
