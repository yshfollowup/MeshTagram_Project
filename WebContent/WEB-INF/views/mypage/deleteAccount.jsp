<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div>
	<h1>계정 삭제</h1>
		<b><span>${aDTO.name }</span></b>님, 안녕하세요!
			<p>계정을 삭제하시면 보관되어있던 모든 정보가 영구적으로 삭제됩니다.</p>
			<p>아래 설문조사를 통해 탈퇴하고자 하는 사유를 선택해주시면 
				MeshTagram의 더 나은 서비스에 보탬이 될 자료로 쓰도록 하겠습니다!</p>
			<hr/>
			<form id="form" name="deleteAccount" class="_boku8" method="post"
				action="/mypage/deleteAccount.do">
				<div class="_vr46h">
					<div class="_e1xik">
						<aside class=" _l9ywh">
							<label for="deletion-reason">계정을 삭제하려는 이유가 무엇인가요?</label>
						</aside>
					<div class="_cd2n1">
				<div class="_sx05v">
					<span class="_4v6lq _8scx2 coreSpriteChevronDownGrey"></span>
						<select id="deletion-reason" name="reason" class="_nxkvc _fx9to">
							<option value="---">선택</option>
							<option value="too-busy">너무 내용이 많고 산만함</option>
							<option value="too-much-error">중간에 프로그램 오류가 너무 많음</option>
							<option value="hard-to-use">시작할 때 문제가 있음</option>
							<option value="unwanted-content">삭제하고 싶은 내용이 있음</option>
							<option value="privacy-concerns">개인 정보 보호 문제</option>
							<option value="need-break">잠시 쉬고 싶어서</option>
							<option value="cant-find-friends">팔로우할 사람을 찾을 수 없음</option>
							<option value="second-account">다른 계정을 만들었습니다</option>
							<option value="other">기타</option>
						</select>
				</div>
			</div>
		</div>
		<div class="_e1xik">
			<aside class=" _l9ywh">
				<label for="password">계속하려면 비밀번호를 다시 입력하세요</label>
			</aside>
		<div class="_cd2n1">
			<div>
				<input type="password" class="_5zrjn _o716c" aria-required="true" 
					id="password" name="password">
				<a class="_g73r6" href="/account/authPass.do">비밀번호를 잊으셨나요?</a>
			</div>
		</div>
		</div>
		</div>
		<div class="_r7o1l">
		</div>
			<div class="_otm4c">
				<span class="_ov9ai">
					<button id="deleteBt" class="_qv64e _gexxb _4tgw8 _jfvwv" disabled="">계정 삭제</button>
				</span>
			</div>
		</form>
		
</div>
<script>
	$("#deleteBt").click(function() {
		window.confirm("삭제된 계정은 복구되지 않습니다. 정말 계정을 삭제하시겠습니까?");
		if (confirm) {
			$.getJson("/mypage/deleteAccount.do", function(data) {
				console.log(data);
				console.log(data.result);
				if (data.result == true) {
					window.alert("계정이 안전하게 삭제되었습니다. 3초 뒤 메인페이지로 이동합니다.");
					moveToIndex();
				}
			});		
		}
	});
	
	$("#password").change(function() {
		$("#deleteBt").prop("disabled", false);
	});
	
	function moveToIndex() {
		window.location.host;	
	}
	
	setTimeout(moveToIndex, 3000);
</script>
