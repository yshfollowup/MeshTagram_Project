<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div style="height:70px;"></div>
<div>
	<form id="form1" action="/mypage/uploadProfile.do" method="post" form="multipart/form-data">
		<c:choose>
			<c:when test="${empty  aDTO.profile}">
				<img src="/image/insta.jpg" style="width: 30px; height: 30px; border-radius: 30px" id="preview">
			</c:when>
			<c:otherwise>
				<img src="${applicationScope.path }${aDTO.profile}" style="width: 230px; height: 230px;" />
			</c:otherwise>
		</c:choose>
	</form>
	<form id="form2" action="/mypage/pass.do" method="post" enctype="application/x-www-form-urlencoded">
		<p>
		이전 비밀번호 <input type="password" id="op" name="oldPass"/>
		</p>
		<p>
		새 비밀번호 <input type="password" id="np" name="newPass"/>
		</p>
		<p>
		새 비밀번호 확인 <input type="password" id="confirm" name="newPassch"/>
		</p>
		<button type="submit" id="sendBt">비밀번호 변경</button>
	</form>
</div>



<article class="_75z9k">
	<div class="_1eg8c">
		<div class="_62ai2 _5g4e2">
			<button class="_3xjwv" title="프로필 사진 바꾸기">
				<img alt="프로필 사진 바꾸기" class="_cuacn" 
				src="/images/insta.jpg">
			</button>
		</div>
	<div class="_ax54t">
		<h1 class="_gvhl0" title="${aDTO.id }">aDTO.id</h1>
		<a class="_5aav8" href="#">프로필 사진 수정</a>
	</div>
		<div>
			<form enctype="multipart/form-data">
				<input type="file" accept="image/jpeg" class="_l8al6">
			</form>
		</div>
	</div>
	<form class="_fx423" action="/mypage/pass.do" method="post">
		<div class="_e1xik">
			<aside class="_kx10g">
				<label for="cppOldPassword">이전 비밀번호</label>
			</aside>
		<div class="_cd2n1">
			<input type="password" class="_jh9m1 _o716c" aria-required="true" id="op" value="">
		</div>
		</div>
		<div class="_e1xik">
			<aside class="_kx10g">
				<label for="cppNewPassword">새 비밀번호</label>
			</aside>
		<div class="_cd2n1">
			<input type="password" class="_jh9m1 _o716c" aria-required="true" id="np" value="">
		</div>
		</div>
		<div class="_e1xik">
			<aside class="_kx10g">
				<label for="cppConfirmPassword">새 비밀번호 확인</label>
			</aside>
			<div class="_cd2n1">
				<input type="password" class="_jh9m1 _o716c" aria-required="true" id="confirm" value="">
			</div>
		</div>
		<div class="_e1xik">
			<aside class="_kx10g _ldhkl">
				<label></label>
			</aside>
		<div class="_cd2n1">
			<div class="_qr7ez">
				<span class="_ov9ai">
					<button id="sendBt" class="_qv64e _gexxb _r9b8f _jfvwv" disabled="">비밀번호 변경</button>
				</span>
			</div>
		</div>
		</div>
	</form>
</article>


<script> 
		document.getElementById("photo").onchange=function(){
			console.log(this.files[0]);
			if(!this.files[0].type.startsWith("image")){
				window.alert("이미지 파일만 선택 가능합니다.")
				return ;
			}
			// 미리보기를 구현할려면, XMLHttpRequest 객체같이
			var reader=new FileReader();
			reader.readAsDataURL(this.files[0]);
			console.log(reader);
			reader.onload=function(){// readAsDataURL이 끝나면 발생하는 이벤트
			
				document.getElementById("preview").src=this.result;
				
			}
		document.getElementById("preview").onclick=function(){
			document.getElementById("photo").click();
		}	
			
		$("#sendBt").on("click", function(e) {
			var oldPass = $("#op").attr(e.target);
			var newPass = $("#np").attr(e.target);
			var confirm = $("#confirm").attr(e.target);
			if (oldPass == newPass) {
				window.alert("같은 비밀번호는 사용할 수 없습니다.");
				return;
			}else if (confirm == null) {
				window.alert("비밀번호 확인을 반드시 해주세요!");
			}
			
			$("#form1").on("submit", function() {
				window.alert("비밀번호가 변경되었습니다!");			
			});		
		});
		
	</script>