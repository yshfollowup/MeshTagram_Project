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

		<c:forEach var="obj" items="${top5 }">
			<p style="float: left; width: 25%;">
				<c:choose>
					<c:when test="${empty obj.PROFILE }">
						<img src="/images/insta.jpg"
							style="width: 30px; height: 30px; border-radius: 30px" id="preview">
					</c:when>
					<c:otherwise>
						<img src="${applicationScope.path }${obj.PROFILE}" style="width: 30px; border-radius: 100%" id="profile" />
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
		
			<hr/>
		</p>
	
	</div>

	<div align="left">
		<p>
			<h4 align="left"><b>나를 팔로우한 친구들</b></h4>
		
			<hr/>
		</p>

	</div>


</div>
<!-- =========================================================================================================== -->

<script>
	$(".follower").click(function() {
		var setid="${cookie.setId.value}";
		var src =$(this);
		var a = $(this).attr("name");
		
		if($(this).val() == "팔로잉"){
			$.ajax("/follow/delete.do",{
				"method" : "get",
				"async" : true,
				"data" :{
					"owner" : setid,
					"target" : a
				}
			}).done(function(obj2){
				console.log("삭제 들어왔다.");
				src.val("팔로우");
				src.attr("name", a);
			});
		}else{
			
		$.ajax("/follow/insert.do",{
			"method" : "get",
			"async" : true,
			"data" :{
				"owner" : "${cookie.setId.value}",
				"target" : a
			}
		}).done(function(obj){
			console.log("들어왔다."+src);
			src.val("팔로잉");
			src.attr("name", a);
		});
		}
	});
	
</script>