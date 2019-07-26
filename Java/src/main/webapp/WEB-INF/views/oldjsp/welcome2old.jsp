<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Welcome page</title>
</head>
<body>
	 Welcome to Home Page.
         <a href="<c:url value="/logout" />">Logout</a>
	<a href="<c:url value="/myprofile" />">My Profile</a>
        
        <h4>Things</h4>
</body>
</html>