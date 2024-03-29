<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/sandstone/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-G3Fme2BM4boCE9tHx9zHvcxaQoAkksPQa/8oyn1Dzqv7gdcXChereUsXGx6LtbqA"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Toxic Search Result || Plantopedia</title>
</head>
<body>
	<%@ include file="partials/navbar.jsp"%>

	<br>
	<h5>Toxic plant search results for "${ userstring }".</h5>

	<table class="table table-hover">

		<thead>

			<tr class="table-success">

				<td>Name</td>

			</tr>

		</thead>

		<tbody>

			<c:forEach items="${plantsearch }" var="toxplant">

				<tr>

					<td><a href="/toxicdetails?id=${toxplant.id }">${toxplant.commonname}</a></td>



				</tr>

			</c:forEach>

		</tbody>

	</table>


</body>
</html>