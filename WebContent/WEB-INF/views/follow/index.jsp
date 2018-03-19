<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<div align="center" style="min-height: 490px;">
	<p>
		<h4 align="left"><b>사람 찾기</b></h4><a href="/follow/all.do"><small align="right">모두보기</small></a>
	</p>
		<c:forEach var="obj" items="${member }">
		<c:forEach var="fobj" items="${following }">
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
			<c:choose>
			<c:when test="${obj.ID eq fobj.USER2 }">
				<input  class="follower" type="button" name="${obj.ID }" value="팔로우" />
			</c:when>	
			<c:otherwise>
				<input  class="following" type="button" name="${obj.ID }" value="팔로잉" />
			</c:otherwise>	
			</c:choose>
			</c:forEach>
		</p>
	</c:forEach>
	
</div>
<!-- =========================================================================================================== -->

<script>

$(".follower").click(function(){
	if($(this).val() =="팔로우"){
	var a=$(this).attr("name");
		console.log(a);
		$(this).val("팔로잉");
		location.href="/follow/insert.do?user1=${cookie.setId.value}&user2="+a;
	}
});
$(".following").click(function(){
	if($(this).val() =="팔로잉"){
		var a=$(this).attr("name");
		console.log(this);
		$(this).val("팔로우");
		location.href="/follow/delete.do?user1=${cookie.setId.value}&user2="+a;
	}
});
</script>