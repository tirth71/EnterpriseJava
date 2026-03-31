<%-- 
    Document   : cart
    Created on : 28-Jan-2026, 8:52:37 am
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Shopping Cart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h3>Your Shopping Cart</h3>

    <table class="table table-bordered">
        <tr>
            <th>Product</th>
            <th>Price</th>
            <th>Action</th>
        </tr>
        <tr>
            <td>T-Shirt</td>
            <td>₹499</td>
            <td>
                <a href="#" class="btn btn-danger btn-sm">Remove</a>
            </td>
        </tr>
    </table>

    <h4>Total: ₹499</h4>
    <a href="CheckoutServlet" class="btn btn-success">Checkout</a>
</div>

</body>
</html>

