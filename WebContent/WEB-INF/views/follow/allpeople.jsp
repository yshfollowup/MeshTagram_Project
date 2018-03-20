<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
			<c:choose>
			<c:when test="${empty obj.OWNER}">
				<input  class="follower" type="button" name="${obj.ID }" value="팔로우" />
			</c:when>	
			<c:otherwise>
				<input  class="follower" type="button" name="${obj.ID }" value="팔로잉" />
			</c:otherwise>	
			</c:choose>
		</p>
	</c:forEach>
</div>
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