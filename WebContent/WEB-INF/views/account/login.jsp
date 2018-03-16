<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div id="login">
<form action="/account/login.do" autocomplete="off" method="post">
	<p>
		<input type="text" id="id" name="id" placeholder="아이디"  
		style="padding: 5px; font-size: 14pt; width: 250px;" pattern="[A-Za-z0-9]+"/>
	</p>
	<p>
		<input type="password" id="pass" name="pass" placeholder="비밀번호"  
		style="padding: 5px; font-size: 14pt; width: 250px;" pattern="[A-Za-z0-9]+"/>
	</p>
	<p>
		<button type="submit">로그인</button>
	</p>
</form>
</div>
<div id="change">
	계정이 없으신가요?<button id="ch">가입하기</button>
</div>
<script>
	$("#ch").click( function(){
		location.replace("/account/join.do");
	});

</script>