<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<div>
	<img src="/image/insta.jpg" style="width: 300px; height: 300px; border-radius: 30px" id="preview"> </br>
	게시물${fn:length(myPost) } 팔로워${fn:length(follow.target) } 팔로우${fn:length(follow.me) }</br>
</div>

<div>
	<c:forEach var="obj" items="${myPost }">
		<img src="${applicationScope.Path }${obj.image}" style="width: 300px; height: 300px; border-radius: 30px" id="preview">		
	</c:forEach>
</div>