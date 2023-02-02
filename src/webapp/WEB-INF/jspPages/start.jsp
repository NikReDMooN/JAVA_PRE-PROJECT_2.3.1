<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/jsp; charset=ISO-8859-1">
    <title>Customer Manager</title>
</head>
<body>
<div align="center">
    <h2>Customer Manager</h2>
    <h3><a href="${pageContext.request.contextPath}/new">new User</a></h3>
    <table border="1" cellpadding="5">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>E-mail</th>
            <th>Address</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${tableList}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.firstName}</td>
                <td>${user.lastName}</td>
                <td>${user.email}</td>
                <td>
<%--                    <a href="/edit?id=${user.id}">Edit</a>

                    <a href="/delete?id=${user.id}">Delete</a>--%>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>