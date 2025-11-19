<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Đổi mật khẩu</title>
</head>
<body>
<h2>Đổi mật khẩu</h2>

<c:if test="${not empty alert}">
    <p style="color:red">${alert}</p>
</c:if>

<form action="${pageContext.request.contextPath}/resetmatkhau" method="post">
    <div>
        <label>Tên đăng nhập:</label>
        <input type="text" name="username" required>
    </div>
    <div>
        <label>Mật khẩu mới:</label>
        <input type="password" name="newPassword" required>
    </div>
    <div>
        <label>Nhập lại mật khẩu:</label>
        <input type="password" name="confirmPassword" required>
    </div>
    <button type="submit">Đổi mật khẩu</button>
</form>

</body>
</html>
