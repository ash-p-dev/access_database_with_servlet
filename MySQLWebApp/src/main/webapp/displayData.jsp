<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.example.servlets.Data" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Display Data</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp">SQL App</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
               <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="<%= request.getContextPath() %>/GetDataServlet">Home</a>
                    </li>
                <li class="nav-item">
                <a class="nav-link active"href="<%= request.getContextPath() %>/about.jsp">About</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Dropdown
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" aria-disabled="true">Disabled</a>
                </li>
            </ul>
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>


    <div class="container mt-4">
        <button onclick="window.location.href='<%= request.getContextPath() %>/AddUser.jsp';" class="btn btn-primary mb-3">Add New User</button>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Salary</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
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
                        <form action="<%= request.getContextPath() %>/EditServlet" method="post">
                            <input type="hidden" name="id" value="<%= data.getId() %>">
                            <input type="submit" value="Edit" class="btn btn-sm btn-warning">
                        </form>
                        <form action="<%= request.getContextPath() %>/DeleteServlet" method="post">
                            <input type="hidden" name="id" value="<%= data.getId() %>">
                            <input type="submit" value="Delete" class="btn btn-sm btn-danger">
                        </form>
                    </td>
                </tr>
                <% 
                        }
                    }
                %>
            </tbody>
        </table>
    </div>
    <footer class="bg-dark text-light text-center py-2 mt-3">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p>&copy; 2024 MyWebsite. All rights reserved.</p>
                </div>
            </div>
        </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>

