<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div align="center" style="min-height: 590px;">
<form action="/follow/plus.do" >
<c:forEach var="obj" items="${follow }"> 
<p style="float: left; width: 33%;">
<a href="/account/myPage.do?id=${follow.id }"><img src="/image/insta.jpg" style="width: 30px; border-radius:100%" id="profile"/></a>
<a href="/account/myPage.do?id=${follow.id }" name="id">${follow.id }</a>
<button type="submit" >팔로우</button>
</p>
</c:forEach>
</form>
</div>