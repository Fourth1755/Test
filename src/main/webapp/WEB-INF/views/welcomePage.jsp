
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@page session="false"%>
<html>
<head>
<title>${title}</title>
</head>
<body>

	<sec:authorize access="!isAuthenticated()">
	 <a href="login">login</a>
	</sec:authorize>

	<sec:authorize access="isAuthenticated()">
	   <jsp:include page="_menu.jsp" />
	</sec:authorize>
 	<h1>Message : ${message}</h1>
</body>
</html>
<jsp:include page="_menuDown.jsp"/>