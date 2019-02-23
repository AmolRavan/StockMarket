
<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<script type="text/javascript">
	function getComponyData() {
		$.ajax({
			url : 'componyStock',
			success : function(data) {
				$('#componyList').hide();
				$('#componyData').html(data);
			}
		});
	}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<select style="width: 250px;"  name="compony" onchange="getComponyData()">
			<c:forEach var="listValue" items="${cList}">
				<option value="${listValue}">${listValue}</option>
			</c:forEach>
		</select>
	</div>
</body>
</html>