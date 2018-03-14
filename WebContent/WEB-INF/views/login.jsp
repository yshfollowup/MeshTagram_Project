<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<form action="account/login.do" autocomplete="off">
	<p>
		<input type="text" id="id" name="id" placeholder="아이디"  
		style="padding: 5px; font-size: 14pt; width: 250px;" pattern="[A-Za-z0-9]+"/>
	</p>
	<p>
		<input type="text" id="pass" name="pass" placeholder="비밀번호"  
		style="padding: 5px; font-size: 14pt; width: 250px;" pattern="[A-Za-z0-9]+"/>
	</p>
	<p>
		<button type="submit">로그인</button>
	</p>
</form>