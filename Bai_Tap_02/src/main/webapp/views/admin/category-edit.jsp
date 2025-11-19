<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sửa Category</title>
</head>
<body>
<h1>Sửa Category</h1>

<form action="${pageContext.request.contextPath}/admin/category/edit"
      method="post"
      enctype="multipart/form-data">

    <%-- id gửi lên để update --%>
    <input type="hidden" name="id" value="${category.id}">
    <%-- giữ tên file cũ nếu không chọn file mới --%>
    <input type="hidden" name="oldImage" value="${category.images}">

    <p>
        <label>Tên category:</label><br>
        <input type="text" name="name" value="${category.name}" required>
    </p>

 

    <p>
        <label>Ảnh hiện tại:</label><br>
        <c:if test="${not empty category.images}">
            <img src="${pageContext.request.contextPath}/image?fname=${category.images}"
                 alt="${category.name}" width="60" height="60">
        </c:if>
        <c:if test="${empty category.images}">
            <span>Chưa có ảnh</span>
        </c:if>
    </p>

    <p>
        <label>Chọn ảnh mới (nếu muốn đổi):</label><br>
        <%-- TÊN PHẢI LÀ "imageFile" cho khớp req.getPart("imageFile") --%>
        <input type="file" name="imageFile" accept="image/*">
    </p>

    <p>
        <button type="submit">Cập nhật</button>
        <a href="${pageContext.request.contextPath}/admin/category">Huỷ</a>
    </p>
</form>

</body>
</html>
