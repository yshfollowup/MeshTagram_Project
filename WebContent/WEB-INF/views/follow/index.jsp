<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<div align="center" style="min-height: 490px;">
	<p>
		<h4><b>모든 회원</b></h4>
	</p>
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

<hr/>
<div align="center" style="min-hight: 490px">
	<p>
		<h4><b>팔로잉 - 내가 팔로우한 친구</b></h4>
	</p>
	<c:forEach var="obj" items="${following }">
		<p style="float: left; width: 25%;">
			<c:choose>
				<c:when test="${empty obj.PROFILE }">
					<img src="/image/insta.jpg" style="width: 30px; height: 30px; border-radius: 30px" id="preview">
				</c:when>
				<c:otherwise>
					<img src="${applicationScope.path }${obj.PROFILE}" style="width: 30px; border-radius: 100%" id="profile" />
				</c:otherwise>
			</c:choose>
			<a href="/account/myPage.do?id=${obj.ID}" name="id">${obj.ID }</a>
			<input  type="button" name="${obj.ID }" value="언팔로우" onclick="location.href='/follow/delete.do?me=${cookie.setId.value}&target=${obj.ID}'"/>
		</p>
	</c:forEach>
</div>

<hr/>
<div align="center" style="min-hight: 490px">
	<p>
		<h4><b>팔로워 - 나를 팔로우한 친구</b></h4>
	</p>
	<c:forEach var="obj" items="${follower }">
		<p style="float: left; width: 25%;">
			<c:choose>
				<c:when test="${empty obj.PROFILE }">
					<img src="/image/insta.jpg" style="width: 30px; height: 30px; border-radius: 30px" id="preview">
				</c:when>
				<c:otherwise>
					<img src="${applicationScope.path }${obj.PROFILE}" style="width: 30px; border-radius: 100%" id="profile" />
				</c:otherwise>
			</c:choose>
			<a href="/account/myPage.do?id=${obj.ID}" name="id">${obj.ID }</a>
			<input  type="button" name="${obj.ID }" value="팔로우" onclick="location.href='/follow/insert.do?me=${cookie.setId.value}&target=${obj.ID}'"/>
		</p>
	</c:forEach>
</div>



<script>


</script>