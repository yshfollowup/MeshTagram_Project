<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
	a,b {
		text-decoration: none;
	}
	image {
		width: 50px;
		height: 50px;
	}
</style>
<title>MeshTagram</title>
</head>
<body>

	<div align="center">
		<a href="javascript:" id="title"><b>받은 쪽지함</b></a>
	</div>
	<hr/>
	<form action="/direct/insertMessage.do">
		<div align="center">
			<c:forEach items="${followingList }" var="obj">
				<a href="javascript:" id="follower">${obj }</a>
				<br />
			</c:forEach>
			<br /> <input type="text" id="sender">
		</div>
		<div align="center">
			<input type="text" id="content"
				style="width: 300px; height: 600px; padding: 10px;"
				placeholder="내용을 입력하세요">
		</div>
		<div align="right">
			<button type="button" onclick="selectLike();" id="likebt">
				<img alt="좋아요" src="" />
			</button>
			<button type="button" onclick="selectImage();" id="imagebt">
				<img alt="이미지 파일 업로드" src="" />
			</button>
			<input type="file" id="upload" />
		</div>
		<div>
			<button type="button" id="sendbt">쪽지 보내기</button>
		</div>
	</form>
</body>
<script>
	$("#title").on("click", function() {
		window.location.reload();
	});
	
	$("#follower").on("click", function(e) {
		$("#sender").html(e);
	})
	
	function selectLike() {
		$("#likebt").on("click", function() {
			
		})
	}
	
	function selectImage() {
		$("#upload").trigger("click", function(e) {
			var file = e.target.files[0];
			var reader = new FileReader();
			console.log(reader);
			reader.readAsDataURL(file);
		});
	}
</script>
</html>