<%--
  Created by IntelliJ IDEA.
  User: jadeaustin
  Date: 2/7/22
  Time: 1:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Make an album</title>
</head>
<body>
<form action="/albums/create" method="post">
  <label for="name">Name of Album:</label>
  <input name="name" id="name" type="text">
  <br />
  <label for="artist">Name of Artist:</label>
  <input name="artist" id="artist" type="text">
  <br />
  <label for="releaseDate">Year of Release:</label>
  <input name="releaseDate" id="releaseDate" type="text">
  <br />
  <label for="sales">Sales in Millions:</label>
  <input name="sales" id="sales" type="text">
  <br />
  <label for="genre">Genre of Music:</label>
  <input name="genre" id="genre" type="text">
  <br />
  <input type="submit" value="Create Album">


</form>

</body>
</html>
