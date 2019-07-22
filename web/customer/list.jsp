<%--
  Created by IntelliJ IDEA.
  User: nguyenha265
  Date: 22/07/2019
  Time: 09:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Customer List</title>
    <style>
        table {
            border-collapse: collapse;
            border-style: solid;
            position: absolute;
            top: 200px;
            left: 400px;
            box-shadow: 1px 1px 10px 10px #3965ff;
        }

        th, td {
            border-bottom: 1px solid black;
            width: 250px;
            text-align: center;
            line-height: 20px;
        }

        p {
            font-size: 30px;
            position: absolute;
            top: 100px;
            left: 400px;
            color: #3965ff;
        }
        h1 {
            position: absolute;
            top: 50px;
            left: 400px;
            color: crimson;
        }
    </style>
</head>
<body>
<h1>Customers</h1>
<p>
    <a href="customers?action=create">Create new customer</a>
</p>
<table border="1">
    <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Address</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items='${requestScope["customers"]}' var="customer">
        <tr>
            <td><a href="customers?action=view&id=${customer.getId()}">${customer.getName()}</a></td>
            <td>${customer.getEmail()}</td>
            <td>${customer.getAddress()}</td>
            <td><a href="customers?action=edit&id=${customer.getId()}">edit</a></td>
            <td><a href="customers?action=delete&id=${customer.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
