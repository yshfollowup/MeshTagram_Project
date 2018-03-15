<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div>
	<div>
		<div>
		<a href="/account/login.do?" align="left">홈페이지</a> 
			<div align="right">
			<p align="center">
			<input type="text" id="search" /></p>
				<a href="/follow/index.do?id=${aDTO.id }">팔로우</a> |
				<a href="/account/myPage.do?id${aDTP.id }">마이페이지</a>
			</div>
		</div>
	</div>
</div>