<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<meta charset="utf-8">
<meta id="viewport" name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="robots" content="noimageindex, noarchive">
<meta name="mobile-web-app-capable" content="yes">
<meta name="theme-color" content="#000000">
</head>
<body style="background-color: #fafafa;">
	<div style="height: 70px;"></div>

	<h4 align="center" style="padding-top: 10px;">
		<b>팔로잉</b><br/><br/>
		<small>내가 팔로우한 사람들이 표시됩니다.</small>
	</h4>
	<hr />
	<div align="center" style="min-height: 490px;
		aria-hidden="true" id="screen2">
		<c:forEach var="obj" items="${followingJoin }">
			<p style="float: left; width: 25%;">
				<c:choose>
					<c:when test="${empty obj.PROFILE }">
						<img src="/images/insta.jpg"
							style="width: 30px; height: 30px; border-radius: 30px"
							id="preview">
					</c:when>
					<c:otherwise>
						<img src="${applicationScope.path }${obj.PROFILE}"
							style="width: 30px; height: 30px;  border-radius: 100%;" id="profile" />
					</c:otherwise>
				</c:choose>
				<a href="/account/myPage.do?id=${obj.ID}" name="id">${obj.ID }</a> <input
					type="button" name="${obj.ID }" class="follower btn btn-info"
					style="width:70px; height: 20px; padding: 0 0 0 0;" value="팔로잉" />
			</p>
		</c:forEach>
	</div>
	<script>
		$(".follower").click(function() {
			var setid = "${cookie.setId.value}";
			var src = $(this);
			var a = $(this).attr("name");

			if ($(this).val() == "팔로잉") {
				$.ajax("/follow/delete.do", {
					"method" : "get",
					"async" : true,
					"data" : {
						"owner" : setid,
						"target" : a
					}
				}).done(function(obj2) {
					console.log("삭제 들어왔다.");
					src.val("팔로우");
					src.attr("name", a);
				});
			} else {

				$.ajax("/follow/insert.do", {
					"method" : "get",
					"async" : true,
					"data" : {
						"owner" : "${cookie.setId.value}",
						"target" : a
					}
				}).done(function(obj) {
					console.log("들어왔다." + src);
					src.val("팔로잉");
					src.attr("name", a);
				});
			}
		});
	</script>
</body>
</html>