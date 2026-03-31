<%-- 
    Document   : index
    Created on : 28-Jan-2026, 8:51:52 am
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Fashion Store</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">Fashion Store</a>
        <div>
            <a href="login.jsp" class="btn btn-outline-light me-2">Login</a>
            <a href="register.jsp" class="btn btn-warning">Register</a>
        </div>
    </div>
</nav>

<div class="container mt-5 text-center">
    <h1 class="display-5">Welcome to Fashion Store 🛍️</h1>
    <p class="lead">Shop the latest fashion with exciting discounts</p>

    <img src="https://t3.ftcdn.net/jpg/18/61/11/64/240_F_1861116400_3YbLd0YzQ2wCaDpuCHdTvnYmvawZFH4M.jpg"
         class="img-fluid rounded shadow mt-4" width="700">

    <div class="mt-4">
        <a href="login.jsp" class="btn btn-primary btn-lg">Start Shopping</a>
    </div>
</div>

<footer class="bg-dark text-white text-center p-3 mt-5">
    © 2026 Fashion Store | All Rights Reserved
</footer>

</body>
</html>

