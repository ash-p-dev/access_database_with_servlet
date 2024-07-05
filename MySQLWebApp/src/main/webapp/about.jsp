<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About</title>
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
                    <a class="nav-link active" href="<%= request.getContextPath() %>/about.jsp">About</a>
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
    <div class="row">
        <div class="col-md-8">
   <h2 class="text-secondary border-bottom border-black border-3">About My Project</h2>
<p>Welcome to my project! My goal is to showcase the robust capabilities of Java Servlets, JSP (JavaServer Pages), and MySQL in building dynamic web applications. Leveraging these technologies, I have implemented a comprehensive CRUD (Create, Read, Update, Delete) system.</p>

<table class="table table-striped border border-black border-3">
    <thead>
        <tr>
            <th>Technology</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Java Servlets</td>
            <td>Handles HTTP requests and responses, ensuring seamless interaction between the user interface and backend logic.</td>
        </tr>
        <tr>
            <td>JSP (JavaServer Pages)</td>
            <td>Dynamically generates web pages, ensuring a responsive and user-friendly interface.</td>
        </tr>
        <tr>
            <td>MySQL</td>
            <td>Backend database for secure and efficient data storage, supporting CRUD operations.</td>
        </tr>
        <tr>
            <td>Bootstrap</td>
            <td>CSS framework enhancing aesthetics and responsiveness across various devices and screen sizes.</td>
        </tr>
    </tbody>
</table>

<p>Feel free to explore my website and experience firsthand how these technologies combine to deliver a robust and user-friendly web application. Try out the CRUD functionalities and see how easily you can manage data with my intuitive interface!</p>

        </div>
        <div class="col-md-4">
            <div class="card">
                <img src="https://via.placeholder.com/150" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Ashish Patil</h5>
                    <p class="card-text">Developer</p>
                </div>
            </div>
        </div>
    </div>
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
