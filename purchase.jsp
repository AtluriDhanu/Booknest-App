<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="Menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Purchase Information </title>
</head>
<body bgcolor="Grey">
<center>
<h2> Customer Purchase </h2>
<hr color="Black">

<form action="savepur" method="post">
<pre>
Customer Name  : <input type="text" name="name">

Customer Age   : <input type="number" name="age">

Book Name      : <input type="text" name="book_name">

Price          : <input type="number" name="price">

Buying Date    : <input type="date" name="buying_date">

Mobile No      : <input type="number" name="mobile">


<input type="submit" value="Save Customer">
</pre>
</form>
</center> 

</body>
</html>
