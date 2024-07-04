<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.example.servlets.Data" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Display Data</title>
</head>
<body>
    <h2>Database Data:</h2>
    <button onclick="window.location.href='AddUser.jsp';">Add New User</button>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Address</th>
            <th>Salary</th>
            <th>Actions</th> <!-- New column for Actions -->
        </tr>
        <% 
            List<Data> dataList = (List<Data>) request.getAttribute("dataList");
            if (dataList != null) {
                for (Data data : dataList) {
        %>
        <tr>
            <td><%= data.getId() %></td>
            <td><%= data.getName() %></td>
            <td><%= data.getAddress() %></td>
            <td><%= data.getSalary() %></td>
            <td>
                <form action="EditServlet" method="post">
                    <input type="hidden" name="id" value="<%= data.getId() %>">
                    <input type="submit" value="Edit">
                </form>
                <form action="DeleteServlet" method="post">
                    <input type="hidden" name="id" value="<%= data.getId() %>">
                    <input type="submit" value="Delete">
                </form>
            </td>
        </tr>
        <% 
                }
            }
        %>
    </table>
</body>
</html>
