<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    // Fetch stored session values
    String username = (String) session.getAttribute("username");
    String loginId = (String) session.getAttribute("loginId");
    String password = (String) session.getAttribute("password");
    String passwordQuestion = (String) session.getAttribute("passwordQuestion");
    String passwordAnswer = (String) session.getAttribute("passwordAnswer");
    String email = (String) session.getAttribute("email");
    String phone = (String) session.getAttribute("phone");
    String dob = (String) session.getAttribute("dob");
    String address = (String) session.getAttribute("address");
    String city = (String) session.getAttribute("city");
    String state = (String) session.getAttribute("state");
    String country = (String) session.getAttribute("country");
    String pin = (String) session.getAttribute("pin");

    if (username == null) {
        response.sendRedirect("index.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

<nav class="navbar navbar-dark bg-dark">
    <div class="container">
        <span class="navbar-brand">Edit Profile</span>
        <a href="home.jsp" class="btn btn-light">Home</a>
    </div>
</nav>

<!--<nav class="navbar navbar-dark bg-dark">
    <div class="container d-flex justify-content-between">
        <span class="navbar-brand">Fashion Store</span>

        <div>
            <a href="profile.jsp" class="btn btn-info me-2">Profile</a>
            <a href="cart.jsp" class="btn btn-warning me-2">Cart</a>
            <a href="index.jsp" class="btn btn-danger">Logout</a>
        </div>
    </div>
</nav>-->

<div class="container mt-4">
    <div class="card shadow p-4">

        <h3 class="mb-3">Update Your Details</h3>

        <!-- Show success message -->
        <%
            String msg = request.getParameter("success");
            if ("1".equals(msg)) {
        %>
            <div class="alert alert-success">Profile updated successfully!</div>
        <% } %>

        <form action="ProfileServlet" method="post">

            <div class="row">
                <div class="col-md-6 mb-3">
                    <label>Username</label>
                    <input type="text" name="username" class="form-control" value="<%=username%>" required>
                </div>
                <div class="col-md-6 mb-3">
                    <label>Login ID</label>
                    <input type="text" name="loginId" class="form-control" value="<%=loginId%>" required>
                </div>
            </div>

            <div class="mb-3">
                <label>New Password (Leave empty if no change)</label>
                <input type="password" name="password" class="form-control">
            </div>

            <div class="row">
                <div class="col-md-6 mb-3">
                    <label>Password Question</label>
                    <input type="text" name="passwordQuestion" class="form-control" value="<%=passwordQuestion%>" readonly>
                </div>

                <div class="col-md-6 mb-3">
                    <label>Password Answer</label>
                    <input type="text" name="passwordAnswer" class="form-control" value="<%=passwordAnswer%>" required>
                </div>
            </div>

            <div class="mb-3">
                <label>Email</label>
                <input type="email" name="email" class="form-control" value="<%=email%>" required>
            </div>

            <div class="mb-3">
                <label>Phone</label>
                <input type="text" name="phone" class="form-control" value="<%=phone%>">
            </div>

            <div class="mb-3">
                <label>Date of Birth</label>
                <input type="date" name="dob" class="form-control" value="<%=dob%>" required>
            </div>

            <div class="mb-3">
                <label>Address</label>
                <textarea name="address" class="form-control"><%=address%></textarea>
            </div>

            <div class="row">
                <div class="col-md-4 mb-3">
                    <label>City</label>
                    <input type="text" name="city" class="form-control" value="<%=city%>">
                </div>

                <div class="col-md-4 mb-3">
                    <label>State</label>
                    <input type="text" name="state" class="form-control" value="<%=state%>">
                </div>

                <div class="col-md-4 mb-3">
                    <label>Country</label>
                    <input type="text" name="country" class="form-control" value="<%=country%>">
                </div>
            </div>

            <div class="mb-3">
                <label>PIN Code</label>
                <input type="text" name="pin" class="form-control" value="<%=pin%>">
            </div>

            <button type="submit" class="btn btn-primary w-100">Update Profile</button>
        </form>

    </div>
</div>

</body>
</html>
