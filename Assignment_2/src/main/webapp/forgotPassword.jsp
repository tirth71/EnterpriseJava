<%-- 
    Document   : forgotPassword
    Created on : 29-Jan-2026, 11:48:21 am
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Forgot Password</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="card shadow">
                <div class="card-header bg-primary text-center">
                    <h4>Forgot Password</h4>
                </div>
                <div class="card-body">
                    <form action="ForgotPasswordServlet" method="post">
                        <label>Login ID</label>
                        <input type="text" name="loginId" class="form-control mb-3" required>

                        <button class="btn btn-primary w-100">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>

