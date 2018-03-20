<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<div class="col-sm-9">
<form action="/mypage/edit.do" method="post" form="multipart/form-data">
    <div class="col-sm-9">
	<c:choose>	
	<c:when test="${empty  aDTO.profile}">
	<img src="/images/insta.jpg" style="width: 30px; height: 30px; border-radius: 30px" id="preview">
	</c:when>
	<c:otherwise>
	<img src="${applicationScope.path }${aDTO.image}"
					style="width: 230px; height: 230px;"/>
	</c:otherwise>
	</c:choose>
	${aDTO.name };
	<div>
	아이디	${aDTO.id }
	</div>
	<div>
	사용자 이름	<input type="text" value="${aDTO.name }" name="name"/>
	</div>
      <div>
	소개	
		<textarea style="resize: none; width: 294px; height: 70px; padding: 2px; font-family: 맑은고딕"></textarea>
	</div>
	<span align="center">개인 정보</span>
	<div>
	이메일 <input type="text" value="${aDTO.email }" name="email"/>
	</div>
	<div>
	전화번호 <input type="text" value="${aDTO.phone }" name="phone"/>
	</div>
	<div>
	성별 <select name="gender">
		<option value="" selected>선택안함</option>
		<option value="남">남</option>
		<option value="여">여</option>
		</select>
		</div>
	<div>
	비공개 계정 <input name="scope" type="checkbox" value="1">계정이 비공개인 경우 회원님이 승인한 사람만 <br/> MeshTagram에서 회원님의 사진과 동영상을 볼 수 있습니다.<br/>기존 팔로워는 영향을 받지 않습니다.
	</div>
	<div>
	<button type="submit">제출</button>
	</div>
   </div>
	
  </div>
 </div>
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
