<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div style="height:70px;"></div>

<div align="center" style="min-height: 490px;">
	<p>
		<h4 align="left"><b>사람 찾기</b></h4><a href="/follow/all.do"><small align="right">모두보기</small></a>
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
			<c:set var="isFollowing" value="false" />
			<c:set var="doneLoop" value="false" />
			<c:forEach var="obj2" items="${following }">
				<c:if test="${not doneLoop }">
					<c:if test="${obj2.ID } eq ${obj.ID }">
						<input class="follower" type="button" name="${obj.ID }" value="팔로잉" />
						<c:set var="isFollowing" value="true" />
						<c:set var="doneLoop" value="true" />
					</c:if>
				</c:if>
			</c:forEach>
			<c:if test="${not isFollowing }">
				<input class="follower" type="button" name="${obj.ID }" value="팔로우" />
			</c:if>

		</p>
	</c:forEach>
</div>
	<script>

	$(".follower").click(function() {
		var owner = "${cookie.setId.value}";
		var src =$(this);
		var target = $(this).attr("name");
		
		if($(this).val() == "팔로잉"){
			$.ajax("/follow/delete.do",{
				"method" : "post",
				"async" : true,
				"data" :{
					"owner" : owner,
					"target" : target
				}
			}).done(function(btnFollowing){
				console.log("삭제 들어왔다.");
				src.val("팔로우");
				src.attr("name", target);
			});
			
		} else {
		$.ajax("/follow/insert.do",{
			"method" : "post",
			"async" : true,
			"data" :{
				"owner" : owner,
				"target" : target
			}
		}).done(function(btnFollow){
			console.log("들어왔다."+src);
			src.val("팔로잉");
			src.attr("name", target);
		});
		}
	});
	
</script>