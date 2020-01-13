<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="updateemployees" method="post">

Emp Code<input type="text" name="empcode"  value="${emp.empcode}" readonly="readonly" ><br>
Emp Name<input type="text" name="empname"  value="${emp.empname}" ><br>
Salary<input type="text" name="salary"  value="${emp.salary}" ><br>
<input type="submit">
</form>
</body>
</html>