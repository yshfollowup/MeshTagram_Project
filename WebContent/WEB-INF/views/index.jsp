<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<form action="/account/join.do">
<p>
<input type="text" id="id" name="id" placeholder="아이디"/>
</p>
<p>
<input type="text" id="name"  name="name" placeholder="이름"/>
</p>
<p>
<input type="text" id="email"  name="email" placeholder="이메일" value="${email }"/><button type="button" id="confirm">인증</button><span id="rst"></span>

</p>
<p>
<input type="text" id="pass1"  name="pass1" placeholder="비밀번호"/>
</p>
<p>
<input type="text" id="pass2"  name="pass2" placeholder="비밀번호 확인"/><span id="check" >영문과 숫자 조합 8자리 이상</span>
</p>
<button type="submit">가입하기</button>
</form>

<script>

$("#pass2").on("change", function(){
	if($("#pass2").val().length ==0){
		$("#check").html("영문과 숫자 조합 8자리 이상")
	}else{
		if($("#pass1").val()!=$("#pass2").val()){
			$("#check").html("비밀번호가 일치하지 않습니다.")
		}else{
			$("#check").html("일치합니다.")
		}
	}
});
$("#confirm").click(function(){
	$.ajax("/account/sendKey.do",{
		"email" : "get",
		"async" : true,
		"data" : {
			"email" : $("#email").val()
			
		}
	}).done(function(obj){
		console.obj(obj);
		$("#rst").html(obj.result);
	});
	
});
</script>
