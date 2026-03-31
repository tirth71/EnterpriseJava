<%-- 
    Document   : home
    Created on : 28-Jan-2026, 8:52:49 am
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Shop</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<nav class="navbar navbar-dark bg-dark">
    <div class="container d-flex justify-content-between">
        <span class="navbar-brand">Fashion Store</span>

        <div>
            <a href="profile.jsp" class="btn btn-info me-2">Profile</a>
            <a href="cart.jsp" class="btn btn-warning me-2">Cart</a>
            <a href="index.jsp" class="btn btn-danger">Logout</a>
        </div>
    </div>
</nav>

<div class="container mt-4">
    <div class="row">

        <div class="col-md-3">
            <div class="card">
                <img src="https://vastrakaala.com/cdn/shop/files/5juy4_512.avif?v=1769600714&width=300" class="card-img-top">
                <div class="card-body">
                    <h5>Kurta set With duppata</h5>
                    <p>₹1499</p>
                    <a href="CartServlet?action=add&id=1" class="btn btn-primary">Add to Cart</a>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="card">
                <img src="https://vastrakaala.com/cdn/shop/files/2_8978c7ca-11cf-410a-9796-59dd09f6fd12.jpg?v=1742629008&width=300" class="card-img-top">
                <div class="card-body">
                    <h5>Saree</h5>
                    <p>₹1999</p>
                    <a href="CartServlet?action=add&id=2" class="btn btn-primary">Add to Cart</a>
                </div>
            </div>
        </div>
        
        <div class="col-md-3">
            <div class="card">
                <img src="https://vastrakaala.com/cdn/shop/files/photo_6197508517183735878_y.jpg?v=1750921437&width=400" class="card-img-top">
                <div class="card-body">
                    <h5>Sharara Saree</h5>
                    <p>₹2299</p>
                    <a href="CartServlet?action=add&id=3" class="btn btn-primary">Add to Cart</a>
                </div>
            </div>
        </div>
        
        <div class="col-md-3">
            <div class="card">
                <img src="https://vastrakaala.com/cdn/shop/files/WhatsAppImage2025-09-24at9.38.39AM_3.jpg?v=1758698851&width=400" class="card-img-top">
                <div class="card-body">
                    <h5>Suit Set</h5>
                    <p>₹2099</p>
                    <a href="CartServlet?action=add&id=4" class="btn btn-primary">Add to Cart</a>
                </div>
            </div>
        </div>

    </div>
</div>

</body>
</html>
