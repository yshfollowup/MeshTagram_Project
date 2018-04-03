<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<article class="_75z9k">
	<div class="_4xdrl">비밀번호 재설정</div>
		<p class="_avy9e">MeshTagram 계정에 연결된 이메일 주소를 사용해서 비밀번호를 재설정할 수 있도록 도와 드리겠습니다.</p>
			<form id="form" class="_lfrhg" method="post">
				<div class="_e1xik">
					<aside class="_kx10g">
						<label for="cppEmailOrUsername">이메일 또는 사용자 이름</label>
					</aside>
					<p>새 비밀번호를 받을 이메일 주소를 입력하세요</p><br/>
					<div class="_cd2n1">
						<input type="email" class="_faljv _o716c" aria-required="true" 
							id="cppEmail" name="email">
					</div>
				</div>
				<div class="_e1xik">
					<aside class="_kx10g _ldhkl">
						<label></label>
					</aside>
					<div class="_cd2n1">
						<div class="_aj1ar">
							<span class="_ov9ai">
								<button id="authBt" class="_qv64e _gexxb _r9b8f _jfvwv" disabled="">비밀번호 재설정</button>
							</span>
						</div>
					</div>
				</div>
			</form>
		</article>
<script>
	$("#authBt").click(function() {
		var email = $("#cppEmail").val();
		console.log(email);
		$.ajax("/account/changePass.do", {
			"method" : "get",
			"async" : true,
			"data" : {
				"email" : email
			},
			success : function(data) {
				console.log(data);
				window.alert("새 비밀번호를 보내드렸습니다. 바뀐 비밀번호로 접속해주세요!");
				window.location("/");
			},
			error : function(data) {
				console.log(data);
				window.alert("해당 이메일 계정이 없거나 알 수 없는 오류가 발생했습니다. 다시 이용해주세요!");
			}
		});
	});
	
	$("#cppEmail").change(function() {
		$("#authBt").prop("disabled", false);
	});
</script>