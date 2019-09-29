<%--
  Created by IntelliJ IDEA.
  User: tuphong
  Date: 9/29/19
  Time: 11:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View customer</title>
</head>
<body>
<h1>Customer details</h1>
<p>
    <a href="/products">Back to customer list</a>
</p>
<table>
    <tr>
        <td>Id: </td>
        <td>${requestScope["product"].getId()}</td>
    </tr>
    <tr>
        <td>Name: </td>
        <td>${requestScope["product"].getName()}</td>
    </tr>
    <tr>
        <td>Detail: </td>
        <td>${requestScope["product"].getDetail()}</td>
    </tr>
    <tr>
        <td>Category: </td>
        <td>${requestScope["product"].getCategory()}</td>
    </tr>
    <tr>
        <td>Amount: </td>
        <td>${requestScope["product"].getAmount()}</td>
    </tr>
</table>
</body>
</html>
