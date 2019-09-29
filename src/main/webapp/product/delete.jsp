
<%--
  Created by IntelliJ IDEA.
  User: phongtiger
  Date: 26/09/2019
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <head>
        <title>Deleting product</title>
    </head>
    <body>
    <h1>Delete product</h1>
    <p>
        <a href="/products">Back to customer list</a>
    </p>
    <form method="post">
        <h3>Are you sure?</h3>
        <fieldset>
            <legend>Product information</legend>
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
                    <td>Detai: </td>
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
                <tr>
                    <td><input type="submit" value="Delete product"></td>
                    <td><a href="/products">Back to customer list</a></td>
                </tr>
            </table>
        </fieldset>
    </form>
    </body>
    </html>
