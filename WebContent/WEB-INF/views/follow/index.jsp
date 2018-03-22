<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div style="height:70px;"></div>

<div align="center" style="min-height: 490px;">
	<div align="left">
		<p>
			<h4 align="left"><b>사람 찾기</b></h4>
			<a href="/follow/all.do"><small align="right">가입된 회원 모두보기</small></a>
			<hr/>
		</p>
	</div>
	
	<div align="left">
		<p>
			<h4 align="left"><b>팔로우 가장 많은 top5 + 알수도 있는 친구</b></h4> 
		</p>

		<c:forEach var="objRecom" items="${recommend }">
			<p style="float: left; width: 25%;">
				<c:choose>
					<c:when test="${empty objRecom.profile }">
						<img src="/images/insta.jpg" style="width: 30px; height: 30px; border-radius: 30px" id="preview">
					</c:when>
					<c:otherwise>
						<img src="${applicationScope.path }${objRecom.profile}" style="width: 30px; border-radius: 100%" id="profile" />
					</c:otherwise>
				</c:choose>

				<a href="/account/myPage.do?id=${objRecom.id}" name="id">${objRecom.id }</a>
				<c:set var="isFollowing" value="false" />
				<c:set var="doneLoop" value="false" />
				<c:forEach var="objFollowing" items="${following }">
					<c:if test="${not doneLoop }">
						<c:if test="${objFollowing.id } eq ${objRecom.id }">
							<input class="follower" type="button" name="${objRecom.id }" value="팔로잉" />
							<c:set var="isFollowing" value="true" />
							<c:set var="doneLoop" value="true" />
						</c:if>
					</c:if>
				</c:forEach>
				<c:if test="${not isFollowing }">
					<input class="follower" type="button" name="${objTop5.id }" value="팔로우" />
				</c:if>
			</p>
		</c:forEach>

	</div>
	
	
	<hr style="margin: 0 0 0 0; border: 0; border-top: 0px"/>






</div>
<!-- =========================================================================================================== -->

<script>
	$(".follower").click(function() {
		var owner = "${cookie.setId.value}";
		var src = $(this);
		var target = $(this).attr("name");

		if ($(this).val() == "팔로잉") {
			$.ajax("/follow/delete.do", {
				"method" : "post",
				"async" : true,
				"data" : {
					"owner" : owner,
					"target" : target
				}
			}).done(function(btnFollow) {
				console.log("삭제 들어왔다.");
				src.val("팔로우");
				src.attr("name", target);
			});
			
		} else {
			$.ajax("/follow/insert.do", {
				"method" : "post",
				"async" : true,
				"data" : {
					"owner" : owner,
					"target" : target
				}
			}).done(function(btnFollowing) {
				console.log("들어왔다." + src);
				src.val("팔로잉");
				src.attr("name", target);
			});
		}
	});
</script>