<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
<script type="text/javascript" src="<c:url value="/resources/js/script.js" />"></script>
</head>
<body>
  <h1>Home page</h1>
  <a href="register">register</a>
  <a href="google">Go to google</a>
  <a href="yahoo">Go to yahoo</a>
  <img src="<c:url value="/resources/img/f2.jpg" />"></img>
  <a href="loadfile" class="btn btn-sm btn-primary">File Uploading</a>
</body>
</html>