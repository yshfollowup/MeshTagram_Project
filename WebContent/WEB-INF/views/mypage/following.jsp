<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div style="height:70px;"></div>
<div align="center" style="min-hight: 490px" aria-hidden="true" id="screen2">
	<c:forEach var="obj" items="${following }">
		<p style="float: left; width: 25%;">
			<c:choose>
				<c:when test="${empty obj.profile }">
					<img src="/images/insta.jpg" style="width: 30px; height: 30px; border-radius: 30px" id="preview">
				</c:when>
				<c:otherwise>
					<img src="${applicationScope.path }${obj.profile}" style="width: 30px; border-radius: 100%" id="profile" />
				</c:otherwise>
			</c:choose>
			<a href="/account/myPage.do?id=${obj.id}" name="id">${obj.id }</a>
			<button  type="button" name="${obj.id }"   id="follower">팔로잉</button>
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