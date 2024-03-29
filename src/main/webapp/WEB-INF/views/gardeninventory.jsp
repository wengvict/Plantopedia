<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/sandstone/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-G3Fme2BM4boCE9tHx9zHvcxaQoAkksPQa/8oyn1Dzqv7gdcXChereUsXGx6LtbqA"
	crossorigin="anonymous">

<meta charset="UTF-8">
<title>My Garden || Plantopedia</title>
</head>
<body>

<%@ include file="partials/navbar.jsp"%>

<h1>Your Plant Inventory</h1>
<table border=3 class="table table-hover">
<thead>
<tr class="table-success">
<td>Name</td>
<td>Water</td>
<td>Last Water Date</td>
<td>Next Water Date</td>
<td>Remove Plant</td>
</tr>

</thead>
<tbody>
<c:forEach items="${ p }" var="t">
<tr>
<td>${ t.plantname }</td>

<td><a href="water?id=${ t.id }" class="btn btn-info"> Water</a>
</td>
<td>${ t.formattedDate }
<br>
<a href="manualwater?future=0&id=${ t.id }" class="btn btn-info">Add date manually</a>
</td>
<td>${ t.nextDateFormatted }
<br>
<a href="manualwater?future=1&id=${ t.id }" class="btn btn-info">Add date manually</a>
</td>
<td><a href="removeplant?id=${ t.id }" class="btn btn-danger">Delete</a></td>
</tr>
</c:forEach>
</tbody>
</table>
<br>
<form action="addplantfrominventory">
Plant Name: <input type=text name=plantname>
<input type="submit" value="add">
</form>



<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>