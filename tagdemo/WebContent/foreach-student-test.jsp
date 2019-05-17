<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*, com.luv2code.jsp.tagdemo.Student"%>
<%
	// sample code that is normally created using MVC

	List<Student> data = new ArrayList<>();
	data.add(new Student("John", "Doe", false));
	data.add(new Student("Maxwell", "Johnseon", false));
	data.add(new Student("Mary", "Public", true));

	pageContext.setAttribute("myStudents", data);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="2">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Gold Customer</th>
		</tr>
		<c:forEach var="tempStudent" items="${myStudents}">
			<tr>
				<td>${tempStudent.firstName}</td>
				<td>${tempStudent.lastName}</td>
				<td>${tempStudent.goldCustomer}</td>
			</tr>
		</c:forEach>

	</table>

</body>
</html>