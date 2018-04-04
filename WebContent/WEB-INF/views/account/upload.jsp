<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Meshtagram</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="robots" content="noimageindex, noarchive">
<meta name="mobile-web-app-capable" content="yes">
<meta name="theme-color" content="#000000">
<meta id="viewport" name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover">
<style>
.selProductFile:hover{
 border : 1px solid #A4A4A4;
}

</style>

</head>
<body style="background-color: #fafafa;">
	<div style="height: 70px;"></div>
	<div style="margin-top: 20px" align="center">
		<h2>게시물 등록</h2>
		<small>사진을 선택한 후, 멘트를 달아주세요.</small>
		<form action="/account/uploadp.do" method="post"
			enctype="multipart/form-data" style="margin-top: 10px;">
			<div class="imgs">
				<a href="javascript:" onclick="uploadAction();" id="upload"
					class="btn btn-info"
					style="width:140px; height: 30px; padding: 4 0 0 0;">파일 선택</a>
					 <input type="file" name="photo"
					id="photo" accept="image/*" style="display: none;" multiple />
				&nbsp;&nbsp;&nbsp;
				 <a href="javascript:" onclick="removeAllImage();"
				 id="refresh" class="btn btn-info"
				 style="width:140px; height: 30px; padding: 4 0 0 0;">이미지 전체삭제</a>
			</div>
			<div>
				<div>
					<h2>
						<b style="font-size: 15px;">이미지 미리보기</b>
					</h2>
				</div>
				<div class="content" id="content" style="margin-bottom: 50px;">
					<img id="img">
				</div>
			</div>
			<div style="margin-bottom:5px;">
			<b>내용 작성</b>
			</div>
			<div>
				<textarea id="comment" name="comment"
					style="resize: none; width: 300px; height: 70px; padding: 2px; margin-bottom: 10px; ' font-family: 맑은고딕"></textarea>
			</div>

			<p style="margin-bottom: 100px;">
				<button type="submit" id="bt2" class="btn btn-info"
					style="width: 300px;" disabled="">업로드</button>
			</p>
		</form>
	</div>
</body>
<script>
	var select_files = []; //선택한 파일들을 모아놓은 배열
	var capacity = 10; //업로드 가능한 파일의 최대 개수

	$(document).ready(function() {
		$("#photo").on("change", handleImgSelect);
	});

	function uploadAction() {
		$("#photo").trigger("click");
	}

	function handleImgSelect(e) {
		select_files = [];
		//$(".content").empty();	//디폴트로 이미지들을 비워놓기 위해

		//console.log(this.files[0]);
		var files = e.target.files; //
		var filesArr = Array.prototype.slice.call(files); //files 배열에서 call한 부분을 복사한 배열

		var index = 0; //미리보기 배열의 인덱스와 연결할 변수
		filesArr
				.forEach(function(f) {
					if (!f.type.match("image.*")) {
						window.alert("이미지만 선택 가능 합니다.");
						return;
					}

					var result = select_files.push(f); //f를 select_files에 집어넣는다
					console.log(result);

					if (select_files.length > capacity) {
						window.alert("이미지는 최대 10장까지 등록 가능합니다.");
						return;
					}

					var reader = new FileReader();
					console.log(reader);
					reader.onload = function(e) {
						var html = "<a href=\"javascript:void(0);\" name=\"사진\" onclick=\"deleteImgAction("
								+ index
								+ ")\" id=\"img_id_"
								+ index
								+ "\"><img src=\"" 
							+ e.target.result + "\"style=\"width:120px; height:120px; padding: 10px;\" data-file='"
							+f.name+"' class='selProductFile' title='Click to remove'></a>";
						//$("#preview").attr("src", this.result);
						$(".content").append(html);
						index++;
					}
					reader.readAsDataURL(f);
		uploadCheck();
		function uploadCheck(){
			console.log("으아아아");
			var s= $("#img_id_0");
			console.log(s);
			if(s != "undefined"){
				$("#bt2").prop("disabled", false);
			}else{
				$("#bt2").prop("disabled", true);
			}
		};
	});
}

	function deleteImgAction(index) {
		select_files.splice(index, 1);
		var rst = window.confirm("이미지를 삭제하시겠습니까?");
		if (rst) {
			var img_id = "#img_id_" + index;
			$(img_id).remove();
		}

		console.log(select_files);
	}

	function removeAllImage() {
		$("#bt2").prop("disabled", true);
		$(".content").empty();
	}
	/* 
	$("#comment").keypress(function() {
		$("#bt2").prop("disabled", false);
	}); */
</script>

</html>