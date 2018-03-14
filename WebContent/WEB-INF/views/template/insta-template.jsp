<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title><tiles:getAsString name="title"/></title>
</head>
<body>
<div align="center">
	<div style="min-height: 100px">
		<tiles:insertAttribute name="nav"/>
	</div>
	<div style="min-height: 500px">
		<tiles:insertAttribute name="body"/>
	</div>
	<div style="min-height: 120px">
		<tiles:insertAttribute name="footer"/>
	</div>
	</div>
	</div>


</body>
</html>