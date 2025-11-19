<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách Category</title>
</head>
<body>
<h1>Danh sách Category</h1>

<p>
    <a href="${pageContext.request.contextPath}/admin/category/add">+ Thêm category mới</a>
</p>

<c:if test="${empty categories}">
    <p>Chưa có category nào.</p>
</c:if>

<c:if test="${not empty categories}">
    <table border="1" cellpadding="5" cellspacing="0">
        <thead>
        <tr>
            <th>ID</th>
            <th>Tên</th>
            <th>Ảnh</th>
            <th>Hành động</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="c" items="${categories}">
            <tr>
                <td>${c.id}</td>
                <td>${c.name}</td>
                <td>
                    <c:if test="${not empty c.images}">
                        <%-- tuỳ bạn map url ảnh, ví dụ lưu trong /uploads --%>
                        <img src="${pageContext.request.contextPath}/image?fname=${c.images}"
         alt="${c.name}" width="60" height="60">
                    </c:if>
                </td>
                <td>
                    <a href="${pageContext.request.contextPath}/admin/category/edit?id=${c.id}">Sửa</a>
                    |
                    <a href="${pageContext.request.contextPath}/admin/category/delete?id=${c.id}"
                       onclick="return confirm('Xoá category này?');">Xoá</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</c:if>

</body>
</html>
