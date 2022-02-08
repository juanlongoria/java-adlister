<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
<c:if test="${isDarkMode}">
<body style="background: black">
</c:if>
<jsp:include page="/partials/navbar.jsp" />
<div class="container">
    <h1>Viewing your profile.</h1>
    <button id="dark-mode">Dark Mode</button>
</div>
</body>
</html>
