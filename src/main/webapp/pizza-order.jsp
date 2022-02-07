<%--
  Created by IntelliJ IDEA.
  User: jadeaustin
  Date: 2/4/22
  Time: 12:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.Arrays"%>
<html>
<head>
    <title>Pizza-Order</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="css/intro-to-bootstrap-lec.css">
    <script src="https://kit.fontawesome.com/5bdcb73ea0.js" crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#"style="color: grey">Pizza world</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#"style="color: grey">Order online <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Menu</a>
            </li>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Zip code" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit"style="color: grey; border-color: lightgrey">Search stores near you!</button>
            </form>
            <!--<li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Dropdown
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Something else here</a>
                </div>
            </li>--->
        </ul>

        <ul class="nav justify-content-end">
            <!--<li class="nav-item"><a class="nav-link" href="#"><i class="fas fa-user-plus"></i></a></li>-->
            <li class="nav-item">
                <a class="nav-link" href="#" tabindex="-1" aria-disabled="true" style="color: grey"><i class="fas fa-user-plus"></i> Sign up</a>
            </li>
        </ul>



    </div>
</nav>
<div class="d-sm-none d-md-block d-none d-sm-block">
    <div class="jumbotron jumbotron-fluid" style="background-image: url(img/jumbotron_image.png); background-size: cover;">

        <div class="container">
            <h1 class="display-4">Welcome to Pizza World!</h1>
            <!--<p class="lead">This is a modified jumbotron that occupies the entire horizontal space of its parent.</p>-->
        </div>
    </div>
</div>
<h2> Build your own pizza!<br></h2>

<form action="/pizza-order" method="POST">
<label for="crust">Crust</label>
<select name ="crust" id="crust">
    <option value="none" selected disabled hidden>Choose Crust</option>
    <option value="thin">Thin & Crispy</option>
    <option value="stuffed">Stuffed Crust</option>
    <option value="pan">Pan</option>
    <option value="deep_dish">Deep Dish</option>
    <option value="original">Original</option>
</select>

<label for="sauce">Sauce</label>
<select name="sauce" id="sauce">
    <option value="none" selected disabled hidden>Choose Sauce</option>
    <option value="marinara">Marinara</option>
    <option value="tomatoe">Tomatoe</option>
    <option value="alfredo">Alfredo</option>
    <option value="no_sauce">No Sauce</option>
    <option value="original">Original</option>


</select>

<label for="size">Size</label>
<select name="size" id="size">
    <option value="none" selected disabled hidden>Choose Size</option>
    <option value="personal">Personal</option>
    <option value="small">Small</option>
    <option value="medium">Medium</option>
    <option value="large">Large</option>
    <option value="x-large">X-Large</option>
</select>
<br>

<h3>Style of Pizza</h3>
<input type="checkbox" id="style1" name="style" value="cheese">
<label for="style1">Cheese</label>
<input type="checkbox" id="style2" name="style" value="pepperoni">
<label for="style2">Pepperoni</label>
<input type="checkbox" id="style3" name="style" value="meat_lovers">
<label for="style3">Meat Lovers</label>
<input type="checkbox" id="style4" name="style" value="supreme">
<label for="style4">Supreme</label>
<input type="checkbox" id="style5" name="style" value="margherita">
<label for="style5">Margherita</label>
<input type="checkbox" id="style6" name="style" value="veggies">
<label for="style6">Veggies</label>
<br>


<label for="address">Enter Delivery Address</label>
<input type="text" id="address" name="address">

<input type="submit" value="submit">

</form>

<%--<ul class="nav nav-tabs">--%>
<%--    <li class="nav-item active">--%>
<%--        <a class="nav-link" href="#"style="color: lightskyblue"><span class="badge badge-light" style="color: white; background-color: darkgrey">1</span> Size and crust</a>--%>
<%--    </li>--%>
<%--    <li class="nav-item">--%>
<%--        <a class="nav-link" href="#" style="color: lightskyblue"><span class="badge badge-light" style="color: white; background-color: darkgrey">2</span> Cheese and Sauce</a>--%>
<%--    </li>--%>
<%--    <li class="nav-item">--%>
<%--        <a class="nav-link" href="#" style="color: lightskyblue"><span class="badge badge-light" style="color: white; background-color: darkgrey">3</span> Toppings</a>--%>
<%--    </li>--%>
<%--</ul>--%>

<%--<div class="card text-center">--%>
<%--    <div class="card-header" align="left" style="background: dodgerblue; color:white">--%>
<%--        Choose size and crust--%>
<%--    </div>--%>

<%--    <div class="card-body" align="left">--%>
<%--        <div class="card" style="width: 50rem;">--%>
<%--            <div class="card-header">--%>
<%--                Hand Tossed--%>
<%--            </div>--%>
<%--            <ul class="list-group list-group-flush">--%>
<%--                <li class="list-group-item">Garlic seasoned crust with a rich, buttery taste.</li>--%>
<%--                <li class="list-group-item">Small (10")</li>--%>
<%--                <li class="list-group-item">Medium (12")</li>--%>
<%--            </ul>--%>
<%--        </div>--%>

<%--        <div class="card-body" align="left">--%>
<%--            <div class="card" style="width: 50rem;">--%>
<%--                <div class="card-header">--%>
<%--                    Crispy Thin--%>
<%--                </div>--%>
<%--                <ul class="list-group list-group-flush">--%>
<%--                    <li class="list-group-item">Thin enough for optimum crispy to crunchy ratio.</li>--%>
<%--                    <li class="list-group-item">Medium (12")</li>--%>
<%--                    <li class="list-group-item">Large (14")</li>--%>
<%--                </ul>--%>
<%--            </div><br>--%>

<%--            <div class="card-footer text-muted" align="right">--%>
<%--                <a href="#" class="btn btn-primary">Next Step ></a>--%>
<%--            </div>--%>

<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<!---<div class="card" style="width: 18rem;">
    <div class="card-header">
        Featured
    </div>
    <ul class="list-group list-group-flush">
        <li class="list-group-item">Cras justo odio</li>
        <li class="list-group-item">Dapibus ac facilisis in</li>
        <li class="list-group-item">Vestibulum at eros</li>
    </ul>
</div>--->


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>




</body>
</html>
