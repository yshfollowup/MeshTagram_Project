<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div style="margin-top: 20px" align="center">
	<h2>게시물 등록</h2>
	<small>사진을 선택한 후, 멘트를 달아주세요.</small>
	<form action="/account/uploadp.do" method="post" enctype="multipart/form-data">
		<div>
			<h2><b>이미지 미리보기</b></h2>
			<div class="imgs">
				<input multiple="multiple" type="file" name="photo" id="photo" accept="image/*"
					style="display: none" />
			</div>		
		</div>
		<div>
			<div class="imgs">
				<img id="img">
			</div>
		</div>
		<div>
			<textarea name="comment" style="resize: none; width: 294px; height: 70px; padding: 2px; font-family: 맑은고딕"></textarea>
		</div>
		<p>
			<button type="submit">업로드</button>
		</p>
	</form>
</div>
<script>
	var select_files = [];
	
	$(document).ready(function() {
		$("#photo").on("change", handleImgSelect);
	});
	
	function handleImgSelect(e) {
		select_files = [];
		$("imgs").empty();
		
		console.log(this.files[0]);
		if (!this.files[0].type.startsWith("image")) {
			window.alert("이미지만 선택 가능 합니다.");
			return;
		}else if (this.files.length > 10) {
			window.alert("이미지는 최대 10장까지 등록 가능합니다.");
			return;
		}
	
		var reader = new FileReader();
		reader.readAsDataURL(this.files[0]);
		console.log(reader);
		reader.onload = function() {
			$("#preview").attr("src", this.result);
		}
	}
	
</script>