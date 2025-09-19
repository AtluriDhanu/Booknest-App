<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ include file="Menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> List of Books Information </title>
</head>
<body bgcolor="Grey">
<center>
<h2> List of Books </h2>
<hr color="Black">
<table border=3>

<tr>
<th> Title </th>
<th> Author Name </th>
<th> Genre </th>
<th> Price </th>
<th> Stock Availability </th>
<th> Published Date </th>
<th> Action </th>
</tr>

<c:forEach var="listallinvent" items="${listallinvent}">
<tr>
<td> ${listallinvent.title} </td>
<td> ${listallinvent.author_name} </td>
<td> ${listallinvent.genre} </td>
<td> ${listallinvent.price} </td>
<td> ${listallinvent.stock_availability} </td>
<td> ${listallinvent.published_date} </td>
<td> <a href="deleteinv?id=${listallemp.id}"> Delete Book </a></td> 
</tr>
</c:forEach>

</table>
</center>
</body>
</html>
