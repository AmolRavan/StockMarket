
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<style type="text/css">
body {
	background-image:
		url('https://cdn.crunchify.com/wp-content/uploads/2013/03/Crunchify.bg_.300.png');
}
</style>


<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.10.1.min.js"></script>

<script type="text/javascript">
	function getComponies() {
		var str = document.getElementById('componyName').value;
		$.ajax({
			type : "GET",
			data : str,
			url : 'searchCompony',
			success : function(data) {
				$('#componyList').hide();
				$('#componyData').html(data);
			}
		});
	}
</script>

<style type="text/css">
.myTd {
	width: 200px;
}
</style>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Stock Market</title>
</head>
<body>

	<div align="center">

		<h1>Stock Market</h1>

		<input type="text" id="componyName" onchange="getComponies()"
			placeHolder="Search Compony Here" /> <br>


		<div style="width: 80%">
			<div style="float: left; width: 40%" id="componyData"></div>
			<div style="float: right; width: 40%" id="result"></div>
		</div>
		<br> <br>

		<div id="componyList">
			<c:set var="compony" value="${compony}" />
			<%-- <c:if test="${compony not empty}"> --%>
			<table style="color: green">
				<c:forEach items="${pList}" var="com" varStatus="status">

					<tr>
						<th class="myTd">Compony Name</th>
						<td class="myTd">${com.name}</td>
					</tr>

					<tr>
						<th class="myTd">Current rate</th>
						<td class="myTd">${com.currentRate}</td>
					</tr>
					
					<tr>
						<th class="myTd">Up By</th>
						<td class="myTd">${(com.currentRate -com.componyHistory.yday)/100}%</td>
					</tr>

				</c:forEach>
			</table>

			<table style="color: red">
				<c:forEach items="${lList}" var="com" varStatus="status">

					<tr>
						<th class="myTd">Compony Name</th>
						<td class="myTd">${com.name}</td>
					</tr>

					<tr>
						<th class="myTd">Current rate</th>
						<td class="myTd">${com.currentRate}</td>
					</tr>
					
					<tr>
						<th class="myTd">Down By</th>
						<td class="myTd">${(com.currentRate - com.componyHistory.yday)/100}%</td>
					</tr>

				</c:forEach>
			</table>
			<%-- 	</c:if> --%>
		</div>
	</div>
</body>
</html>