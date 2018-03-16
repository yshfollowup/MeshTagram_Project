<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div style="margin-top: 20px" align="center">
	<h2>게시물 등록</h2>
	<small>사진을 선택한 후, 멘트를 달아주세요.</small>
	<form action="/account/uploadp.do" method="post" enctype="multipart/form-data">
		<div>
			<img src="/image/insta.jpg" style="width: 300px; height: 300px; border-radius: 30px" id="preview">		
		</div>
		<input type="file" name="photo" id="photo" accept="image/*" style="display:none"/>
		<textarea name="comment" style="resize: none; width: 294px; height: 70px; padding: 2px; font-family: 맑은고딕"></textarea>
		<input type="hidden" name="id" value="ma"/>
		<p>
			<button type="submit">등록</button>
		</p>
	</form>
</div>
<script>
	$("#photo").on("change", function() {
		console.log(this.files[0]);
		if (!this.files[0].type.startsWith("image")) {
			window.alert("이미지만 선택 가능 합니다.")
			return;
		}
		var reader = new FileReader();
		reader.readAsDataURL(this.files[0]);
		console.log(reader);
		reader.onload = function() {
			$("#preview").attr("src", this.result);
		}
	});
	$("#preview").on("click", function() {
		$("#photo").click();
	})
</script>