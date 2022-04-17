<%@page import="com.simplilearn.entity.Employee"%>
<%@page import="java.util.List"%>
<%@page import="com.simplilearn.dao.EmployeeDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
	<%
		List<Employee> employees = EmployeeDao.listEmployee();
		request.setAttribute("emplist", employees);
	%>

	<table style="border: 1px solid green;">
		<tr>
			<th>Id</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Salary</th>
			<th>Department</th>
		</tr>
		
		<c:forEach items="${emplist}" var="emp" >
			<tr>
				<td>${emp.getId()}</td>
				<td>${emp.getFirstName()}</td>
				<td>${emp.getLastName()}</td>
				<td>${emp.getSalary()}</td>
				<td>${emp.getDepartment()}</td>
			</tr>
		</c:forEach>
	</table>




</body>
</html>