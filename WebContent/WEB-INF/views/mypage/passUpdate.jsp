<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<ul class="_mleeu">
	<li><a class="_fvhml _etlo6" href="/mypage/edit.do">프로필 편집</a></li>
	<li><a class="_fvhml _t0stc" href="/mypage/pass.do">비밀번호 변경</a></li>
	<li><a class="_fvhml _etlo6" href="/accounts/comment_filter/">댓글</a>
	</li>
	<li><a class="_fvhml _etlo6" href="/accounts/contact_history/">연락처
			관리</a></li>
</ul>

<article class="_75z9k">
	<div class="_1eg8c">
		<div class="_62ai2 _5g4e2">
			<button type="button" class="_3xjwv" onclick="$('#photo').click();" 
				title="프로필 사진 바꾸기">
				<c:choose>
					<c:when test="${empty  aDTO.profile}">
						<img src="/image/insta.jpg"
							style="width: 30px; height: 30px; border-radius: 30px"
							id="preview">
					</c:when>
					<c:otherwise>
						<img src="${applicationScope.path }${aDTO.profile}"
							style="width: 230px; height: 230px;" />
					</c:otherwise>
				</c:choose>
			</button>
		</div>
		<div class="_ax54t">
			<h1 class="_gvhl0" title="${aDTO.id }">aDTO.id</h1>
			<a class="_5aav8" href="#">프로필 사진 수정</a>
		</div>
		<div>
			<form id="form1" action="/mypage/uploadProfile.do"
				enctype="multipart/form-data">
				<input type="file" accept="image/jpeg" class="_l8al6">
			</form>
		</div>
	</div>
	<form id="form2" class="_fx423" action="/mypage/pass.do" method="post" enctype="application/x-www-form-urlencoded">
		<div class="_e1xik">
			<aside class="_kx10g">
				<label for="cppOldPassword">이전 비밀번호</label>
			</aside>
			<div class="_cd2n1">
				<input type="password" class="_jh9m1 _o716c" aria-required="true"
					id="op" name="oldPass" pattern="[A-Za-z0-9]+" value=""> <input
					type="hidden" id="hideOp" value="${aDTO.pass }" />
			</div>
		</div>
		<div class="_e1xik">
			<aside class="_kx10g">
				<label for="cppNewPassword">새 비밀번호</label>
			</aside>
			<div class="_cd2n1">
				<input type="password" class="_jh9m1 _o716c" aria-required="true"
					id="np" name="newPass" pattern="[A-Za-z0-9]+" value="">
			</div>
		</div>
		<div class="_e1xik">
			<aside class="_kx10g">
				<label for="cppConfirmPassword">새 비밀번호 확인</label>
			</aside>
			<div class="_cd2n1">
				<input type="password" class="_jh9m1 _o716c" aria-required="true"
					id="confirm" name="confirmPass" pattern="[A-Za-z0-9]+" value="">
			</div>
		</div>
		<div class="_e1xik">
			<aside class="_kx10g _ldhkl">
				<label></label>
			</aside>
			<div class="_cd2n1">
				<div class="_qr7ez">
					<span class="_ov9ai">
						<button type="submit" id="sendBt"
							class="_qv64e _gexxb _r9b8f _jfvwv" disabled="">비밀번호 변경</button>
					</span>
				</div>
			</div>
		</div>
	</form>
</article>


<script> 
	//비밀번호 변경
		
	$("#confirm").keypress(function() {
		$("#sendBt").prop("disabled", false);
	});
	
		
	$("#sendBt").on("click", function() {
		var oldPass = $("#op").val();
		var newPass = $("#np").val();
		var confirm = $("#confirm").val();
		console.log(oldPass);
		console.log(newPass);
		console.log(confirm);
		
		if (oldPass == newPass) {
			window.alert("같은 비밀번호로 변경할 수 없습니다.");
			return;
		} 
		if (oldPass != $("#hideOp").attr("value")) {
			window.alert("이전 비밀번호가 일치하지 않습니다.");
			return;
		} 
		if ((!newPass.match("[A-Za-z0-9]+")) && (newPass.length < 8)) {
			window.alert("비밀번호는 영문+숫자를 조합하여 8자리 이상으로 변경해주십시오.");
			return;
		} 
		if (confirm != newPass) {
			window.alert("확인된 비밀번호가 틀립니다.");
			return;
		}
		
		$("#form2").submit();
		window.alert("비밀번호가 변경되었습니다!");
		
	});
	
	//프로필 사진 변경
	$("#Bt").click(function(){
		$("#form1").submit();
		window.alert("프로필 사진이 변경되었습니다!");
	});

	$("#photo").change(function(e){
		var file = e.target.files[0];
		if (!file.type.match("image.*")) {
			window.alert("이미지파일만 선택할 수 있습니다!");
			return;
		}
		var reader = new FileReader();
		console.log(reader);
		reader.onload = function(e) {
			$("#preview").attr("src", e.target.result);
		}
		reader.readAsDataURL(file);
	});
		
		
	</script>