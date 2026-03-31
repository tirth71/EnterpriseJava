<%-- 
    Document   : register
    Created on : 28-Jan-2026, 8:52:22 am
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int captcha = (int)(Math.random() * 9000) + 1000;
    session.setAttribute("captcha", captcha);
%>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-4">
    <div class="card shadow">
        <div class="card-header bg-primary text-white text-center">
            <h4>User Registration</h4>
        </div>
        <div class="card-body">
            <form action="RegisterServlet" method="post">

                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label>Username</label>
                        <input type="text" name="username" class="form-control" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Login ID</label>
                        <input type="text" name="loginId" class="form-control" required>
                    </div>
                </div>

                <div class="mb-3">
                    <label>Password</label>
                    <input type="password" name="password" class="form-control" required>
                </div>

                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label>Password Question</label><br>
                        <input type="text" name="passwordQuestion" class="form-control" value="What is your best friend's name?" readonly>                    
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Password Answer</label>
                        <input type="text" name="passwordAnswer" class="form-control" required>
                    </div>
                </div>

                <div class="mb-3">
                    <label>Email</label>
                    <input type="email" name="email" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label>Phone</label>
                    <input type="text" name="phone" class="form-control">
                </div>

                <div class="mb-3">
                    <label>Date of Birth</label>
                    <input type="date" name="dob" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label>Address</label>
                    <textarea name="address" class="form-control"></textarea>
                </div>

                <div class="row">
                    <div class="col-md-4 mb-3">
                        <label>City</label>
                        <input type="text" name="city" class="form-control">
                    </div>
                    <div class="col-md-4 mb-3">
                        <label>State</label>
                        <input type="text" name="state" class="form-control">
                    </div>
                    <div class="col-md-4 mb-3">
                        <label>Country</label>
                        <input type="text" name="country" class="form-control">
                    </div>
                </div>

                <div class="mb-3">
                    <label>PIN Code</label>
                    <input type="text" name="pin" class="form-control">
                </div>

                <div class="mb-3">
                    <label>CAPTCHA: <strong><%=captcha%></strong></label>
                    <input type="text" name="captchaInput" class="form-control" required>
                </div>

                <button type="submit" class="btn btn-primary w-100">Register</button>
            </form>
        </div>
    </div>
</div>

</body>
</html>
