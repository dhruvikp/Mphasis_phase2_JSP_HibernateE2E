<%@page import="com.simplilearn.dao.EmployeeDao"%>
<%@page import="com.simplilearn.entity.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		Double salary = Double.valueOf(request.getParameter("salary"));
		String dept = request.getParameter("department");

		Employee e = new Employee();
		e.setFirstName(firstName);
		e.setLastName(lastName);
		e.setSalary(salary);
		e.setDepartment(dept);
	
		EmployeeDao.addEmployee(e);
	
		response.sendRedirect("success.jsp");
	%>

</body>
</html>