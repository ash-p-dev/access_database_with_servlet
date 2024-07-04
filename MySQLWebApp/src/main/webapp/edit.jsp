<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Record</title>
</head>
<body>
    <h2>Edit Record:</h2>
    <form action="UpdateServlet" method="post">
        <input type="hidden" name="id" value="<%= request.getAttribute("id") %>">
        Name: <input type="text" name="name" value="<%= request.getAttribute("name") %>"><br>
        Address: <input type="text" name="address" value="<%= request.getAttribute("address") %>"><br>
        Salary: <input type="text" name="salary" value="<%= request.getAttribute("salary") %>"><br>
        <input type="submit" value="Update">
    </form>
</body>
</html>
