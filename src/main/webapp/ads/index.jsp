<%--
  Created by IntelliJ IDEA.
  User: jadeaustin
  Date: 2/8/22
  Time: 11:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Ads</title>
</head>
<body>
<c:forEach var="ad" items="${ads}">
    <div class="ad">
        <h1>${ad.title}</h1>
        <p>${ad.description}</p>
    </div>
    <div class="ad">
        <h1>Couch</h1>
        <p>Dusty Old Couch $99</p>
    </div>
    <div class="ad">
        <h1>Socks</h1>
        <p>Smelly Old Socks $5</p>
    </div>
    <div class="ad">
        <h1>Laptop</h1>
        <p>Broken Old Laptop $300</p>
    </div>
    <div class="ad">
        <h1>${ad.title}</h1>
        <p>${ad.description}</p>
    </div>

</c:forEach>
</body>
</html>
