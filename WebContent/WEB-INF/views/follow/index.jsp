<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div align="center" style="min-height: 590px;">
<form action="/follow/plus.do" >
<c:forEach var="obj" items="${follow }"> 
<p style="float: left; width: 33%;">
<c:choose >
<c:when test="${empty obj.PROFILE }">
<img src="/image/insta.jpg" style="width: 30px; height: 30px; border-radius: 30px" id="preview">
</c:when>
<c:otherwise>
<img src="${applicationScope.path }${obj.PROFILE}" style="width: 30px; border-radius:100%" id="profile"/>
</c:otherwise>
</c:choose>
<a href="/account/myPage.do?id=${obj.ID}" name="id">${obj.ID }</a>
<button type="submit" >팔로우</button>
</p>
</c:forEach>
</form>
<div>
	

</div>