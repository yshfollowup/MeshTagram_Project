<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="/js/custom.js"></script>
<style>
a, b {
	text-decoration: none;
	font-family: 맑은 고딕;
}
</style>
<title>MeshTagram</title>
</head>
<body>
<div class="row">
  <div class="col-sm-4">팔로우 목록
  	<div>
  		<b>팔로우 목록</b>
  	</div>
  	<div>
  		<table class="table">
  			<thead><tr><th>recent</th></tr></thead>
  			<tbody><tr><td>
  				<c:forEach items="${followerList }" var="obj">
  					<a href="/direct/followList.do">${obj.profile }</a>
  					<a href="/direct/followList.do">${obj.id }</a>
  				</c:forEach>
  			</td></tr></tbody>
  		</table>
  	</div>
  </div>
  <div class="col-sm-8">메시지 보내기
	<div>
		<b>Direct Message</b>
	</div>
  	<div align="center" id="time"></div>
	<div align="center">
		<div>
			<c:forEach items="${allMessage }" var="dm">
				<div align="center">
					<span id="showdm"></span>
				</div>
			</c:forEach>
		</div>
		<div>
		<form action="/direct/insertMessage.do"></form>
			<input type="text" id="dmtxt" name="${obj.id }"
				style="font-family: 맑은고딕" placeholder="메시지를 입력하세요">
			<button type="button" class="sendbt">전송</button>
			<a href="/direct/" class="bt"><img src="사진 첨부" /></a>
		</div>
	</div>
  </div>
</div>
</body>
<script>
	function setDigit(num, digit) {
		var zero = "";
		num = num.toString();
		if (num.length < digit) {
			for (var i = 0; i < digit; i++) {
				zero += "0";
			}
		}
		return zero + num;
	}
	
	function display() {
		var now = new Date();
		var currentHour = setDigit(now.getHours(), 2);
		var currentMinute = setDigit(now.getMinutes(), 2);
		var currentSecond = setDigit(now.getSeconds(), 2);
		var apm = "am";
		if (currentHour >= 12) {
			apm = "pm";
			currentHour = setDigit(now.getHours() - 12, 2);
		}
		$("#time").html();
	}
	
	setTimeout(display, 1000);

	$(".sendbt").on("click", function() {
		var sender = "${cookie.setId.value}";
		var receiver = $(this).attr("");
		$.ajax("/direct/insertMessage.do", {
			"method" : "get",
			"async" : false,
			"data" : {
				"sender" : sender,
				"receiver" : receiver,
				"content" : $("#dmtxt").val()
			}
		}).done(function(val) {
			console.log(val);
			$("#showdm").html(val.result);
			findAllMessage();
		})
		$("#content").val("");
	});
	
	function findAllMessage(){
		var id = $(this).attr("");
		var content;
		var like;
		var curtime;
		
		$.ajax("/direct/showMessage.do", {
			"method" : "post",
			"async" : true,
			"data" : {
				"id" : id,
				"content" : content,
				"like" : like,
				"curtime" : curtime
			}
		}).done(function(val) {
			console.log(val);
			
		});
		
	};
</script>
</html>