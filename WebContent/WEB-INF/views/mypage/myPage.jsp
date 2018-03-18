<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<span id="all-screen" aria-hidden="true">
<div>
	<img src="/image/insta.jpg" style="width: 300px; height: 300px; border-radius: 30px" id="preview">${aDTO.id } 
	<button type="button" onclick="location.href='/mypage/edit.do'">프로필 편집</button> <br/>
	게시물${fn:length(myPost) } <a href="follower.do" id="follower">팔로워${fn:length(follower) }</span>  <a href="following.do" id="following">팔로우${fn:length(following) }</span></br>
</div>

<div>
	<c:forEach var="obj" items="${myPost }">
		<!-- <img src="${applicationScope.Path }${obj.image}" style="width: 300px; height: 300px; border-radius: 30px" id="preview">	 -->	
	</c:forEach>
</div>
</span>

<script>
	$("#follower").on("change",function(){
		$("all-screen").attr("aria-hidden",false)
	});
	
	$("#following").on("change",function(){
		$("all-screen").attr("aria-hidden",false)
	});
</script>

