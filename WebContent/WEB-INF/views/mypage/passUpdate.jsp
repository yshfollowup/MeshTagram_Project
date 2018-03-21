<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div style="height:70px;"></div>
<div>
	<form action="/mypage/pass.do" method="post" form="multipart/form-data">
		<c:choose>
			<c:when test="${empty  aDTO.profile}">
				<img src="/image/insta.jpg" style="width: 30px; height: 30px; border-radius: 30px" id="preview">
			</c:when>
			<c:otherwise>
				<img src="${applicationScope.path }${aDTO.image}" style="width: 230px; height: 230px;" />
			</c:otherwise>
		</c:choose>
		<p>
		이전 비밀번호 <input type="password" name="oldPass"/>
		</p>
		<p>
		새 비밀번호 <input type="password" name="newPass"/>
		</p>
		<p>
		새 비밀번호 확인 <input type="password" name="newPassch"/>
		</p>
		<button type="submit">비밀번호 변경</button>
	</form>
</div>

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
		
		}
		document.getElementById("preview").onclick=function(){
			document.getElementById("photo").click();
		}	
	</script>