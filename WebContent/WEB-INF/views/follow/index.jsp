<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div style="height:70px;"></div>

<div align="center" style="min-height: 490px;">
	<div align="left">
		<p>
			<h4 align="left"><b>알 수도 있는 사람들</b></h4>
			<a href="/follow/all.do"><small align="right">가입된 회원 모두보기</small></a>
			<hr/>
		</p>
	</div>
	
	<div align="left">
		<p>
			<h4 align="left"><b>팔로우 가장 많은 top5</b></h4> 
		</p>

		<c:forEach var="objTop5" items="${top5 }">
			<p style="float: left; width: 25%;">
				<c:choose>
					<c:when test="${empty objTop5.PROFILE }">
						<img src="/images/insta.jpg" style="width: 30px; height: 30px; border-radius: 30px" id="preview">
					</c:when>
					<c:otherwise>
						<img src="${applicationScope.path }${objTop5.PROFILE}" style="width: 30px; border-radius: 100%" id="profile" />
					</c:otherwise>
				</c:choose>

				<a href="/account/myPage.do?id=${objTop5.ID}" name="id">${objTop5.ID }</a>
				<c:set var="isFollowing1" value="false" />
				<c:set var="doneLoop1" value="false" />
				<c:forEach var="objTop5_2" items="${following }">
					<c:if test="${not doneLoop }">
						<c:if test="${objTop5_2.ID } eq ${objTop5.ID }">
							<input class="follower" type="button" name="${objTop5.ID }" value="팔로잉" />
							<c:set var="isFollowing1" value="true" />
							<c:set var="doneLoop1" value="true" />
						</c:if>
					</c:if>
				</c:forEach>
				<c:if test="${not isFollowing }">
					<input class="follower" type="button" name="${objTop5.ID }" value="팔로우" />
				</c:if>
			</p>
		</c:forEach>

	</div>
	
	
	<hr style="margin: 0 0 0 0; border: 0; border-top: 0px"/>



	<div align="left">
		<p>
			<h4 align="left"><b>추천 친구</b></h4>
		
			<hr/>
		</p>
	
	</div>

	<div algin="left">
		<p>
			<h4 align="left"><b>내가 팔로우한 친구들</b></h4>
			<c:forEach var="objFollowing" items="${following }">
				<p style="float: left; width: 25%;">
					<c:choose>
						<c:when test="${empty objFollowing.PROFILE }">
							<img src="/images/insta.jpg" style="width: 30px; height: 30px; border-radius: 30px" id="preview">
						</c:when>
						<c:otherwise>
							<img src="${applicationScope.path }${objFollowing.PROFILE}" style="width: 30px; border-radius: 100%" id="profile" />
						</c:otherwise>
					</c:choose>
	
					<a href="/account/myPage.do?id=${objFollowing.ID}" name="id">${objFollowing.ID }</a>
					<c:set var="isFollowing2" value="false" />
					<c:set var="doneLoop2" value="false" />
					<c:forEach var="objFollowing_2" items="${following }">
						<c:if test="${not doneLoop2 }">
							<c:if test="${objFollowing_2.ID } eq ${objFollowing.ID }">
								<input class="follower" type="button" name="${objFollowing.ID }" value="팔로잉" />
								<c:set var="isFollowing2" value="true" />
								<c:set var="doneLoop2" value="true" />
							</c:if>
						</c:if>
					</c:forEach>
					<c:if test="${not isFollowing2 }">
						<input class="follower" type="button" name="${objFollowing.ID }" value="팔로우" />
					</c:if>
				</p>
			</c:forEach>
			<hr/>
		</p>
	
	</div>

	<div align="left">
		<p>
			<h4 align="left"><b>나를 팔로우한 친구들</b></h4>
			<c:forEach var="objFollower" items="${follower }">
				<p style="float: left; width: 25%;">
					<c:choose>
						<c:when test="${empty objFollower.PROFILE }">
							<img src="/images/insta.jpg" style="width: 30px; height: 30px; border-radius: 30px" id="preview">
						</c:when>
						<c:otherwise>
							<img src="${applicationScope.path }${objFollower.PROFILE}" style="width: 30px; border-radius: 100%" id="profile" />
						</c:otherwise>
					</c:choose>
	
					<a href="/account/myPage.do?id=${objFollower.ID}" name="id">${objFollower.ID }</a>
					<c:set var="isFollowing3" value="false" />
					<c:set var="doneLoop3" value="false" />
					<c:forEach var="objFollwer_2" items="${following }">
						<c:if test="${not doneLoop3 }">
							<c:if test="${objFollower_2.ID } eq ${objFollower.ID }">
								<input class="follower" type="button" name="${objFollower.ID }" value="팔로잉" />
								<c:set var="isFollowing3" value="true" />
								<c:set var="doneLoop3" value="true" />
							</c:if>
						</c:if>
					</c:forEach>
					<c:if test="${not isFollowing3 }">
						<input class="follower" type="button" name="${objFollower.ID }" value="팔로우" />
					</c:if>
				</p>
			</c:forEach>
			<hr/>
		</p>

	</div>


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