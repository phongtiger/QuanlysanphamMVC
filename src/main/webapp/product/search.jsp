<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Products List</title>
</head>
<body>
<h1>Products</h1>
<form method="post" action="/products?action=search">
    <fieldset>
        <legend>Search</legend>
        <table>
            <tr>
                <td>Tim kiem</td>
                <td><input type="text" name="search" id="search" placeholder="Nhap ten can tim kiem"></td>
                <td><input type="submit" value="Search"></td>
            </tr>
        </table>
    </fieldset>
</form>
<table border="1">
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Detail</td>
        <td>Category</td>
        <td>Amount</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="product">
        <tr>
            <td>${product.getId()}</td>
            <td><a href="/products?action=view&id=${product.getId()}">${product.getName()}</a></td>
            <td>${product.getDetail()}</td>
            <td>${product.getCategory()}</td>
            <td>${product.getAmount()}</td>
            <td><a href="/products?action=edit&id=${product.getId()}">Edit</a></td>
            <td><a href="/products?action=delete&id=${product.getId()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>