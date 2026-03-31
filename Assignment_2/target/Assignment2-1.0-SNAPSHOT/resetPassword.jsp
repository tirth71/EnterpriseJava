<%-- 
    Document   : resetPassword
    Created on : 29-Jan-2026, 11:48:37 am
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String question = (String) session.getAttribute("question");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Reset Password</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="card shadow">
                <div class="card-header bg-primary text-white text-center">
                    <h4>Reset Password</h4>
                </div>
                <div class="card-body">
                    <form action="ResetPasswordServlet" method="post">

                        <label>Security Question</label>
                        <input type="text" class="form-control mb-3"
                               value="<%= question %>" readonly>

                        <label>Answer</label>
                        <input type="text" name="answer" class="form-control mb-3" required>

                        <label>New Password</label>
                        <input type="password" name="newPassword" class="form-control mb-3" required>

                        <button class="btn btn-primary w-100">Reset Password</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>

