<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ include file="Menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> List of Purchase Information </title>
</head>
<body bgcolor="Grey">
<center>
<h2> List of Purchase </h2>
<hr color="Black">
<table border=3>

<tr>
<th> Customer Name </th>
<th> Customer Age </th>
<th> Book Name </th>
<th> Price </th>
<th> Buying Date </th>
<th> Mobile No </th>
<th> Action </th>
</tr>

<c:forEach var="listallpurch" items="${listallpurch}">
<tr>
<td> ${listallpurch.name} </td>
<td> ${listallpurch.age} </td>
<td> ${listallpurch.book_name} </td>
<td> ${listallpurch.price} </td>
<td> ${listallpurch.buying_date} </td>
<td> ${listallpurch.mobile} </td>
<td> <a href="deletepur?id=${listallemp.id}"> Delete Purchaser </a></td> 
</tr>
 </c:forEach>

</table>
</center>
</body>
</html>
