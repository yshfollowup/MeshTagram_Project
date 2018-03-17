<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div>
<form action="/key/join.do" autocomplete="off">
	<p>
		<input type="text" id="id" name="id" placeholder="아이디"
			style="padding: 5px; font-size: 14pt; width: 250px;"
			pattern="[A-Za-z0-9]+" />영문 숫자 최소 5자리
	</p>
	<p>
		<input type="text" id="name" name="name" placeholder="이름"
			style="padding: 5px; font-size: 14pt; width: 250px;" />
	</p>
	<p>
		<input type="text" id="email" name="email" placeholder="이메일"
			value="${email }"
			style="padding: 5px; font-size: 14pt; width: 250px;" />
		<button type="button" id="confirm">인증</button>
		<span id="rst"></span>

	</p>
	<p>
		<input type="password" id="pass1" name="pass1" placeholder="비밀번호"
			pattern="[A-Za-z0-9]+"
			style="padding: 5px; font-size: 14pt; width: 250px;" />
	</p>
	<p>
		<input type="password" id="pass2" name="pass2" placeholder="비밀번호 확인"
			pattern="[A-Za-z0-9]+"
			style="padding: 5px; font-size: 14pt; width: 250px;" /><span
			id="check">영문과 숫자 조합 8자리 이상</span>
	</p>
	<button type="submit" class="btn btn-default" id="submit">가입하기</button>
</form>
	계정이 있으신가요?
	<button type="button" id="ch">로그인</button>
</div>
<script>
	
	$("#ch").click(function(){
		location.replace("/account/loginPage.do");
	});
	$("#pass2").on("change", function() {
		if ($("#pass2").val().length == 0) {
			$("#check").html("영문과 숫자 조합 8자리 이상")
		} else {
			if ($("#pass1").val() != $("#pass2").val()) {
				$("#check").html("비밀번호가 일치하지 않습니다.")
			} else {
				$("#check").html("일치합니다.")
			}
		}
	});
	$("#confirm").click(function() {
		$.ajax("/key/sendKey.do", {
			"email" : "get",
			"async" : true,
			"data" : {
				"email" : $("#email").val()

			}
		}).done(function(obj) {
			console.obj(obj);
			$("#rst").html(obj.result);
		});
	});
	
	// 테스트 위해 일단 주석처리함.
/* 	disabled();
	function disabled() {
		$(".btn").prop("disabled", true);
		if ("${rst }" == "true") {
			$(".btn").prop("disabled", false);
			$(".btn-default").prop("disabled", false);
		}

	} */

</script>
