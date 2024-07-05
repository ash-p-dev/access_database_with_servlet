<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Record</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        .form-group {
            margin-bottom: 1.5rem;
        }
        body {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        footer {
            margin-top: auto;
            background-color: #343a40; /* Dark color */
            color: #f8f9fa; /* Light color */
            padding: 10px 0;
            text-align: center;
        }
    </style>
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
                        <a class="nav-link active" href="<%= request.getContextPath() %>/GetDataServlet">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active"href="<%= request.getContextPath() %>/about.jsp">About</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Dropdown
                        </a>
                        <ul class="dropdown-menu">
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
                <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
    <div class="container mt-4">
        <h2>Edit Record:</h2>
        <form action="UpdateServlet" method="post">
    <div class="form-group">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" class="form-control" value="<%= request.getAttribute("name") != null ? request.getAttribute("name") : "" %>">
    </div>
    <div class="form-group">
        <label for="address">Address:</label>
        <input type="text" id="address" name="address" class="form-control" value="<%= request.getAttribute("address") != null ? request.getAttribute("address") : "" %>">
    </div>
    <div class="form-group">
        <label for="salary">Salary:</label>
        <input type="text" id="salary" name="salary" class="form-control" value="<%= request.getAttribute("salary") != null ? request.getAttribute("salary") : "" %>">
    </div>
    <!-- Include hidden input field for ID -->
    <input type="hidden" id="id" name="id" value="<%= request.getParameter("id") %>">
    <button type="submit" class="btn btn-primary">Update</button>
</form>

    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    <footer class="footer mt-auto py-3 bg-dark text-light">
        <div class="container text-center">
            <span>&copy; 2024 MyWebsite. All rights reserved.</span>
        </div>
    </footer>
</body>
</html>
