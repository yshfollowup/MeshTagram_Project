<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div >
	추천계정
	<c:forEach var="obj" items="${member }">
		<p style="float: left; width: 25%;">
			<c:choose>
				<c:when test="${empty obj.PROFILE }">
					<img src="/image/insta.jpg" style="width: 30px; height: 30px; border-radius: 30px" id="preview">
				</c:when>
				<c:otherwise>
					<img src="${applicationScope.path }${obj.PROFILE}"
						style="width: 30px; border-radius: 100%" id="profile" />
				</c:otherwise>
			</c:choose>
			<a href="/account/myPage.do?id=${obj.ID}" name="id">${obj.ID }</a>
			<input  type="button" name="${obj.ID }" value="팔로우" onclick="location.href='/follow/insert.do?me=${cookie.setId.value}&target=${obj.ID}'"/>
		</p>
	</c:forEach>
	
	</div>