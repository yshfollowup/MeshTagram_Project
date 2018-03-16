<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div>
	<div>
		<div>
		<a href="/account/login.do" align="left">홈페이지</a> 
			<div align="right">
			<form action="/account/search.do?tag="method="get">
			<p align="center">
			<input type="text" id="tag" name="tag"/></p>
			</form>
				<a href="/follow/index.do">팔로우</a> |
				<a href="/account/upload.do">글쓰기</a> |
				<a href="/account/myPage.do">마이페이지</a>
			</div>
		</div>
	</div>
</div>