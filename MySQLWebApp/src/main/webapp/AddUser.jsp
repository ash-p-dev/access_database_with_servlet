<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New User</title>
</head>
<body>
    <h2>Add New User</h2>
    <form action="AddUserServlet" method="post">
        Name: <input type="text" name="name"><br>
        Address: <input type="text" name="address"><br>
        Salary: <input type="text" name="salary"><br>
        <input type="submit" value="Add User">
    </form>
</body>
</html>
