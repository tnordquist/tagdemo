<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="data" value="Phili, Athens, Istanbul, Paris" ></c:set>
	<h3>Split Demo</h3>
	<c:set var="citiesArray" value="${fn: split(data, ',') }"/>
	<c:forEach var="tempCity" items="${citiesArray }">
	${tempCity}<br/>
	</c:forEach>
	<h3>Join Demo</h3>
	<c:set var="fun" value="${fn:join(citiesArray, '*') }"></c:set>
	Result of joining: ${fun}
</body>
</html>