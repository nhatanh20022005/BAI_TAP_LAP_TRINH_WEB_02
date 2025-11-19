<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thêm Category</title>
</head>
<body>
<h1>Thêm Category</h1>

<form action="${pageContext.request.contextPath}/admin/category/add"
      method="post"
      enctype="multipart/form-data">

    <p>
        <label>Tên category:</label><br>
        <input type="text" name="name" required>
    </p>

  

    <p>
        <label>Ảnh (icon):</label><br>
        <%-- TÊN PHẢI LÀ "images" cho khớp với req.getPart("images") --%>
        <input type="file" name="images" accept="image/*">
    </p>

    <p>
        <button type="submit">Lưu</button>
        <a href="${pageContext.request.contextPath}/admin/category">Huỷ</a>
    </p>
</form>

</body>
</html>
