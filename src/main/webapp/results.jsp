<%--
  Created by IntelliJ IDEA.
  User: jadeaustin
  Date: 2/8/22
  Time: 12:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Final Result</title>
</head>
<body>

<c:choose>
    <c:when test="${result}">
        <h1>You win</h1>
    </c:when>
    <c:otherwise>
        <h1>You lose</h1>
    </c:otherwise>
</c:choose>
<a href="/guess">Play again?</a>

</body>
</html>
