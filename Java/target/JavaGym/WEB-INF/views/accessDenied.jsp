<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/accessDenied.css">
	<title>AccessDenied page</title>
</head>
<body>
<div class="container-fluid">
		<div class="authbar">
      <h1>ACCESS DENIED</h1>
        <img src="${pageContext.request.contextPath}/static/images/keyLock.png" alt="lock"/>
			<p>Dear <strong>${loggedinuser}</strong>, you are not authorized to access this page.</p> 
      <a href="<c:url value="/logout" />"><button type="button" class="customBtn">Logout</button></a>
		</div>
	</div>
</body>
</html>