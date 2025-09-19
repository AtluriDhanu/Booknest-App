<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="Menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Inventory Information </title>
</head>
<body bgcolor="Grey">
<center>
<h2> Available Books </h2>
<hr color="Black">

<form action="saveinv" method="post">
<pre>
Title               : <input type="text" name="title">
 
Author Name         : <input type="text" name="author_name">

Genre               : <input type="text" name="genre">

Price               : <input type="number" name="price">
 
Stock Availability  : <input type="number" name="stock_availability">

Published Date      : <input type="date" name="published_date">


<input type="submit" value="Save Book">
</pre>
</form>
</center>

</body>
</html>
