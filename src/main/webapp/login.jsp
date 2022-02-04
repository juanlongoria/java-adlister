<%--
  Created by IntelliJ IDEA.
  User: jadeaustin
  Date: 2/3/22
  Time: 4:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.Arrays"%>
<html>
<head>
    <title>Login Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

</head>
<body>
<%

    if(request.getMethod().equalsIgnoreCase("POST")){
        if(request.getParameter("username").equals("admin") && request.getParameter("password").equals("password")) {
        response.sendRedirect("/profile.jsp");
    } else {
        response.sendRedirect("/login.jsp");
    }
    }

%>

<jsp:include page="partials/navbar.jsp"/>
<jsp:include page="partials/scripts.jsp"/>


<form method = "post" action="/login.jsp">
    <div class="form-group">
        <label for="username">Email address</label>
        <input type="email" class="form-control" id="username" name="username" aria-describedby="emailHelp">
        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
        <input type="password" class="form-control" id="exampleInputPassword1">
    </div>
    <div class="form-group form-check">
        <input type="checkbox" class="form-check-input" id="exampleCheck1">
        <label class="form-check-label" for="exampleCheck1">Check me out</label>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>

<%--OTHER WAY TO REDIRECT--%>
<c:choose>
    <c:when test='$(param.username.equals("admin") && param.password.equals("password")}'>
        <% response.sendRedirect("/profile.jsp"); %>


    </c:when>
<%--    <c:otherwise>--%>
<%--        <% response.sendRedirect("/login.jsp");%>--%>
<%--    </c:otherwise>--%>

</c:choose>





<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>
