<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="data" value="snow covered mountain" />
	Length of the string <b>${data}</b> ${fn:length(data)}
	<br/>
	Upper case version of the string <b>${data}</b>: ${fn:toUpperCase(data) }
	<br/><br/>
	Does the string <b>${data }</b> start with <b>ver</b>? ${fn:startsWith(data,"ver")}
</body>
</html>