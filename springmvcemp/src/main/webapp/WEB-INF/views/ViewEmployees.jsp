<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="2">
		<tr><th>Emp Code<TH>Emp Name<TH>Salary</TH></tr>
		<c:forEach var="emp" items="${employees}"> 
			<tr>
				<td><c:out value="${emp.empcode}"></c:out></td>
				<td><c:out value="${emp.empname}"></c:out></td>
				<td><c:out value="${emp.salary}"></c:out></td>
				
				<td><a href="updateemployees?empcode=${emp.empcode}">Update</a></td>
				<td><a href="deleteemployees?empcode=${emp.empcode}">Delete</a></td>
			</tr>
		</c:forEach>
	</table><br>
	<a href="addemp">Add Employee</a>

</body>
</html>